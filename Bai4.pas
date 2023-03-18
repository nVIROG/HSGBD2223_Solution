uses crt;
type
	arr = array[1..100000007] of integer;
var
	a,b : arr;

	n, k : int64;

procedure nhap();
var
	i : longint;
begin
	read(n); readln(k);
	for i := 1 to n-1 do read(a[i]); readln(a[n]);
end;

procedure swap(var a,b : integer);
var
	tmp : integer;
begin
	tmp := a;
	a := b;
	b := tmp;
end;

procedure sort(var f : arr; l,r : int64);
var
	i,j : int64;
	mid : integer;
begin
	i := l;
	j := r;
	mid := f[(l+r) div 2];

	repeat
		while f[i] < mid do inc(i);
		while f[j] > mid do dec(j);

		if (i <= j) then
		begin
			swap(f[i],f[j]);
			swap(b[i],b[j]);
			inc(i); dec(j);
		end;

	until i > j;

	if (i < r) then sort(f,i,r);
	if (j < l) then sort(f,j,l);
end;

procedure thietlap_b();
var
	i : integer;
begin
	for i := 1 to n do b[i] := i;
end;

procedure xuat();
var
	i : integer;
begin
	for i := 1 to n do write(a[i],' ');
	writeln;
end;


procedure Process();
var
	i : longint;
	s : int64;
begin
	s := 0;
	for i := (n-k) + 1 to n do
	begin
		write(b[i]);
		s := s + a[i];
	end;

	writeln();
	writeln(s);
end;


begin
	clrscr;

	nhap();
	thietlap_b;
	sort(a,1,n);

	process;

	readln;
end.