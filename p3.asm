.data 10
x: 0     ; Adres początkowy (przykładowo 0)
y: 5     ; Adres końcowy (przykładowo 5)

.code 200
START:    CPA x        ; Wczytaj adres początkowy (x) do akumulatora
           STO i        ; Zapisz go do zmiennej pomocniczej 'i'
LOOP:     CPA i        ; Wczytaj bieżący adres z 'i'
           SUB y        ; Odejmij adres końcowy 'y'
           BRZ END      ; Jeśli 'i' == 'y', zakończ pętlę
           CPA (0)      ; Wczytaj wartość 0 do akumulatora
           STO [i]      ; Zapisz 0 w komórce o adresie 'i'
           INC i        ; Zwiększ adres 'i' o 1
           BRA LOOP     ; Skocz z powrotem do początku pętli
END:       CPA (0)      ; Upewnij się, że końcowa komórka też zostanie wypełniona
           STO [i]      ; Zapisz 0 w komórce 'y' (końcowej)
           HLT          ; Zakończ program
