ToggleClip
==========

**Toggle between X11-clipboards**

Version: 0.1

Introduction
------------
ToggleClip allows to toggle between the different X11-Clipboards, to use when
yanking something in vim.

Press <F12> to toggle between `PRIMARY`-selection (\*-resister) and
`CLIPBOARD`-selection (+-registers). The opposite selection can be used by
prefixing with `<leader>`.

Furthermore `<leader>ys` can be used to swap the contents of both selections.

If you want to display the status in for example lightline use the
function `ToggleClip#getstatus()`.


License
-------
Copyright (C) 2017 Michael Schönitzer

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
