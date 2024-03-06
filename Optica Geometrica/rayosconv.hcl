# java -jar drawj2d.jar -T screen -W 103 -H 330 rayosconv.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 rayosconv.hcl

font TeX 4
offset [expr 103/2] 10

line -40 30 40 30

set A {0 0}; set B {0 60}

line $A $B; line $A -3 3; line $A 3 3; line $B -3 57; line $B 3 57

set F {-15 30}; set Fi {15 30}

dot $F; tlb {F} S; dot $Fi; tlb {F'} S

set O {-35 15}; set V {0 30}

pen inkred

line [geom.extend $O $V 0 40]

m $O; line $O [tx 0]; line [geom.extend [here] $Fi 0 25]

line $O [geom.intersect $O $F $A $B]; linerel 40 0

pen inkblue

m $O; m [ty 30]; arrowto $O; tlb {y} [ty 30] $O

m $O; m [geom.intersect $O $V [tx 0] $Fi]

arrow [ty 30] [here]; tlb {y'} [here] [geom.toy 30]