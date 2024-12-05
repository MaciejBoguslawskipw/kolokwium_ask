; Inicjalizacja danych
0010 00000  ; n = 5
0011 00000  ; s = 0
0012 00001  ; v = 1
0013 00002  ; Wektor - Element 1
0014 00003  ; Wektor - Element 2
0015 00004  ; Wektor - Element 3
0016 00005  ; Wektor - Element 4
0017 00006  ; Wektor - Element 5

; Rozpoczęcie programu
0200 10000  ; CPA (0) - Wczytaj wartość 0
0201 20011  ; STO s - Zapisz 0 do s
0202 10012  ; CPA (v) - Wczytaj wartość v (adres początkowy wektora)
0203 20020  ; STO i - Zapisz do i
0204 10012  ; CPA (v) - Wczytaj adres początkowy wektora
0205 10011  ; ADD n - Dodaj liczbę elementów wektora
0206 20021  ; STO end - Zapisz adres końcowy wektora do end

; Pętla
0207 10020  ; CPA i - Wczytaj wartość i
0208 40021  ; SUB end - Odejmij adres końcowy
0209 80100  ; BRZ END - Jeśli wynik jest 0, skocz do END
0210 10000  ; CPA (0) - Wczytaj wartość z komórki 0
0211 30011  ; ADD s - Dodaj wartość do sumy
0212 20011  ; STO s - Zapisz sumę
0213 11020  ; INC i - Zwiększ i
0214 60007  ; BRA LOOP - Skocz do początku pętli

; Zakończenie programu
0100 00000  ; HLT - Zakończ program
