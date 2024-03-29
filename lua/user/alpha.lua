local M = {
  "goolord/alpha-nvim",
  event = "VimEnter",
  commit = "dafa11a6218c2296df044e00f88d9187222ba6b0",
}

function M.config()
  local alpha = require "alpha"
  local dashboard = require "alpha.themes.dashboard"
  dashboard.section.header.val = {
    [[                               __                ]],
    [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
    [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
    [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
    [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
    [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
  }
  dashboard.section.buttons.val = {
    dashboard.button("f", " " .. " Find file", ":Files <CR>"),
    dashboard.button("r", "󰄉 " .. " Recent files", ":History <CR>"),
    dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("p", " " .. " List Git Files", ":GFiles <CR>"),
    dashboard.button("t", " " .. " Find text", ":Rg <CR>"),
    dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
    dashboard.button("o", "OB" .. " Daily Note", ":ObsidianToday <CR>"),
    dashboard.button("q", " " .. " Quit", ":qa<CR>"),
  }
  local function footer()
    return "Wee WoO"
  end

  dashboard.section.footer.val = footer()

  dashboard.section.footer.opts.hl = "Type"
  dashboard.section.header.opts.hl = "Include"
  dashboard.section.buttons.opts.hl = "Keyword"

  dashboard.opts.opts.noautocmd = true
  alpha.setup(dashboard.opts)
end

return M
