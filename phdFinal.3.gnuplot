set terminal table; set output "phdFinal.3.table"; set format "%.5f"
set samples 25; plot [x=0:1] exp(-((x-0.01)*(x-0.01))/0.1)
