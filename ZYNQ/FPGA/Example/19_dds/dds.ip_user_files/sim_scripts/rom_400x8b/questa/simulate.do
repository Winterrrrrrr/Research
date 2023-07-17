onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rom_400x8b_opt

do {wave.do}

view wave
view structure
view signals

do {rom_400x8b.udo}

run -all

quit -force
