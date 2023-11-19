vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")


-- Remove newbie crutches in Normal, Insert and Visual Mode
vim.keymap.set({ "n", "v", "i" }, "<Down>", "<nop>")
vim.keymap.set({ "n", "v", "i" }, "<Up>", "<nop>")
vim.keymap.set({ "n", "v" }, "<Left>", "<nop>")
vim.keymap.set({ "n", "v" }, "<Right>", "<nop>")

vim.keymap.set({ "n" }, "<Down>", "<C-w>j")
vim.keymap.set({ "n" }, "<Up>", "<C-w>k")
vim.keymap.set({ "n" }, "<Left>", "<C-w>h")
vim.keymap.set({ "n" }, "<Right>", "<C-w>l")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<C-p>", vim.lsp.buf.format)
vim.keymap.set("n", "<C-p>p", "<cmd>Neoformat<CR>")
vim.keymap.set("n", "gp", "mmgg<cmd>silent %!prettier --stdin-filepath %<CR>``zz")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "Q", ":!gacp ''<Left>")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>ss", ":mks! ~/.vim/sessions/", { desc = 'Session Save to...' })
vim.keymap.set("n", "<leader>sl", ":so ~/.vim/sessions/", { desc = 'Session Load from...' })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<F4>", ':wa<Bar>exe "mksession! " .. v:this_session<CR>:so ~/.vim/sessions/')
vim.keymap.set("n", "gl", ':wa<Bar>exe "mksession! " .. v:this_session<CR>:so ~/.vim/sessions/', { desc = 'Go save this session and LOAD from...' })
vim.keymap.set("n", "g1", ':wa<Bar>exe "mksession! " .. v:this_session<CR>:so ~/.vim/sessions/nvim<CR>', { desc = 'Go to Nvim Config' })
vim.keymap.set("n", "g2", ':wa<Bar>exe "mksession! " .. v:this_session<CR>:so ~/.vim/sessions/sway<CR>', { desc = 'Go to Nvim Config' })
vim.keymap.set("n", "gs", ':wa<Bar>exe "mksession! " .. v:this_session<CR>', { desc = 'Go Save This Session' })
vim.keymap.set("n", "9", ':wa<Bar>exe "mksession! " .. v:this_session<CR>', { desc = 'Go Save This Session' })
vim.keymap.set("n", "1", ':wa<Bar>exe "mksession! " .. v:this_session<CR>:so ~/.vim/sessions/', { desc = 'Go save this session and LOAD from...' })


-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<.>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
--



vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<leader>mg", "<cmd>CellularAutomaton game_of_life<CR>");

vim.keymap.set("n", "<leader>b", function()
    vim.cmd("so")
end)

