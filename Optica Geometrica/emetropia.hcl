# java -jar drawj2d.jar -T screen -W 103 -H 330 emetropia.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 emetropia.hcl

font TeX 4
offset [expr 103/2] 5

set E1 {-50 50}; set E2 {50 50}; set CO {15 50}; set CR 25; set R1 {-40 40}; set R2 {-40 60}

l $E1 $E2; circle $CO $CR;

m [geom.intersectcircleline $CO $CR $E1 $E2]; mr -10 0; arc $CR -45 45

l [geom.intersectcircles $CO $CR [here] $CR] [geom.intersectcircles [here] $CR $CO $CR]

set V [geom.intersect [geom.intersectcircles $CO $CR [here] $CR] [geom.intersectcircles [here] $CR $CO $CR] $E1 $E2];

m [geom.intersectcircleline $CO $CR $E1 $E2]; mr -10 0; m [geom.intersectcircles $CO $CR [here] $CR]; set V1 [here]; mr -2 4; lr 2 -4; lr 2 4
m [geom.intersectcircleline $CO $CR $E1 $E2]; mr -10 0; m [geom.intersectcircles [here] $CR $CO $CR]; set V2 [here]; mr -2 -4; lr 2 4; lr 2 -4

pen red

set R [geom.intersectcircleline $CO $CR $E2 $E1]; m $R; mr 0 0; set I [here]

m $R1; lx $V; l $I
m $R2; lx $V; l $I