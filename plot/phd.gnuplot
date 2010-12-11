################################################
# Auteur : Stéphane Péchard - stephane.pechard@univ-nantes.fr
# Fichier : phd.gnuplot - toutes les courbes de ma thèse
# Date : 2007/07/24
################################################

################################################
# Options communes
################################################
set encoding iso_8859_15
set fontpath "/home/stephane/texmf/fonts/type1/local/adobe/AGaramondPro/"
set terminal postscript enhanced monochrome "AGaramondPro-Regular.pfb" 22

set pointsize 2.0
set border 3
set xtics nomirror
set ytics nomirror
set xzeroaxis
set yzeroaxis
set key right bottom



################################################
# courbes débit-MOS en TVHD pour les 24 contenus
################################################
set xlabel "débit en Mbps"
set ylabel "MOS"

set output "debit-mosHD.ps"
plot "data/01-svt.txt" using 1:2:3 title 'New Mobile \& Calendar' with yerrorlines lw 4, \
	"data/06-svt2006-3.txt" using 10:11:12 title 'Tree Pan' with yerrorlines lw 4, \
	"data/01-svt.txt" using 7:8:9 title 'Knightshields' with yerrorlines lw 4, \
	"data/01-svt.txt" using 10:11:12 title 'Stockholm Pan' with yerrorlines lw 4

plot "data/02-euro1080-1.txt" using 1:2:3 title 'Voile' with yerrorlines lw 4, \
	"data/02-euro1080-1.txt" using 4:5:6 title 'Movie' with yerrorlines lw 4, \
	"data/02-euro1080-1.txt" using 7:8:9 title 'Foot' with yerrorlines lw 4, \
	"data/02-euro1080-1.txt" using 10:11:12 title 'Concert' with yerrorlines lw 4

plot "data/03-euro1080-2.txt" using 1:2:3 title 'Show' with yerrorlines lw 4, \
	"data/03-euro1080-2.txt" using 4:5:6 title 'Crédits' with yerrorlines lw 4, \
	"data/03-euro1080-2.txt" using 7:8:9 title 'Golf' with yerrorlines lw 4, \
	"data/03-euro1080-2.txt" using 10:11:12 title 'Standing' with yerrorlines lw 4

plot "data/04-svt2006-1.txt" using 1:2:3 title 'Fountain Man' with yerrorlines lw 4, \
	"data/04-svt2006-1.txt" using 4:5:6 title 'Group Disorder' with yerrorlines lw 4, \
	"data/04-svt2006-1.txt" using 7:8:9 title 'Rendezvous' with yerrorlines lw 4, \
	"data/04-svt2006-1.txt" using 10:11:12 title 'Ulriksdals' with yerrorlines lw 4

plot "data/05-svt2006-2.txt" using 1:2:3 title 'Above Marathon' with yerrorlines lw 4, \
	"data/05-svt2006-2.txt" using 4:5:6 title 'Captain' with yerrorlines lw 4, \
	"data/05-svt2006-2.txt" using 7:8:9 title 'Dance in the Woods' with yerrorlines lw 4, \
	"data/05-svt2006-2.txt" using 10:11:12 title 'Duck Fly' with yerrorlines lw 4

plot "data/06-svt2006-3.txt" using 1:2:3 title 'Inside Marathon' with yerrorlines lw 4, \
	"data/06-svt2006-3.txt" using 4:5:6 title 'New Parkrun' with yerrorlines lw 4, \
	"data/06-svt2006-3.txt" using 7:8:9 title 'Stockholm Travel' with yerrorlines lw 4, \
	"data/01-svt.txt" using 4:5:6 title 'Parkrun' with yerrorlines lw 4


################################################
# courbes débit-DMOS100 sur euro1080-2
################################################
set xlabel "débit en Mbps"
set ylabel "DMOS_{100}"

set output "chap7/svtEuro1080-2-DMOS100.ps"
plot "chap7/svt-DMOS100.txt" using 1:2:3 title 'New Mobile \& Calendar' with yerrorlines lw 4, \
	"chap7/svt-DMOS100.txt" using 4:5:6 title 'Parkrun' with yerrorlines lw 4, \
	"chap7/svt-DMOS100.txt" using 7:8:9 title 'Knightshields' with yerrorlines lw 4, \
	"chap7/svt-DMOS100.txt" using 10:11:12 title 'Stockholm Pan' with yerrorlines lw 4
