local theme_assets                              = require("beautiful.theme_assets")
local xresources                                = require("beautiful.xresources")
local dpi                                       = xresources.apply_dpi

local gfs                                       = require("gears.filesystem")
local themes_path                               = gfs.get_themes_dir()

-- Colors from https://github.com/morhetz/gruvbox#palette
local colors                                    = {
	dark = {
		black = '#282828',
		red = '#cc241d',
		green = '#98971a',
		yellow = '#d79921',
		blue = '#458588',
		purple = '#b16286',
		aqua = '#689d6a',
		white = '#a89984',
                orange='#d65d0e'
	},
	light = {
		black = '#928374',
		red = '#fb4934',
		green = '#b8bb26',
		yellow = '#fabd2f',
		blue = '#83a598',
		purple = '#d3869b',
		aqua = '#8ec07c',
		white = '#ebdbb2',
                orange='#fe8019'
	}
}

local theme= {}

theme.font = "FiraCode Nerd Font Mono 12"

theme.bg_normal = colors.dark.black
theme.bg_focus = colors.dark.black
theme.bg_urgent = colors.dark.red
theme.bg_minimize = "#444444"
theme.bg_systray = theme.bg_normal

theme.fg_normal = colors.light.white
theme.fg_focus = colors.light.white
theme.fg_urgent = colors.light.white
theme.fg_minimize = colors.light.white

theme.useless_gap = dpi(4)
theme.border_width = dpi(1)
theme.border_normal = colors.dark.black
theme.border_focus = colors.dark.green
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:

-- Title Bar
theme.titlebar_bg_normal = colors.dark.black
theme.titlebar_fg_normal = colors.light.white
theme.titlebar_bg_focus = colors.dark.black
theme.titlebar_fg_focus = colors.light.white

-- Tag List
theme.taglist_bg_empty = colors.dark.black
theme.taglist_fg_empty = colors.light.white
theme.taglist_bg_focus = colors.light.white
theme.taglist_fg_focus = colors.dark.black
theme.taglist_bg_occupied = colors.dark.green
theme.taglist_fg_occupied = colors.dark.black
theme.taglist_bg_urgent = colors.dark.black
theme.taglist_fg_urgent = colors.dark.red
theme.taglist_bg_volatile = colors.dark.red
theme.taglist_fg_volatile = colors.dark.black

-- Notifications
-- notification_font
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]
theme.notification_bg = colors.dark.black
theme.notification_fg = colors.light.white
theme.notification_border_color = colors.light.red

-- Task List
-- tasklist_[bg|fg]_[focus|urgent]

-- Tooltips
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]

-- Mouse Finder
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]

-- Prompt
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]

-- Hot Keys
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon                         = themes_path .. "default/submenu.png"
theme.menu_height                               = dpi(15)
theme.menu_width                                = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal              = themes_path .. "gruvbox/titlebar/close_normal.svg"
theme.titlebar_close_button_focus               = themes_path .. "gruvbox/titlebar/close_focus.svg"

theme.titlebar_minimize_button_normal           = themes_path .. "gruvbox/titlebar/minimize_normal.svg"
theme.titlebar_minimize_button_focus            = themes_path .. "gruvbox/titlebar/minimize_focus.svg"

theme.titlebar_ontop_button_normal_inactive     = themes_path .. "gruvbox/titlebar/ontop_normal_inactive.svg"
theme.titlebar_ontop_button_focus_inactive      = themes_path .. "gruvbox/titlebar/ontop_focus_inactive.svg"
theme.titlebar_ontop_button_normal_active       = themes_path .. "gruvbox/titlebar/ontop_normal_active.svg"
theme.titlebar_ontop_button_focus_active        = themes_path .. "gruvbox/titlebar/ontop_focus_active.svg"

theme.titlebar_sticky_button_normal_inactive    = themes_path .. "gruvbox/titlebar/sticky_normal_inactive.svg"
theme.titlebar_sticky_button_focus_inactive     = themes_path .. "gruvbox/titlebar/sticky_focus_inactive.svg"
theme.titlebar_sticky_button_normal_active      = themes_path .. "gruvbox/titlebar/sticky_normal_active.svg"
theme.titlebar_sticky_button_focus_active       = themes_path .. "gruvbox/titlebar/sticky_focus_active.svg"

theme.titlebar_floating_button_normal_inactive  = themes_path .. "gruvbox/titlebar/floating_normal_inactive.svg"
theme.titlebar_floating_button_focus_inactive   = themes_path .. "gruvbox/titlebar/floating_focus_inactive.svg"
theme.titlebar_floating_button_normal_active    = themes_path .. "gruvbox/titlebar/floating_normal_active.svg"
theme.titlebar_floating_button_focus_active     = themes_path .. "gruvbox/titlebar/floating_focus_active.svg"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "gruvbox/titlebar/maximized_normal_inactive.svg"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "gruvbox/titlebar/maximized_focus_inactive.svg"
theme.titlebar_maximized_button_normal_active   = themes_path .. "gruvbox/titlebar/maximized_normal_active.svg"
theme.titlebar_maximized_button_focus_active    = themes_path .. "gruvbox/titlebar/maximized_focus_active.svg"

theme.wallpaper                                 = themes_path .. "gruvbox/background.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh                              = themes_path .. "default/layouts/fairhw.png"
theme.layout_fairv                              = themes_path .. "default/layouts/fairvw.png"
theme.layout_floating                           = themes_path .. "default/layouts/floatingw.png"
theme.layout_magnifier                          = themes_path .. "default/layouts/magnifierw.png"
theme.layout_max                                = themes_path .. "default/layouts/maxw.png"
theme.layout_fullscreen                         = themes_path .. "default/layouts/fullscreenw.png"
theme.layout_tilebottom                         = themes_path .. "default/layouts/tilebottomw.png"
theme.layout_tileleft                           = themes_path .. "default/layouts/tileleftw.png"
theme.layout_tile                               = themes_path .. "gruvbox/layouts/tilew.svg"
theme.layout_tiletop                            = themes_path .. "default/layouts/tiletopw.png"
theme.layout_spiral                             = themes_path .. "default/layouts/spiralw.png"
theme.layout_dwindle                            = themes_path .. "default/layouts/dwindlew.png"
theme.layout_cornernw                           = themes_path .. "default/layouts/cornernww.png"
theme.layout_cornerne                           = themes_path .. "default/layouts/cornernew.png"
theme.layout_cornersw                           = themes_path .. "default/layouts/cornersww.png"
theme.layout_cornerse                           = themes_path .. "default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon                              = theme_assets.awesome_icon(
	theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme                                = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
