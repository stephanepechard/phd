set terminal table; set output "phdFinal.2bis.table"; set format "%.5f"
set samples 25; plot [x=0:1] 1 - 1/(1 + exp(-20*x + 10))