plot "chap7/euro1080-2-DMOS100.txt" using 1:2:3 title 'Show' with yerrorlines lw 4, \
	"chap7/euro1080-2-DMOS100.txt" using 4:5:6 title 'Crédits' with yerrorlines lw 4, \
	"chap7/euro1080-2-DMOS100.txt" using 7:8:9 title 'Golf' with yerrorlines lw 4, \
	"chap7/euro1080-2-DMOS100.txt" using 10:11:12 title 'Standing' with yerrorlines lw 4


################################################
# nuage de points MOS LCD-MOS CRT (SVT et Euro1080 seulement)
################################################
set xlabel "MOS sur CRT"
set ylabel "MOS sur LCD"
set nokey

set output "lcd-crt.ps"
plot [20:90] "data/07-lcd-crt.txt" using 3:1 with points, x



################################################
# courbes débit-MOS de chaque contenu pour CRT<->LCD
################################################
set xlabel ""
set ylabel ""
set key bottom right
set terminal postscript enhanced monochrome "AGaramondPro-Regular.pfb" 44

set output "lcd-crtDebitMOS.ps"
plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::0::6 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::0::6 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::8::14 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::8::14 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::16::22 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::16::22 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::24::28 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::24::28 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::32::38 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::32::38 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::40::46 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::40::46 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::48::54 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::48::54 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::56::62 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::56::62 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::64::70 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::64::70 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::72::78 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::72::78 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::80::86 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::80::86 title 'CRT' with yerrorlines lw 4

plot "data/09-lcd-crtDebitMOS.txt" using 1:2:3 every ::88::94 title 'LCD' with yerrorlines lw 4, \
	"data/09-lcd-crtDebitMOS.txt" using 1:4:5 every ::88::94 title 'CRT' with yerrorlines lw 4




################################################
# courbes débit-MOS en TVSD pour les 4 contenus SVT
################################################
set xlabel "débit en Mbps"
set ylabel "MOS"
set terminal postscript enhanced monochrome "AGaramondPro-Regular.pfb" 16.5
set key bottom right

set output "debit-mosSD.ps"
#set title 'LCD'
plot "data/11-svtSD-LCD.txt" using 1:2:3 title 'New Mobile \& Calendar' with yerrorlines lw 4, \
	"data/11-svtSD-LCD.txt" using 4:5:6 title 'Parkrun' with yerrorlines lw 4, \
	"data/11-svtSD-LCD.txt" using 7:8:9 title 'Knightshields' with yerrorlines lw 4, \
	"data/11-svtSD-LCD.txt" using 10:11:12 title 'Stockholm Pan' with yerrorlines lw 4

#set title 'CRT'
plot "data/12-svtSD-CRT.txt" using 1:2:3 title 'New Mobile \& Calendar' with yerrorlines lw 4, \
	"data/12-svtSD-CRT.txt" using 4:5:6 title 'Parkrun' with yerrorlines lw 4, \
	"data/12-svtSD-CRT.txt" using 7:8:9 title 'Knightshields' with yerrorlines lw 4, \
	"data/12-svtSD-CRT.txt" using 10:11:12 title 'Stockholm Pan' with yerrorlines lw 4


################################################
# courbes débit-MOS en TVSD upscalée pour les 4 contenus SVT
################################################
set output "debit-mosSDup.ps"
set terminal postscript enhanced monochrome "AGaramondPro-Regular.pfb" 22
#set title 'LCD'
plot "data/13-svtSDup-LCD.txt" using 1:2:3 title 'New Mobile \& Calendar' with yerrorlines lw 4, \
	"data/13-svtSDup-LCD.txt" using 4:5:6 title 'Parkrun' with yerrorlines lw 4, \
	"data/13-svtSDup-LCD.txt" using 7:8:9 title 'Knightshields' with yerrorlines lw 4, \
	"data/13-svtSDup-LCD.txt" using 10:11:12 title 'Stockholm Pan' with yerrorlines lw 4

#set title 'CRT'
plot "data/14-svtSDup-CRT.txt" using 1:2:3 title 'New Mobile \& Calendar' with yerrorlines lw 4, \
	"data/14-svtSDup-CRT.txt" using 4:5:6 title 'Parkrun' with yerrorlines lw 4, \
	"data/14-svtSDup-CRT.txt" using 7:8:9 title 'Knightshields' with yerrorlines lw 4, \
	"data/14-svtSDup-CRT.txt" using 10:11:12 title 'Stockholm Pan' with yerrorlines lw 4



