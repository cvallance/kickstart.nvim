return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end, { desc = 'harpoon: [A]ppend' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'harpoon: quick menu' })

    vim.keymap.set('n', '<C-t>', function()
      harpoon:list():select(1)
    end, { desc = 'harpoon: select 1' })

    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():select(2)
    end, { desc = 'harpoon: select 2' })

    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(3)
    end, { desc = 'harpoon: select 3' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end, { desc = 'harpoon: previous buffer' })
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end, { desc = 'harpoon: next buffer' })
  end,
}
