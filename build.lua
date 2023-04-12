-- ----------------------------------
-- Tailwind CSS plugin for Dioxus CLI
-- ----------------------------------
--
-- This module deals with building the CSS file using Tailwind.
--
-- This function will be ran after every build and server reload.
-- Runs Tailwind CSS using the project config files,
-- and generates a CSS file.


local build = {}
local plugin = require("plugin")

function build.build_css(executable, src_folder)
    --- Runs Tailwind and builds the CSS file in the ./public folder.
    plugin.log.info("Building CSS...")
    plugin.command.exec({ executable, "build", "-c", src_folder .. "/tailwind.config.js", "-i", src_folder .. "/input.css", "-o", "public/style.css" }, "inhert", "inhert")
end

return build