# java -jar drawj2d.jar -T screen -W 103 -H 330 interferencias.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 interferencias.hcl

font Lines 4
offset [expr 103/2] 5

tlb {\displaystyle \omega_1 = \omega_2 = \omega;\quad k_1 = k_2 = k;\quad A_1 = A_2 = A;} -1 10 1 10
tlb {\displaystyle \begin{align} y(x,t) & = y_1(x,t) + y_2(x,t) \\ & = 2A \cdot \text{sen}\left(\omega t - kx + \dfrac{\phi_{0_1}+\phi_{0_2}}{2} \right) \cdot \text{cos }\dfrac{\Delta \phi_{1\rightarrow 2}}{2} \end{align}} -1 30 1 30

tlb {\Delta \phi_{1\rightarrow 2} = 2n\pi,\quad n \in \mathbb{N}} -1 50 1 50
tlb {A_f = \pm 2A} -1 60 1 60

tlb {\Delta \phi_{1\rightarrow 2} = (2n+1)\pi ,\quad n \in \mathbb{N}} -1 80 1 80
tlb {A_f = 0} -1 90 1 90

tlb {\Delta \phi_{1\rightarrow 2} = k\cdot\Delta x_{1\rightarrow 2} = \dfrac{\lambda}{2\pi}\cdot\Delta x_{1\rightarrow 2}} -1 110 1 110

tlb {\Delta x_{1\rightarrow 2} = 2n\lambda,\quad n \in \mathbb{N}} -1 130 1 130
tlb {A_f = \pm 2A} -1 140 1 140

tlb {\Delta x_{1\rightarrow 2} =  (2n+1)\lambda,\quad n \in \mathbb{N}} -1 160 1 160
tlb {A_f = 0} -1 170 1 170

tlb {A_f = 2A \cdot \text{cos }\dfrac{\Delta \phi_{1\rightarrow 2}}{2}} -1 190 1 190