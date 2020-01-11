// ���᫥��� � ������� ᮯ����� (FPU), �ணࠬ�� �� ��ᥬ����.
// ��� ��������� ���祭�� � (�������� � ����������), ���᫨�� �㭪�� f(x), �ᯮ���� �� ࠧ������� � �⥯����� �� � ���� �����:
// �) ��� ��������� n (n �������� � ����������);
// �) ��� �������� �筮�� (e �������� � ����������).
// ��� �ࠢ����� ���� �筮� ���祭�� �㭪樨.

// ��ਠ�� 21
// �㭪��: y = arctan(x)
// ��: s = x - x^3/3 + ... + (-1)^n*(x^(2n+1)/(2n+1))

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

	// �⮡� ������� �த�������, ������ �� ����� pi4vikont.2@gmail.com
	// ��� � �� vk.com/vikontich
	// � ����� 祬 ������ ;)
	
end;

writeln('b =', b:10:2);
readln();
end.
