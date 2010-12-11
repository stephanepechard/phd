set terminal table; set output "phdFinal.pgf-plot.table"; set format "%.5f"
set samples 200; plot [x=0:210] (77.5261*x*x)/(4355.4656+x*x)
