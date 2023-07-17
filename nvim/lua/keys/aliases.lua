local map = vim.api.nvim_set_keymap 

-- Normal mode
function nm(key, command) 
	map('n', key, command, {noremap = true})
end

-- Insert mode
function im(key, command)
	map('i', key, command, {noremap = true})
end

-- Visual mode
function vm(key, command)
	map('v', key, command, {noremap = true})
end

-- Terminal mode
function tm(key, command)
	map('t', key, command, {noremap = true})
end

