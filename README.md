# LED-COntrol-on-raspberry-pi
## Программа содержит симуляцию работы светодиодов для raspberry.
## Вызывается с передачей вывода в файл с симуляцией светодиода
### (./prog arg1 arg2 arg3 | ./led -q -s)
## На 5 светодиодах осуществляется циклический сдвиг числа 15 в двоичной СС
## Файл file содержит значения для 3 конпок: 1 - нажата, 0 -не нажата
### При сочитании первых двух кнопок 10 сдвиг осущестяется слева направо, при других сочитаниях наоборот: справа налево
### Если нажата третья кнопка, выводится не циклический сдвиг, а счет от 0 до 15 с параметризированным интервалом.
## Программа имеет 2 входных аргумента:
### Первый передает длительность задержки в секундах при переключении
### Второй передает длительность задержки в секундах для такта сдвига
