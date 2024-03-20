# java -jar drawj2d.jar -T screen -W 103 -H 330 espejoconvexo.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 espejoconvexo.hcl

font TeX 4
offset [expr 103/2] 5

set H1 {-50 50}; set H2 {50 50}; set C {36 50}; set F {12 50}; set R {48}; set O {-30 30}

l $H1 $H2
dot $C; tlb {C} SW
dot $F; tlb {F} N
arc $C $R 135 225

pen inkred

l [geom.extend $O $C 0 10]
l $O [geom.intersectcircleline $C $R 0 30 20 30]; l [geom.extend $F [geom.intersectcircleline $C $R 0 30 20 30] 0 20]
l $O [geom.intersectcircleline $C $R $O $F]; lx -25; l [geom.extend [geom.intersectcircleline $C $R $O $F] $F 0 15]

pen inkblue

m $O; m [ty 50]; arrow $O; tlb {y} N
m [geom.intersect $O $C $F [geom.intersectcircleline $C $R 0 30 20 30]]; my 50; arrow [geom.intersect $O $C $F [geom.intersectcircleline $C $R 0 30 20 30]]; tlb {y'} NE