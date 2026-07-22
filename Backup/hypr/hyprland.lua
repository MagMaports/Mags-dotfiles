local home   = os.getenv("HOME")
local hypr   = home .. "/.config/hypr"

-- Configs
require("Modules.autostart")
require("Modules.keybinds")
require("Modules.monitors")
require("Modules.rules")
require("Modules.looks")
require("Modules.misc")
