uses crt;
var
	s : string;

function check(a : char) : boolean;
var
	i : integer;
begin
	for i := 1 to length(s) do
	begin
		if (s[i] = a) then exit(true);
	end;
	exit(false);
end;

function process() : boolean;
var
	i : integer;
begin
	for i := 97 to 122 do
	begin
		if (check(chr(i)) = false) then exit(false);
	end;

	exit(true);
end;

begin
	clrscr;

	readln(s);
	
	if (process = true) then write('YES')
	else write('NO');

	readln;
end.