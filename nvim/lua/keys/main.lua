require('keys/aliases')

-- Save with C-s
nm('<C-s>', ':w<NL>')

-- Buffers
nm('<S-h>', ':bprevious<NL>')
nm('[b', ':bprevious<NL>')
nm('<S-l>', ':bnext<NL>')
nm(']b', ':bnext<NL>')
nm('<C-t>', ':BW<NL>')

-- Windows (not MS)
nm('<A-h>', '<C-W>h<NL>')
nm('<A-j>', '<C-W>j<NL>')
nm('<A-k>', '<C-W>k<NL>')
nm('<A-l>', '<C-W>l<NL>')

-- Quit all
nm('<leader>qq', ':qall<NL>')

-- Normal mode (terminal)
tm('<Escape><Escape>', '<C-\\><C-N>')

-- Fix escape
nm('<Escape>', '<Escape>')

-- Tab +/-
nm('<Tab>', '>>')
vm('<Tab>', '>')
nm('<S-Tab>', '<<')
vm('<S-Tab>', '<')

require('keys/plugins')

