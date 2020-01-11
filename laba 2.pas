// Задание:
// Дан массив из 24 беззнаковых чисел (байтов). Разделить его на 2 части следующим образом. В одномерный массив A занести элементы, в которых бит с заданным но-мером равен 0, а остальные - в массив B.

// программа обработки массива на ассемблере


{$asmmode intel}
{$output format asw}

const size = 24;
const x = 3;
const y = 8;

var a: array [1..size] of byte;
var AnsA: array [1..size] of byte;
var AnsB: array [1..size] of byte;

var b: array [1..x, 1..y] of byte;
var Ans2A: array [1..size] of byte;
var Ans2B: array [1..size] of byte;

var N,i,j: byte;
var index: integer;
var indexA, indexB, index2A, index2B: integer;
var ind: integer;

begin
    indexA := 0; indexB := 0;
    index2A := 0; index2B := 0;
	ind := 0;

    write('Введите индекс бита: ');
    readln(index);
    writeln(); writeln();

    randomize;
    for i := 1 to size do
       a[i]:= random(255);

    for i := 1 to x do
       for j := 1 to y do
          b[i,j]:= random(255);

asm
    jmp @start

	// чтобы получить продолжение, напишите на почту pi4vikont.2@gmail.com
	// или в вк vk.com/vikontich
	// я найду чем помочь ;)
	
end.
