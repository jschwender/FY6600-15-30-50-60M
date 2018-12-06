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
source fy6600-lib
printf "Modell:          %s\\n" "$(ReadModelNumber)"
printf "Set Amplitude:   %s\\n" "$(SetAmplitude "$Main" "1.11111")"
printf "Set Frequenz:    %s\\n" "$(SetF "$Main" "111110400501")"
printf "Set Frequenz 2:  %s\\n" "$(SetF "$Sub"  "300400501")"
printf "set Offset:      %s\\n" "$(SetOffset "$Main" "-9.001")"
printf "Set Duty         %s\\n" "$(SetDuty "$Main" "1.20")"
printf "Set Phase        %s\\n" "$(SetPhase "$Main" "10.20")"
printf "Set Wellenform   %s\\n" "$(SetWaveform "$Main" "$wfStepTriangleWave")"
printf "ReadSyncF:       %s Hz\\n" "$(ReadSyncF)"
printf "Read Amplitude:  %s V\\n"  "$(ReadAmplitude "$Main")"
printf "Read Offset:     %s V\\n"  "$(ReadOffset "$Main")"
printf "Read Duty:       %s pc\\n" "$(ReadDuty "$Main")"
printf "Read Phase:      %s °\\n"  "$(ReadPhase "$Main")"
printf "UID              %s\\n" "$(ReadUID)"
printf "Wellenform       %s\\n" "${WF[$(ReadWaveForm "$Main")]}"

