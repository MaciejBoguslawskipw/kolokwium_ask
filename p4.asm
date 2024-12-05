.data 10
from: 5    ; Adres źródłowy, z którego kopiujemy wartość (przykładowa wartość)
to:   0    ; Adres docelowy, do którego kopiujemy wartość

.code 200
START:   CPA [from]    ; Wczytaj wartość z komórki 'from' do akumulatora
          STO [to]     ; Zapisz wartość z akumulatora do komórki 'to'
          HLT          ; Zakończ program
