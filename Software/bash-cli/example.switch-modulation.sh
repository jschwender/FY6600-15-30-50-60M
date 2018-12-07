#!/bin/bash
# example code for communication with FY 6600 signal generator via USB (serial adapter built in)
#    fy6600-lib is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    fy6600-lib is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with fy6600-lib.  If not, see <http://www.gnu.org/licenses/>.
#
#    Author: Joachim Schwender <joachim@schwender-beyer.de>
#
##Bus 001 Device 007: ID 1a86:7523 QinHeng Electronics HL-340 USB-Serial adapter
# code requires bash shell, stty, bc
#
#  example that shows how to use the library.
#  This example loops the modulation modes once.
source fy6600-lib
#
for i in 0 1 2 3 4 5 6
do
    printf "Set Modulation Typ: $i  %s" "$(SetModTyp $i)"
    printf "Read Mod Typ:   %s\\n" "$(ReadModTyp)"
    sleep 1
done
