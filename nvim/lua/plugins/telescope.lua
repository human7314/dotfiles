return {
    	'nvim-telescope/telescope.nvim', tag = '0.1.8',
      	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		-- Telescope
		local builtin = require('telescope.builtin')
		-- keymap
		vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	end
}
