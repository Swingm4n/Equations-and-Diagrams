# java -jar drawj2d.jar -T screen -W 103 -H 100 -c ondarm-plot.hcl
# java -jar drawj2d.jar -T rmn -W 103 -H -c ondarm-plot.hcl

font Lines 4

unitlength [/ 4. 1.]

# Axis setup

set Xneg {-10 0}
set Xpos {10 0}

arrow $Xneg $Xpos; tlb {\displaystyle x\text{ (m)}} E

set Yneg {-7 7}
set Ypos {-7 -7}

arrow $Yneg $Ypos; tlb {\displaystyle y\text{ (m)}} N

offset -7 0

set O {0 0}; moveto $O; tlb {0} NW

# Plot

pen inkblue

set A {-3 3}
set B {3 -3}

set H1 "[expr -3+6/e] 3"
set H2 "[expr 3-(6/e)] -3"

cubiccurve $A $H1 $H2 $B

set C {3 -3}
set D {9 3}

set H3 "[expr 3+(6/e)] -3"
set H4 "[expr 9-6/e] 3"

cubiccurve $C $H3 $H4 $D

set E {9 3}
set F {15 -3}

set H5 "[expr 9+6/e] 3"
set H6 "[expr 15-(6/e)] -3"

cubiccurve $E $H5 $H6 $F

pen black dashed

line 16 -3 -4 -3; tlb {\text{+A}} W
line 16 3 -4 3; tlb {\text{-A}} W

pen inkred solid

dimline 3 -3 15 -3 "⠀"

moveto 9 -3; tlb {\lambda} N

dimline 0 3 3 3 "⠀"

moveto 1.5 3; tlb {k} N

pen black; moveto 3 0.5; tlb {1} S