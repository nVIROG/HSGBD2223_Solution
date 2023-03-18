uses crt;
var
	n : integer;

function sum(x : integer) : integer;
var
	tmp : integer;
	x2 : integer;
	s : integer;
begin
	x2 := x;
	s := 0;
	while x2 > 0 do
	begin
		tmp := x2 mod 10;
		s := s + tmp;
		x2 := x2 div 10;
	end;

	exit(s);
end;

function check(x : integer) : boolean;
begin
	if ( round(sqrt(x)) * round(sqrt(x)) ) = x then exit(true)
	else exit(false); 
end;

begin
	clrscr;


	readln(n);

	if (check(sum(n)) = true) then write('YES')
	else write('NO');

	readln;
end.