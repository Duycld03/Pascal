program Add_Dots;
uses crt;
function numberToString(n:longint):string;
var text2:string;
begin
    str(n, text2);
    numberToString:= text2;
end;
function add_Dots(m:longint):string;
var text:string;
    num, num2, num3:longint;
begin
    num:= m div 1000 + 1;
    num2:= 0;
    text:='';
    while num2 < num do
    begin
        if m < 1000 then
        begin
            text:= numberToString(m) + text;
            break;
        end;
        num3:= m mod 1000;
        if num3 = 0 then
            text:= '.000' + text
        else if num3 < 10 then
        begin
            text:= '.00' + numberToString(num3) + text;
        end
        else if num3 < 100 then
        begin
            text:= '.0' + numberToString(num3) + text;
        end
        else
        begin
            text:= '.' + numberToString(num3) + text;
        end;
        m:= m div 1000;
        num2:= num2 + 1;
    end;
    add_Dots:=text;
end;
var m:longint;
begin
    clrscr;
    write('Nhap so: '); readln(m);
    writeln('So da phan nghin: ',add_Dots(m));
    readln
end.