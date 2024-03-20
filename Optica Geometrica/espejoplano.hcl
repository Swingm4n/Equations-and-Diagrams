# java -jar drawj2d.jar -T screen -W 103 -H 330 espejoplano.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 espejoplano.hcl

font TeX 4
offset [expr 103/2] 5

set H1 {-50 50}; set H2 {50 50}; set V {0 50}; set P {0 30}; set O {-35 30}; set I {35 30}

l $H1 $H2;
l 0 5 0 55

pen inkblue

m $O; m [ty 50]; arrow $O; tlb {y} N
m $I; m [ty 50]; arrow $I; tlb {y} N

pen inkred

l $O $I;
l [geom.extend $I 0 15 0 15]; m [geom.intersect $I 0 15 0 5 0 95]; l $O
m 0 15; lx -25