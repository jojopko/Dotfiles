local opt = vim.opt
local g = vim.g

-- Set <leader> key
g.mapleader = ' '

-- Panels
opt.splitright = true
opt.splitbelow = true

opt.clipboard = 'unnamedplus'
opt.fixeol = false
opt.completeopt='menu,menuone,noselect'

-- Do not comment new line while enter to new line
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

-- Confirm close file
vim.cmd [[set confirm]]

require('base/search')
require('base/format')
require('base/terminal')

