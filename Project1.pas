program L7;
uses Unit1, Unit1;
var s:string;
begin
  s:='simple string' +#13;
  writeLn('string without line feed: ',Chomp(s));
  readln
end.
