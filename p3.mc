0010 00000 ; Komórka x (adres początkowy 0)
0011 00005 ; Komórka y (adres końcowy 5)
0020 00000 ; Komórka pomocnicza i (na początku 0)
0200 10010 ; 1aaaa - Wczytaj wartość z komórki 10 (x) do akumulatora
0201 20020 ; 2aaaa - Zapisz wartość z akumulatora (x) do komórki 20 (i)
0202 10020 ; 1aaaa - Wczytaj wartość z komórki 20 (i) do akumulatora
0203 40011 ; 92401 - Odejmij wartość z komórki 11 (y) od akumulatora
0204 80100 ; 8aaaa - Skocz do adresu 100 (END), jeśli akumulator jest równy 0 (czyli i = y)
0205 10000 ; 1aaaa - Wczytaj wartość 0 z komórki 0 do akumulatora
0207 01020 ; 82201 - Zwiększ wartość komórki i (20) o 1
0208 60200 ; 10000 - Skocz do adresu 200 (początek pętli)
0100 10000 ; 1aaaa - Wczytaj wartość 0 z komórki 0 do akumulatora
0102 00000 ; 00000 - Zatrzymaj program