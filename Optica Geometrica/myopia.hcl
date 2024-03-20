# java -jar drawj2d.jar -T screen -W 103 -H 330 myopia.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 myopia.hcl

font TeX 4
offset [expr 103/2] 5

set E1 {-50 50}; set E2 {50 50}; set CO {15 50}; set CR 25; set R1 {-40 40}; set R2 {-40 60}; set L {-20 50}; set OR {-30 50}

l $E1 $E2; circle $CO $CR;

m [geom.intersectcircleline $CO $CR $E1 $E2]; mr -10 0; arc $CR -45 45

l [geom.intersectcircles $CO $CR [here] $CR] [geom.intersectcircles [here] $CR $CO $CR]

set V [geom.intersect [geom.intersectcircles $CO $CR [here] $CR] [geom.intersectcircles [here] $CR $CO $CR] $E1 $E2];

m [geom.intersectcircleline $CO $CR $E1 $E2]; mr -10 0; m [geom.intersectcircles $CO $CR [here] $CR]; set V1 [here]; mr -2 4; lr 2 -4; lr 2 4
m [geom.intersectcircleline $CO $CR $E1 $E2]; mr -10 0; m [geom.intersectcircles [here] $CR $CO $CR]; set V2 [here]; mr -2 -4; lr 2 4; lr 2 -4

m $L; my $V1; set L1 [here]; mr -2 -4; lr 2 4; lr 2 -4
m $L; my $V2; set L2 [here]; mr -2 4; lr 2 -4; lr 2 4
l $L1 $L2;

pen inkred

set R [geom.intersectcircleline $CO $CR $E2 $E1]; m $R; mr -12 0; set I [here]

m $R1; lx $V; set W1 [here]; l $I
m $R2; lx $V; set W2 [here]; l $I

pen inkblue

l $W1 $OR; l $W2; l $R; l $W1;
l $OR [geom.intersect $R1 $W1 $L1 $L2]; l $OR [geom.intersect $R2 $W2 $L1 $L2];

pen black

m $OR; tlb {O_R} NW