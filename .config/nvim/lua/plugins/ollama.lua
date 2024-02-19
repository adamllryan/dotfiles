return {
  "David-Kunz/gen.nvim",
  opts = {
    model = "dolphin-mixtral",
    display_mode = "float",
    show_prompt = true,
    show_model = true,
    no_auto_close = false,
    init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
    command = "curl --silent --no-buffer -X POST http://devserver:11434/api/generate -d $body",
    }
}
