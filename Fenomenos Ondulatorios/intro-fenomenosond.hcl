# java -jar drawj2d.jar -T screen -W 103 -H 330 intro-fenomenosond.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 intro-fenomenosond.hcl

font Lines 4
offset [expr 103/2] 5

tlb {\displaystyle y(x,t) = y_1(x,t) + y_2(x,t)} -1 10 1 10
tlb {\displaystyle \dfrac{v_1}{v_2} = \dfrac{\text{sen }\hat{i}}{\text{sen }\hat{r}}} -1 30 1 30

tlb {\displaystyle v_1 > v_2 \Rightarrow \hat{i} > \hat{r}} -1 95 1 95
tlb {\displaystyle v_1 < v_2 \Rightarrow \hat{i} < \hat{r}} -1 105 1 105

pen 0.3

line 45 70 -45 70

moveto -45 69.7
tlb {\displaystyle n_1} NE
tlb {\displaystyle n_2} SE

pen inkred

line -40 45 -20 70
lineto -10 90
arrow -40 45 -30 57.5
arrow -20 70 -12.5 85

line -10 45 10 70
lineto 40 90
arrow -10 45 0 57.5
arrow 10 70 25 80

pen inkblue

texdimangle -20 70 -10 90 -20 90 {\displaystyle \\\ \hat{r}}
texdimangle -20 70 -40 45 -20 45 {\displaystyle \hat{i}}

texdimangle 10 70 40 90 10 90 {\displaystyle \\\ \hat{r}}
texdimangle 10 70 -10 45 10 45 {\displaystyle \hat{i}}

pen black

line 45 150 -45 150

pen inkred

parabola -40 150 -30 120 -20 150
parabola 40 150 30 130 20 150
parabola -10 150 0 100 10 150

pen inkblue

tlb {\displaystyle y_1(x,t)} -31 120 -29 120
tlb {\displaystyle y_1(x,t) + y_2(x,t)} -1 120 1 120
tlb {\displaystyle y_2(x,t)} 29 120 31 120