program demo;
uses crt;
var f1,f2,f3,f4: text;
procedure gfile(var f:text; path:string; i:byte);
begin
  assign(f,path);
  if i = 1 then reset(f)
  else rewrite(f);
end;
function tong(var f:text):integer;
var x,s:integer;
begin
  s:= 0;
  while not eof(f) do
  begin
    read(f,x);
    s:= s + x;
  end;
  tong:=s;
end;
procedure tongDong(var f,fi:text);
var x,s:integer;
begin
  s:= 0;
  while not eof(f) do
  begin
    while not eoln(f) do
      begin
        read(f,x);
        s:= s + x;
      end;
      writeln(fi,s);
      s:=0;
      readln(f);
  end;
  close(f);
  close(fi);
end;
begin
  gfile(f1,'e:\input.txt',1);
  gfile(f2,'e:\output.txt',2);
  write(f2,tong(f1));
  close(f1);
  close(f2);
  gfile(f3,'e:\input2.txt',1);
  gfile(f4,'e:\output2.txt',2);
  tongDong(f3,f4);
end.
