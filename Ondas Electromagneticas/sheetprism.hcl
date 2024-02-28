# java -jar drawj2d.jar -T screen -W 103 -H 330 sheetprism.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 sheetprism.hcl

font Lines 4
offset [expr 103/2] 5

set A {-50 50}; set B {50 50}; set C {-50 85}; set D {50 85}
set E {-17 35}; set F {-17 100}; set G {17 35}; set H {17 100}

line $A $B; line $C $D
line $E $F; line $G $H

set X {-50 35}; set P {-17 50}; set Q {17 85}; set Y {50 100}

pen inkred

line $X $P

pen inkblue

lineto $Q

pen inkred

lineto $Y

line [geom.extend $X $P 0 70]
line [geom.extend $Y $Q 0 40]