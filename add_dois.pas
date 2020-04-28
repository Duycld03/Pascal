program Add_Dots;
uses crt;
function add_Dots(m:longint):string;
var text, text2:string;
    num, num2, num3:longint;
    x,y:
begin
    num:= m div 1000 + 1;
    num2:= 0;
    text:='';
    while num2 < num do
    begin
        if m < 1000 then
        begin
            str(m, text2);
                text:= text2 + text;
                break;
        end;
        num3:= m mod 1000;
        if num3 = 0 then
            text:= '.000' + text
        else if num3 < 10 then
        begin
            str(num3, text2);
            text:= '.00' + text2 + text;
        end
        else if num3 < 100 then
        begin
            str(num3, text2);
            text:= '.0' + text2 + text;
        end
        else
        begin
        str(num3, text2);
            text:= '.' + text2 + text;
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
