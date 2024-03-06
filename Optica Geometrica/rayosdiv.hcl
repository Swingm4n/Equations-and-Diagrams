# java -jar drawj2d.jar -T screen -W 103 -H 330 rayosdiv.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 rayosdiv.hcl

font TeX 4
offset [expr 103/2] 15

line -40 30 40 30

set A {0 -10}; set B {0 50}

line $A $B; line $A -3 -7; line $A 3 -7; line $B -3 47; line $B 3 47

set F {20 30}; set Fi {-20 30}

dot $F; tlb {F} S; dot $Fi; tlb {F'} S

set O {-35 7.5}; set V {0 30}

pen inkred

line [geom.extend $O $V 0 5]

m $O; line $O [tx 0]; line [geom.extend [here] $Fi 10 10]

line $O $F; m [geom.intersect $O $F $A $B]; linerel -20 0

pen inkblue

m $O; m [ty 30]; arrowto $O; tlb {y} [ty 30] $O

m $O; m [geom.intersect $O $V [tx 0] $Fi]

arrow [ty 30] [here]; tlb {y'} [here] [geom.toy 30]