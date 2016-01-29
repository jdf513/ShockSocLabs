v 20110115 2
C 40000 40000 0 0 0 title-B.sym
C 41700 48400 1 180 1 pwrjack-1.sym
{
T 41800 47900 5 10 0 0 180 6 1
device=PWRJACK
T 41700 47900 5 10 1 1 180 6 1
refdes=Input
}
C 46600 48200 1 0 0 resistor-2.sym
{
T 47000 48550 5 10 0 0 0 0 1
device=RESISTOR
T 46800 48500 5 10 1 1 0 0 1
refdes=100K
}
C 47900 47700 1 0 0 quad_opamp-1.sym
{
T 48500 48300 5 10 0 1 0 0 1
device=QUAD_OPAMP
T 50300 50000 5 10 0 1 0 0 1
footprint=SO14
T 48100 50200 5 10 0 1 0 0 1
symversion=0.1
}
C 48200 48900 1 0 0 vcc-1.sym
C 47900 49500 1 0 0 resistor-2.sym
{
T 48300 49850 5 10 0 0 0 0 1
device=RESISTOR
T 48100 49800 5 10 1 1 0 0 1
refdes=1M
}
C 49700 46600 1 0 0 resistor-2.sym
{
T 50100 46950 5 10 0 0 0 0 1
device=RESISTOR
T 49900 46900 5 10 1 1 0 0 1
refdes=10K
}
C 51200 49500 1 0 0 resistor-2.sym
{
T 51600 49850 5 10 0 0 0 0 1
device=RESISTOR
T 51400 49800 5 10 1 1 0 0 1
refdes=10K
}
C 52400 49500 1 270 0 resistor-variable-2.sym
{
T 53300 48700 5 10 0 1 270 0 1
device=VARIABLE_RESISTOR
T 52700 49100 5 10 1 1 0 0 1
value=1M
T 52600 49400 5 10 1 1 0 0 1
Name=Drive
}
C 53800 46200 1 270 0 resistor-variable-2.sym
{
T 53250 45500 5 10 1 1 0 0 1
refdes=10K
T 54700 45400 5 10 0 1 270 0 1
device=VARIABLE_RESISTOR
T 53200 45800 5 10 1 1 0 0 1
Name=Level
}
C 51200 46100 1 0 0 quad_opamp-1.sym
{
T 51800 46700 5 10 0 0 0 0 1
device=QUAD_OPAMP
T 53600 48400 5 10 0 0 0 0 1
footprint=SO14
T 51400 48600 5 10 0 0 0 0 1
symversion=0.1
T 51400 47600 5 10 0 0 0 0 1
slotdef=1:8,9,10,11,12 
}
C 51200 47200 1 0 0 capacitor-1.sym
{
T 51400 47900 5 10 0 0 0 0 1
device=CAPACITOR
T 51100 47500 5 10 1 1 0 0 1
refdes=47pF
T 51400 48100 5 10 0 0 0 0 1
symversion=0.1
}
C 51200 48700 1 0 0 diode-1.sym
{
T 51600 49300 5 10 0 0 0 0 1
device=DIODE
T 51300 49200 5 10 1 1 0 0 1
refdes=1N914
}
C 51200 47900 1 0 0 diode-3.sym
{
T 51650 48450 5 10 0 0 0 0 1
device=DIODE
T 51350 48350 5 10 1 1 0 0 1
refdes=1N914
}
C 44100 47500 1 180 0 battery-3.sym
{
T 43800 46800 5 10 0 0 180 0 1
device=BATTERY
T 43900 47000 5 10 1 1 180 0 1
refdes=9V  +
T 43800 46550 5 10 0 0 180 0 1
symversion=0.1
}
C 46200 45800 1 270 0 capacitor-4.sym
{
T 47300 45600 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 46700 45300 5 10 1 1 0 0 1
refdes=47uF
T 46900 45600 5 10 0 0 270 0 1
symversion=0.1
}
C 49100 44900 1 90 0 capacitor-1.sym
{
T 48400 45100 5 10 0 0 90 0 1
device=CAPACITOR
T 49400 45600 5 10 1 1 180 0 1
refdes=0.1uF
T 48200 45100 5 10 0 0 90 0 1
symversion=0.1
}
C 46500 46200 1 0 0 resistor-2.sym
{
T 46900 46550 5 10 0 0 0 0 1
device=RESISTOR
T 46800 46500 5 10 1 1 0 0 1
refdes=10K
}
C 47700 45800 1 270 0 resistor-2.sym
{
T 48050 45400 5 10 0 0 270 0 1
device=RESISTOR
T 47900 45300 5 10 1 1 0 0 1
refdes=10K
}
C 49700 47900 1 0 0 capacitor-4.sym
{
T 49900 49000 5 10 0 0 0 0 1
device=POLARIZED_CAPACITOR
T 49900 48400 5 10 1 1 0 0 1
refdes=1uF
T 49900 48600 5 10 0 0 0 0 1
symversion=0.1
}
N 46300 48300 46600 48300 4
N 47500 48300 47900 48300 4
N 47900 48300 47900 49600 4
N 48400 48900 48400 48500 4
N 48800 49600 49100 49600 4
N 48900 48100 49700 48100 4
N 50600 46700 51200 46700 4
N 51000 47400 51200 47400 4
N 52100 49600 52500 49600 4
N 52500 49600 52500 49500 4
N 51000 46700 51000 49600 4
N 51000 49600 51200 49600 4
N 51200 48900 51000 48900 4
N 51200 48100 51000 48100 4
N 52100 48900 52100 48100 4
N 52100 48100 52500 48100 4
N 52500 46500 52500 48600 4
N 52500 48400 53000 48400 4
N 53000 48400 53000 49000 4
N 52100 47400 52500 47400 4
N 49600 46700 49700 46700 4
N 50700 48100 50700 47500 4
N 50700 47500 49600 47500 4
N 49600 47500 49600 46700 4
C 52900 46300 1 0 0 capacitor-4.sym
{
T 53100 47400 5 10 0 0 0 0 1
device=POLARIZED_CAPACITOR
T 53100 46800 5 10 1 1 0 0 1
refdes=1uF
T 53100 47000 5 10 0 0 0 0 1
symversion=0.1
}
N 53900 46500 53900 46200 4
N 52200 46500 52900 46500 4
C 56400 45900 1 180 0 pwrjack-1.sym
{
T 56300 45400 5 10 0 0 180 0 1
device=PWRJACK
T 56400 45400 5 10 1 1 180 0 1
refdes=Output
}
N 42800 44600 55200 44600 4
N 47400 46300 51200 46300 4
N 47800 46300 47800 45800 4
N 47900 47900 47600 47900 4
N 47600 47900 47600 46300 4
N 46400 45800 46400 47400 4
N 48900 45800 48900 46300 4
N 46400 44900 46400 44600 4
N 47800 44600 47800 44900 4
N 48900 44600 48900 44900 4
N 53800 46500 53900 46500 4
N 53900 45300 53900 44600 4
C 47000 44300 1 0 0 gnd-1.sym
C 45400 48100 1 0 0 capacitor-1.sym
{
T 45600 48800 5 10 0 0 0 0 1
device=CAPACITOR
T 45600 48600 5 10 1 1 0 0 1
refdes=0.1uF
T 45600 49000 5 10 0 0 0 0 1
symversion=0.1
}
N 49100 48100 49100 49600 4
N 50600 48100 50700 48100 4
C 45400 47200 1 0 0 diode-1.sym
{
T 45800 47800 5 10 0 0 0 0 1
device=DIODE
T 45500 47700 5 10 1 1 0 0 1
refdes=1N4001
}
N 46300 47400 46400 47400 4
N 44100 47300 44400 47300 4
N 45200 47400 45400 47400 4
C 44400 47200 1 0 0 SPST-switch.sym
N 43000 47300 42800 47300 4
N 42800 44600 42800 48100 4
N 42800 48100 42600 48100 4
C 54600 45600 1 0 0 SPST-switch.sym
N 54600 45700 54400 45700 4
N 55400 45800 55500 45800 4
N 55500 45600 55200 45600 4
N 55200 44600 55200 45600 4
N 42600 48300 45400 48300 4
N 54600 45900 54400 45900 4
N 54400 45900 54400 50200 4
N 54400 50200 44100 50200 4
N 44100 50200 44100 48300 4
L 44800 47400 44800 47300 3 0 0 0 -1 -1
L 44800 47200 44800 47100 3 0 0 0 -1 -1
L 44800 47000 44800 46900 3 0 0 0 -1 -1
L 44800 46800 44800 46700 3 0 0 0 -1 -1
L 44800 46600 44800 46500 3 0 0 0 -1 -1
L 44800 46400 44800 46300 3 0 0 0 -1 -1
L 44800 46200 44800 46100 3 0 0 0 -1 -1
L 44800 46000 44800 45900 3 0 0 0 -1 -1
L 44800 45800 44800 45700 3 0 0 0 -1 -1
L 44800 45600 44800 45500 3 0 0 0 -1 -1
L 44800 45400 44800 45300 3 0 0 0 -1 -1
L 44800 45200 44800 45100 3 0 0 0 -1 -1
L 44800 45000 44800 44900 3 0 0 0 -1 -1
L 44800 44800 44800 44700 3 0 0 0 -1 -1
L 44800 44600 44800 44500 3 0 0 0 -1 -1
L 44800 44400 44800 44300 3 0 0 0 -1 -1
L 44800 44200 44800 44100 3 0 0 0 -1 -1
L 55000 44100 55000 44200 3 0 0 0 -1 -1
L 55000 44300 55000 44400 3 0 0 0 -1 -1
L 55000 44500 55000 44600 3 0 0 0 -1 -1
L 55000 44700 55000 44800 3 0 0 0 -1 -1
L 55000 44900 55000 45000 3 0 0 0 -1 -1
L 55000 45100 55000 45200 3 0 0 0 -1 -1
L 55000 45300 55000 45400 3 0 0 0 -1 -1
L 55000 45500 55000 45600 3 0 0 0 -1 -1
L 55000 45700 55000 45800 3 0 0 0 -1 -1
L 44800 44100 44900 44100 3 0 0 0 -1 -1
L 45000 44100 45100 44100 3 0 0 0 -1 -1
L 45200 44100 45300 44100 3 0 0 0 -1 -1
L 45400 44100 45500 44100 3 0 0 0 -1 -1
L 45600 44100 45700 44100 3 0 0 0 -1 -1
L 45800 44100 45900 44100 3 0 0 0 -1 -1
L 46000 44100 46100 44100 3 0 0 0 -1 -1
L 46200 44100 46300 44100 3 0 0 0 -1 -1
L 46400 44100 46500 44100 3 0 0 0 -1 -1
L 46600 44100 46700 44100 3 0 0 0 -1 -1
L 46800 44100 46900 44100 3 0 0 0 -1 -1
L 47000 44100 47100 44100 3 0 0 0 -1 -1
L 47200 44100 47300 44100 3 0 0 0 -1 -1
L 47400 44100 47500 44100 3 0 0 0 -1 -1
L 47600 44100 47700 44100 3 0 0 0 -1 -1
L 47800 44100 47900 44100 3 0 0 0 -1 -1
L 48000 44100 48100 44100 3 0 0 0 -1 -1
L 48200 44100 48300 44100 3 0 0 0 -1 -1
L 48400 44100 48500 44100 3 0 0 0 -1 -1
L 48600 44100 48700 44100 3 0 0 0 -1 -1
L 48800 44100 48900 44100 3 0 0 0 -1 -1
L 49000 44100 49100 44100 3 0 0 0 -1 -1
L 49200 44100 49300 44100 3 0 0 0 -1 -1
L 49400 44100 49500 44100 3 0 0 0 -1 -1
L 49600 44100 49700 44100 3 0 0 0 -1 -1
L 49800 44100 49900 44100 3 0 0 0 -1 -1
L 50000 44100 50100 44100 3 0 0 0 -1 -1
L 50200 44100 50300 44100 3 0 0 0 -1 -1
L 50400 44100 50500 44100 3 0 0 0 -1 -1
L 50600 44100 50700 44100 3 0 0 0 -1 -1
L 50800 44100 50900 44100 3 0 0 0 -1 -1
L 51000 44100 51100 44100 3 0 0 0 -1 -1
L 51200 44100 51300 44100 3 0 0 0 -1 -1
L 51400 44100 51500 44100 3 0 0 0 -1 -1
L 51600 44100 51700 44100 3 0 0 0 -1 -1
L 51800 44100 51900 44100 3 0 0 0 -1 -1
L 52000 44100 52100 44100 3 0 0 0 -1 -1
L 52200 44100 52300 44100 3 0 0 0 -1 -1
L 52400 44100 52500 44100 3 0 0 0 -1 -1
L 52600 44100 52700 44100 3 0 0 0 -1 -1
L 52800 44100 52900 44100 3 0 0 0 -1 -1
L 53000 44100 53100 44100 3 0 0 0 -1 -1
L 53200 44100 53300 44100 3 0 0 0 -1 -1
L 53400 44100 53500 44100 3 0 0 0 -1 -1
L 53600 44100 53700 44100 3 0 0 0 -1 -1
L 53800 44100 53900 44100 3 0 0 0 -1 -1
L 54000 44100 54100 44100 3 0 0 0 -1 -1
L 54200 44100 54300 44100 3 0 0 0 -1 -1
L 54400 44100 54500 44100 3 0 0 0 -1 -1
L 54600 44100 54700 44100 3 0 0 0 -1 -1
L 54800 44100 54900 44100 3 0 0 0 -1 -1
N 46400 46300 46500 46300 4
C 45200 47000 1 270 0 resistor-2.sym
{
T 45550 46600 5 10 0 0 270 0 1
device=RESISTOR
T 45500 46600 5 10 1 1 0 0 1
refdes=470R
}
C 45100 45900 1 270 0 led-1.sym
{
T 45700 45100 5 10 0 0 270 0 1
device=LED
T 45500 45700 5 10 1 1 0 0 1
refdes=On LED
T 45900 45100 5 10 0 0 270 0 1
symversion=0.1
}
N 45300 47400 45300 47000 4
N 45300 46100 45300 45900 4
N 45300 45000 45300 44600 4