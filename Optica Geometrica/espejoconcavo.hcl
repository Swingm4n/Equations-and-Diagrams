# java -jar drawj2d.jar -T screen -W 103 -H 330 espejoconcavo.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 espejoconcavo.hcl

font TeX 4
offset [expr 103/2] 5

set H1 {-50 50}; set H2 {50 50}; set C {0 50}; set F {23 50}; set R {48}; set O {-30 30}

l $H1 $H2
dot $C; tlb {C} SW
dot $F; tlb {F} N
arc $C $R -45 45

pen inkred

l $O [geom.intersectcircleline $C $R $C $O]
l $O [geom.intersectcircleline $C $R 20 30 0 30]; l [geom.extend [geom.intersectcircleline $C $R 20 30 0 30] $F 0 40]
l $O [geom.intersectcircleline $C $R $F $O]; lx -5

pen inkblue

m $O; m [ty 50]; arrow $O; tlb {y} N
m [geom.intersect $O [geom.intersectcircleline $C $R $C $O] [geom.extend [geom.intersectcircleline $C $R 20 30 0 30] $F 0 40]]; my 50; arrow [geom.intersect $O [geom.intersectcircleline $C $R $C $O] [geom.extend [geom.intersectcircleline $C $R 20 30 0 30] $F 0 40]]; tlb {y'} S