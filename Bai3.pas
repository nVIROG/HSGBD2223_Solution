uses crt;
type
	arr = array[1..1007] of ansistring;
var
	s : ansistring;
	a : arr;

procedure lamsachmang();
var
	i : integer;
begin
	for i := 1 to 1000 do a[i] := '';
end;

procedure tachso(leng : integer);
var
	i,j : integer;
	x : integer;

begin
	lamsachmang;

	for i := 1 to leng do
	begin
		j := i;
		x := 1;
		while j <= length(s) do
		begin
			a[x] := a[x] + s[j];
			j := j + leng;
			inc(x);
		end;
	end;

end;

function check(leng : integer) : boolean;
var
	i : integer;
begin
	if (length(s) mod leng) <> 0 then exit(false);

	for i := 1 to (length(s) div leng) -1 do
	begin
		if (a[i] <> a[i+1]) then exit(false);
	end;

	exit(true);
end;

procedure ans();
var
	i,j : integer;
begin
	for i := 1 to length(s) do
	begin
		tachso(i);
		if (check(i) = true) then 
		begin
			write(length(s) div i);
			for j := 1 to i do write(s[j]);
			exit;
		end;
	end;
end;


procedure xuat(leng : integer);
var
	i : integer;
begin
	for i := 1 to length(s) div leng do write(a[i],' ');
	writeln;
end;


begin
	clrscr;

	readln(s);

	ans;

	readln;
end.