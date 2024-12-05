0010 00003 ; Komórka x (zawiera wartość 3)
0011 00001 ; Komórka y (zawiera wartość 1)
0200 10011 ; 1aaaa - Wczytaj wartość z komórki 11 (y) do akumulatora
0201 40001 ; 92401 - Odejmij 1 od wartości w akumulatorze (jeśli y = 1, to w akumulatorze będzie 0)
0202 80100 ; 8aaaa - Skocz do adresu 100 (MULTIPLY), jeśli akumulator jest równy 0 (czyli y = 1)
0203 00000 ; 00000 - Zatrzymaj program, jeśli y != 1
0100 10010 ; 1aaaa - Wczytaj wartość z komórki 10 (x) do akumulatora
0101 30010 ; 3aaaa - Dodaj wartość z komórki 10 (x) do akumulatora (x * 2)
0102 20010 ; 2aaaa - Zapisz wynik (2 * x) do komórki 10 (x)
0103 00000 ; 00000 - Zatrzymaj program