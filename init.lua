local vim = vim

-- Install vim-plug if it's not already installed
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' ..
		data_dir ..
		'/site/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

require('plugins')
require('settings')
require('other')

