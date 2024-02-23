I have this set up to handle the following items:

- Keymaps
- Plugins
- Autocommands
- Colorscheme
- Global Editor Options
- Filetype specific settings

# Global Convention

- Keymaps should be placed within `core/keymaps.lua` only.
- Plugins should be placed within `plugins/` only, in their own `*.lua` file.
  - Its settings should be placed within its file, in lazy.nvim format.
  - The file should consist of a returned dictionary.
  - Try to disable all keymaps defined by the plugin (experimental).
- Autocommands should be placed within `core/autocommands.lua` only.
- Colorschemes should be appended in `plugins/colorschemes.lua` only.
- Global Editor Options should be placed within `core/options.lua` only.
- Filetype specific settings should placed within `core/filetypes.lua` only.
- To extend the structure for a major configuration:
  - Create a new file within `core/` and require it within `init.lua`.
  - Add a helper function in `helpers/` and require it in its corresponding file in `core/`.
  - The helper should be a function that will execute the configuration.
  - The core file should require the helper and call its functions.
  - The goal of this is to keep configuration files in `core/` and helper functions in `helpers/`. Helper files should be modified as little as possible.
