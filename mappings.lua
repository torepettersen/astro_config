return {
  n = {
    -- Buffers
    ["<TAB>"] = { ":bnext<CR>", desc = "Next buffer" },
    ["<S-TAB>"] = { ":bprevious<CR>", desc = "Previous buffer" },

    -- Find files
    ["<leader>f<CR>"] = false,
    ["<leader>f'"] = false,
    ["<leader>f/"] = false,
    ["<leader>fa"] = false,
    ["<leader>fb"] = false,
    ["<leader>fc"] = false,
    ["<leader>fC"] = false,
    ["<leader>ff"] = false,
    ["<leader>fF"] = false,
    ["<leader>fh"] = false,
    ["<leader>fk"] = false,
    ["<leader>fm"] = false,
    ["<leader>fn"] = false,
    ["<leader>fo"] = false,
    ["<leader>fr"] = false,
    ["<leader>ft"] = false,
    ["<leader>fw"] = false,
    ["<leader>fW"] = false,

    ["<leader>f"] = { "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    ["<leader>g"] = { "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },

    -- Neotree
    ["<leader>e"] = { "<cmd>Neotree float %:p:h:h %:p<cr>", desc = "Open Explorer" },
    ["<leader>be"] = { "<cmd>Neotree float buffers<cr>", desc = "Buffer Explorer" },

    -- Buffers
    ["<leader>bb"] = false,
    ["<leader>bd"] = false,
    ["<leader>bl"] = false,
    ["<leader>bp"] = false,
    ["<leader>br"] = false,
    ["<leader>bse"] = false,
    ["<leader>bsi"] = false,
    ["<leader>bsm"] = false,
    ["<leader>bsp"] = false,
    ["<leader>bsr"] = false,
    ["<leader>b\\"] = false,
    ["<leader>b|"] = false,

    -- Terminal
    ["<C-t>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },

    -- Neotest
    -- ["<leader>tf"] = false,
    -- ["<leader>th"] = false,
    ["<leader>tl"] = false,
    ["<leader>tn"] = false,
    ["<leader>tp"] = false,
    -- ["<leader>tt"] = false,
    ["<leader>tu"] = false,
    ["<leader>tv"] = false,

    ["<leader>t"] = { desc = "Test" },
    ["<leader>tt"] = {
      function()
        local row = unpack(vim.api.nvim_win_get_cursor(0))
        require("toggleterm").exec("mix test " .. vim.fn.expand "%" .. ":" .. row)
      end,
      desc = "Run in terminal",
    },
    ["<leader>tr"] = { function() require("neotest").run.run() end, desc = "Run Nearest" },
    ["<leader>tf"] = { function() require("neotest").run.run(vim.fn.expand "%") end, desc = "Run File" },
    ["<leader>ts"] = { function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
    ["<leader>to"] = { function() require("neotest").output.open { enter = true } end, desc = "Show Output" },
    ["<leader>th"] = { function() require("neotest").run.stop() end, desc = "Stop" },

    -- Projectionist
    ["<leader>a"] = { "<cmd>A<cr>", desc = "Jump to test" },
  },
  t = {
    ["<C-t>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
}
