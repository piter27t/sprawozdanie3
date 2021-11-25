# Sprawozdanie numer 3
## 5Z1.

Przy kontenerze D2 zamiast obrazu apache użyłem obrazu busybox, ponieważ nie dało się pobrać obrazu apache.

Uruchomienie skryptu 5Z1.sh :

![Uruchomienie skryptu](./Zrzuty_ekranu/1.JPG)

Kontener T1:

![T1](./Zrzuty_ekranu/2.JPG)

Kontener T2:

![T2](./Zrzuty_ekranu/3.JPG)

Kontener D1:

![D1](./Zrzuty_ekranu/4.JPG)

Kontener D2:

![D2](./Zrzuty_ekranu/5.JPG)

Kontener S1:

![S1](./Zrzuty_ekranu/6.JPG)

bridge1:

![bridge1](./Zrzuty_ekranu/7.JPG)
![bridge1](./Zrzuty_ekranu/8.JPG)

bridge2:

![bridge2](./Zrzuty_ekranu/9.JPG)
![bridge2](./Zrzuty_ekranu/10.JPG)

## 5Z3.
Uruchomienie skryptu 5Z3.sh :

![Uruchomienie skryptu](./Zrzuty_ekranu/11.JPG)

Aliasy D1:

![AD1](./Zrzuty_ekranu/12.JPG)

Aliasy S1:

![AS1](./Zrzuty_ekranu/13.JPG)

Aliasy D2:

![AD2](./Zrzuty_ekranu/14.JPG)

Pytanie 1

Nie można używać aliasów do komunikacji pomiędzy kontenerami przyłączonymi do dwóch różnych sieci ale pracujących w trybie mostu definiowanego przez użytkownika, ponieważ aliasy mają zasięg w jednej sieci i możliwa jest komunikacja tylko w tej samej sieci. Ping z kontenera o aliasie host1 do kontenera o aliasie host2 w innej sieci zakończył się niepowodzeniem a ping z kontenera o aliasie host1 do kontenera o aliasie apa1 który jest w tej samej sieci zakończył się sukcesem

![ping](./Zrzuty_ekranu/15.JPG)