################################################
# courbes débit-MOS en TVSD upscalée pour les 4 contenus SVT en LCD
################################################
set output "debit-mosComp.ps"
set title 'New Mobile \& Calendar'
plot "data/01-svt.txt" using 1:2:3 title 'HD' with yerrorlines lw 4, \
	"data/11-svtSD-LCD.txt" using 1:2:3 title 'SD' with yerrorlines lw 4, \
	"data/13-svtSDup-LCD.txt" using 1:2:3 title 'SDup' with yerrorlines lw 4

set title 'Parkrun'
plot "data/01-svt.txt" using 4:5:6 title 'HD' with yerrorlines lw 4, \
	"data/11-svtSD-LCD.txt" using 4:5:6 title 'SD' with yerrorlines lw 4, \
	"data/13-svtSDup-LCD.txt" using 4:5:6 title 'SDup' with yerrorlines lw 4

set title 'Knightshields'
plot "data/01-svt.txt" using 7:8:9 title 'HD' with yerrorlines lw 4, \
	"data/11-svtSD-LCD.txt" using 7:8:9 title 'SD' with yerrorlines lw 4, \
	"data/13-svtSDup-LCD.txt" using 7:8:9 title 'SDup' with yerrorlines lw 4

set title 'Stockholm Pan'
plot "data/01-svt.txt" using 10:11:12 title 'HD' with yerrorlines lw 4, \
	"data/11-svtSD-LCD.txt" using 10:11:12 title 'SD' with yerrorlines lw 4, \
	"data/13-svtSDup-LCD.txt" using 10:11:12 title 'SDup' with yerrorlines lw 4



################################################
# courbes préférence-DeltaMOS en TVSD pour les 4 contenus SVT en LCD
################################################
set xlabel "{/Symbol D}MOS"
set ylabel "préférence"
unset arrow

set output "HDvsSD-LCD.ps"
set title 'New Mobile \& Calendar'
set arrow from 0,0 to -12.5,0 lw 2
set arrow from 0,0 to -18,0 lw 2
plot "data/15-HDvsSD-LCD.txt" using 7:2:3 title 'Q_m' with yerrorlines lw 4, \
	"data/15-HDvsSD-LCD.txt" using 12:8:9 title 'Q_b' with yerrorlines lw 4
unset arrow

set title 'Parkrun'
set arrow from 0,0 to -8,0 lw 2
set arrow from 0,0 to -18,0 lw 2
plot "data/15-HDvsSD-LCD.txt" using 19:14:15 title 'Q_m' with yerrorlines lw 4, \
	"data/15-HDvsSD-LCD.txt" using 24:20:21 title 'Q_b' with yerrorlines lw 4
unset arrow

set title 'Knightshields'
set arrow from 0,0 to -1.8,0 lw 2
#set arrow from 0,0 to -18,0 lw 2
plot "data/15-HDvsSD-LCD.txt" using 31:26:27 title 'Q_m' with yerrorlines lw 4, \
	"data/15-HDvsSD-LCD.txt" using 36:32:33 title 'Q_b' with yerrorlines lw 4
unset arrow

set title 'Stockholm Pan'
set arrow from 0,0 to -12,0 lw 2
set arrow from 0,0 to -17.6,0 lw 2
plot "data/15-HDvsSD-LCD.txt" using 43:38:39 title 'Q_m' with yerrorlines lw 4, \
	"data/15-HDvsSD-LCD.txt" using 48:44:45 title 'Q_b' with yerrorlines lw 4



################################################
# courbes préférence-DeltaMOS en TVSD pour les 4 contenus SVT en CRT
################################################
set xlabel "{/Symbol D}MOS"
set ylabel "préférence"
unset arrow

set output "HDvsSD-CRT.ps"
set title 'New Mobile \& Calendar'
set arrow from 0,0 to -12.5,0 lw 2
set arrow from 0,0 to -15,0 lw 2
plot "data/15-HDvsSD-CRT.txt" using 7:2:3 title 'Q_m' with yerrorlines lw 4, \
	"data/15-HDvsSD-CRT.txt" using 12:8:9 title 'Q_b' with yerrorlines lw 4
unset arrow

set title 'Parkrun'
set arrow from 0,0 to -1.5,0 lw 3
set arrow from 0,0 to -14,0 lw 2
plot "data/15-HDvsSD-CRT.txt" using 19:14:15 title 'Q_m' with yerrorlines lw 4, \
	"data/15-HDvsSD-CRT.txt" using 24:20:21 title 'Q_b' with yerrorlines lw 4
