require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- buffer Leader bd close buffer
map("n", "<Leader>bd", "<cmd>lua vim.cmd('bnext<bar>bd#')<CR>", { desc = "Close buffer" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
  "n",
  "<Leader>dd",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })

-- project
map("n", "<Leader>pp", "<cmd>lua vim.cmd('ProjectMgr')<CR>", { desc = "Project manager" })

-- symbols
map("n", "<Leader>fs", "<cmd>lua vim.cmd('Telescope lsp_document_symbols')<CR>", { desc = "Symbol" })
map("n", "<Leader>cs", "<cmd>lua vim.cmd('Lspsaga outline')<CR>", { desc = "Symbol" })
