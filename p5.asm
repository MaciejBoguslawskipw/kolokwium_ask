.data 10
n: 5         ; Liczba elementów wektora
s: 0         ; Adres, pod którym zostanie zapisana suma
v: 1         ; Wektor: elementy [1, 2, 3, 4, 5]
   2
   3
   4
   5

.code 200
START:    CPA (0)      ; Zainicjuj akumulator wartością 0
           STO s        ; Zapisz 0 w komórce 's' (inicjalizacja sumy)
           CPA (v)      ; Wczytaj adres początkowy wektora
           STO i        ; Zapisz początkowy adres wektora do 'i'
           CPA (v)      ; Wczytaj adres początkowy wektora
           ADD n        ; Dodaj liczbę elementów wektora do początkowego adresu
           STO end      ; Zapisz adres końcowy do 'end'

LOOP:     CPA i         ; Wczytaj bieżący adres 'i'
           SUB end       ; Sprawdź, czy adres przekroczył 'end'
           BRZ END       ; Jeśli tak, zakończ pętlę
           CPA [i]       ; Wczytaj wartość z bieżącej komórki wektora
           ADD s         ; Dodaj tę wartość do bieżącej sumy
           STO s         ; Zapisz nową sumę w komórce 's'
           INC i         ; Przejdź do kolejnej komórki
           BRA LOOP      ; Wróć na początek pętli

END:       HLT          ; Zakończ program