unset arrow

set title 'Knightshields'
set arrow from 0,0 to 7,0 lw 2
set arrow from 0,0 to -13,0 lw 2
plot "data/15-HDvsSD-CRT.txt" using 31:26:27 title 'Q_m' with yerrorlines lw 4, \
	"data/15-HDvsSD-CRT.txt" using 36:32:33 title 'Q_b' with yerrorlines lw 4
unset arrow

set title 'Stockholm Pan'
set arrow from 0,0 to -13.8,0 lw 2
set arrow from 0,0 to -21.5,0 lw 2
plot "data/15-HDvsSD-CRT.txt" using 43:38:39 title 'Q_m' with yerrorlines lw 4, \
	"data/15-HDvsSD-CRT.txt" using 48:44:45 title 'Q_b' with yerrorlines lw 4
unset arrow



################################################
# courbes IC(nbObs)
################################################
set xlabel "Nombre d'observateurs"
set ylabel "Intervalle de confiance moyen"
set key top right
set terminal postscript enhanced monochrome "AGaramondPro-Regular.pfb" 28
set notitle

set output "IC-SAMVIQ-ACR.ps"
plot[5:30] [5.5:10.5] "data/18-IC-SAMVIQ-ACR.txt" using 1:2:4 title 'mode 1' with yerrorbars lw 3, \
	"data/18-IC-SAMVIQ-ACR.txt" using 9:10:12 title 'mode 2' with yerrorbars pt 6 lw 3, \
	"data/18-IC-SAMVIQ-ACR.txt" using 5:6:8 title 'mode 3' with yerrorbars lw 3

plot "data/18-IC-SAMVIQ-ACR.txt" using 13:14:16 title 'mode 1' with yerrorbars lw 3, \
	"data/18-IC-SAMVIQ-ACR.txt" using 21:22:24 title 'mode 2' with yerrorbars pt 6 lw 3, \
	"data/18-IC-SAMVIQ-ACR.txt" using 17:18:20 title 'mode 3' with yerrorbars lw 3


################################################
# DMOS en fonction des paramètres P
################################################
set ylabel "{/Symbol D}MOS"
set nokey
set nozeroaxis

set output "P-DMOS.ps"
set xlabel "P_1"
plot "data/20-DMOSC1P.txt" using 2:1 with points lw 3
set xlabel "P_2"
plot "data/20-DMOSC1P.txt" using 3:1 with points lw 3
set xlabel "P_3"
plot "data/20-DMOSC1P.txt" using 4:1 with points lw 3
set xlabel "P_4"
plot "data/20-DMOSC1P.txt" using 5:1 with points lw 3


################################################
# courbes MOS-PSNR
################################################
set nokey
set nozeroaxis
set ylabel 'MOS'
set xlabel 'PSNR'
set notitle

set output "MOS-PSNR.ps"
plot "data/23-MOS-PSNR.txt" using 3:1:2 with yerrorlines lw 3
plot "data/23-MOS-PSNR.txt" using 6:4:5 with yerrorlines lw 3
plot "data/23-MOS-PSNR.txt" using 9:7:8 with yerrorlines lw 3
#set key bottom center
set label 1 at 22.5, 75
set label 1 "Parkrun"
set label 2 at 32.5, 55
set label 2 "Duck Fly"
set label 3 at 38, 15
set label 3 "Voile"

set style arrow 1 heads lw 2
set arrow from 27.16,80 to 40.2,80 as 1
plot "data/23-MOS-PSNR.txt" using 3:1:2 title 'Parkrun' with yerrorlines lw 3, \
		"data/23-MOS-PSNR.txt" using 6:4:5 title 'Duck Fly' with yerrorlines lw 3, \
		"data/23-MOS-PSNR.txt" using 9:7:8 title 'Voile' with yerrorlines lw 3
unset arrow


################################################
# nuage TVSD en fonction de TVSDup sur LCD
################################################
set xlabel "MOS QHD"
set ylabel "MOS TVHD'"
set title 'LCD'
set terminal postscript enhanced monochrome "AGaramondPro-Regular.pfb" 28

set output "SD-SDup.ps"
plot [20:80] "data/16-SD-SDup-LCD.txt" using 1:3 title '' with points lw 3, x title ''

