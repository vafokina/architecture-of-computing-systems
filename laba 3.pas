// Вычисления с помощью сопроцессора (FPU), программа на ассемблере.
// Для заданного значения х (вводится с клавиатуры), вычислить функцию f(x), используя ее разложение в степенной ряд в двух случаях:
// а) для заданного n (n вводится с клавиатуры);
// б) для заданной точности (e вводится с клавиатуры).
// Для сравнения найти точное значение функции.

// вариант 21
// функция: y = arctan(x)
// ряд: s = x - x^3/3 + ... + (-1)^n*(x^(2n+1)/(2n+1))

{$asmmode intel}
{$output format asw}

var x, y, a_n, s_n, s_e: real;
var i: integer;

var e, a, b, k: real;
var n, temp: integer;

var const2: integer;

begin
const2 := 2;
e := 0.001; //0.001
a := 0.1;
b := 1;
n := 40;  //40
k := (b-a)/10;
s_n := 0;
s_e := 0;

writeln('n =', n);
writeln('e =', e:10:5);
writeln('a =', a:10:2);
x := a;
//x := b;

while x <= b
do
begin

    asm
       FINIT
       jmp @start

	// чтобы получить продолжение, напишите на почту pi4vikont.2@gmail.com
	// или в вк vk.com/vikontich
	// я найду чем помочь ;)
	
end;

writeln('b =', b:10:2);
readln();
end.
