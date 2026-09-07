local M = {
  _handle = nil,
  _stdout = nil,
}

function M.setup(callback)
  if vim.fn.has("macunix") == 0 then return end

  if vim.fn.executable("dark-notify") == 0 then
    vim.notify(
      "[ThemeSwitch] 'dark-notify' binary not found!\n" ..
      "Install it via Homebrew to enable dynamic theme switching.",
      vim.log.levels.WARN,
      { title = "Theme Switch" }
    )
    return
  end

  M.stop() -- Cleanup existing process if setup is called again

  M._stdout = vim.uv.new_pipe(false)
  M._handle = vim.uv.spawn("dark-notify", {
    args = {},
    stdio = { nil, M._stdout, nil }
  }, function()
    M.stop()
  end)

  if M._stdout then
    vim.uv.read_start(M._stdout, function(err, data)
      assert(not, err, err)
      if data then
        local mode = vim.trim(data)
        if mode == "dark" or mode == "light" then
          vim.schedule(function()
            callback(mode)
          end)
        end
      end
    end)
  end
end

function M.stop()
  if M._stdout and not M._stdout:is_closing() then
    M._stdout:read_stop()
    M._stdout:close()
  end
  if M._handle and not M._handle:is_closing() then
    M._handle:close()
  end
  M._handle = nil
  M._stdout = nil
end

return M
