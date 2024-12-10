.data 10
x: 5     ; Komórka, do której zapisujemy wynik (0 lub 1)
y: -1    ; Komórka przechowująca liczbę do sprawdzenia (przykładowa wartość)

.code 100
START:    CPA y          ; 1aaaa - Skopiuj wartość z adresu y do akumulatora
           BRN NEGATIVE  ; 7aaaa - Skocz do NEGATIVE, jeśli wartość w akumulatorze jest ujemna
           HLT           ; 00000 - Zatrzymaj program
NEGATIVE: CPA 1          ; 92101 - Wczytaj wartość 1 do akumulatora
           STO x         ; 2aaaa - Zapisz wartość 1 do komórki x
           HLT           ; 00000 - Zatrzymaj program
