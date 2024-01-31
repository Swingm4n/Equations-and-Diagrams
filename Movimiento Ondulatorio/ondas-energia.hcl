# java -jar drawj2d.jar -T screen -W 103 -H 330 ondas-energia.hcl
# java -jar drawj2d.jar -T rmn -W 103 -H 330 ondas-energia.hcl

font Lines 4
offset [expr 103/2] 5

tlb {\displaystyle \mu = \dfrac{m}{l}} -1 10 1 10

tlb {\displaystyle \rho = \dfrac{m}{S}} -1 30 1 30

tlb {\displaystyle \begin{align} E_{\text{m}} & = E_{\text{p}_{\text{e}}} + E_{\text{c}} = \tfrac{1}{2} k \cdot \Delta y^{2} + \tfrac{1}{2} m \cdot v_{\text{osc}}^{2} = \tfrac{1}{2} k A^{2} \\ \ \\ & = \tfrac{1}{2} m \omega A^{2} = \tfrac{1}{2} m \cdot 4 \pi^{2} f^{2} A^{2} = 2 m \pi^{2} f^{2} A^{2} \end{align}} -1 50 1 50

tlb {\displaystyle E_{\text{m}} = 2 \overbrace{\mu l}^{m} \pi^{2} f^{2} A^{2}} -1 70 1 70

tlb {\displaystyle E_{\text{m}} = 2 \overbrace{\mu l}^{m} \pi^{2} f^{2} A^{2} = 2 \mu \overbrace{2 \pi r}^{l} \pi^{2} f^{2} A^{2} = 4 \mu r \pi^{3} f^{2} A^{2}} -1 90 1 90

tlb {\displaystyle E_{\text{m}} = 2 \overbrace{\rho S}^{m} \pi^{2} f^{2} A^{2} = 2 \rho \overbrace{4\pi r^{2}}^{S} \pi^{2} f^{2} A^{2} = 8 \rho r^{2} \pi^{3} f^{2} A^{2}} -1 110 1 110

tlb {\displaystyle P = \dfrac{E}{t}} -1 130 1 130

tlb {\displaystyle I = \dfrac{P}{S} = \dfrac{E}{S \cdot t}} -1 150 1 150

tlb {\displaystyle P = \text{cte}; \quad I_{1} \cdot r_{1}^{2} = I_{2} \cdot r_{2}^{2}} -1 170 1 170

tlb {\displaystyle A_{1} \cdot r_{1} = A_{1} \cdot r_{2}} -1 190 1 190

tlb {\displaystyle \beta = 10 \cdot \log\dfrac{I}{I_{0}} = 10 \cdot \log\dfrac{I}{1 \cdot 10^{-12}\ \sfrac{\text{W}}{\text{m}^2}}} -1 210 1 210