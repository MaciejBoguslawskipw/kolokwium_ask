; .data 10
; x: 3    ; Komórka przechowująca liczbę do ewentualnego pomnożenia (przykładowa wartość)
; y: 1    ; Komórka przechowująca wartość warunkową (0 lub 1)

; .code 200
; START:   CPA y        ; Wczytaj wartość z komórki y do akumulatora
;          SUB (1)      ; Odejmij 1 od wartości w akumulatorze
;          BRZ MULTIPLY ; Jeśli wartość w akumulatorze jest równa 0 (czyli y = 1), skocz do MULTIPLY
;          HLT          ; Jeśli y != 1, zakończ program
; MULTIPLY: CPA x       ; Wczytaj wartość z komórki x do akumulatora
;           ADD x       ; Dodaj wartość z komórki x do akumulatora (x * 2)
;           STO x       ; Zapisz wynik do komórki x
;           HLT         ; Zakończ program



.data 10
x: 3    ; Komórka przechowująca liczbę do ewentualnego pomnożenia (przykładowa wartość)
y: 1    ; Komórka przechowująca wartość warunkową (0 lub 1)

.code 200
START:   CPA y        ; 1aaaa - Wczytaj wartość z adresu y do akumulatora
         SUB (1)      ; 92401 - Odejmij 1 od wartości w akumulatorze
         BRZ MULTIPLY ; 8aaaa - Jeśli wartość w akumulatorze jest równa 0 (czyli y = 1), skocz do MULTIPLY
         HLT          ; 00000 - Zakończ program
MULTIPLY: CPA x       ; 1aaaa - Wczytaj wartość z komórki x do akumulatora
          ADD x       ; 3aaaa - Dodaj wartość z komórki x do akumulatora (x * 2)
          STO x       ; 2aaaa - Zapisz wynik do komórki x
          HLT         ; 00000 - Zakończ program
