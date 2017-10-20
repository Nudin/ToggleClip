"   ToggleClip - Vimplugin to toggle between X11-clipboards
"   Copyright (C) 2017 Michael Schönitzer
"
"   This program is free software: you can redistribute it and/or modify
"   it under the terms of the GNU General Public License as published by
"   the Free Software Foundation, either version 3 of the License, or
"   (at your option) any later version.
"
"   This program is distributed in the hope that it will be useful,
"   but WITHOUT ANY WARRANTY; without even the implied warranty of
"   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
"   GNU General Public License for more details.
"
"   You should have received a copy of the GNU General Public License
"   along with this program.  If not, see <https://www.gnu.org/licenses/>.

function! s:setplus()
		set clipboard=unnamedplus
		vnoremap <leader>y "*y
		vnoremap <leader>p "*p
		vnoremap <leader>d "*d
		nnoremap <leader>y "*y
		nnoremap <leader>p "*p
		nnoremap <leader>d "*d

		nnoremap <leader>Y "*Y
		nnoremap <leader>P "*P
		nnoremap <leader>D "*D
endfunction

function! s:setstar()
		set clipboard=unnamed
		vnoremap <leader>y "+y
		vnoremap <leader>p "+p
		vnoremap <leader>d "+d
		nnoremap <leader>y "+y
		nnoremap <leader>p "+p
		nnoremap <leader>d "+d

		nnoremap <leader>Y "+Y
		nnoremap <leader>P "+P
		nnoremap <leader>D "+D
endfunction

function! ToggleClip#toggle() "{{{
	if &clipboard == "unnamed"
		return s:setplus()
	else
		return s:setstar()
	endif
endfunction "}}}

function! ToggleClip#switch()
	let l:tmp=@+
	let @+=@*
	let @*=l:tmp
endfunction

function! ToggleClip#getstatus()
	if &clipboard == "unnamed"
		return "*"
	elseif &clipboard == "unnamedplus"
		return "+"
	else
		return ""
	endif
endfunction "}}}


if &clipboard == "unnamed"
	call s:setstar()
elseif &clipboard == "unnamedplus"
	call s:setplus()
endif

map <silent> <F12> :call ToggleClip#toggle()<CR>
nnoremap <silent> <leader>ys :call ToggleClip#switch()<CR>
