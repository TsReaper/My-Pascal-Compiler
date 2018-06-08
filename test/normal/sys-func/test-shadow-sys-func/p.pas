program test_shadow_sys_func;
var
    a, b: integer;
    c, d: real;

function abs(x: integer): integer;
    begin
        if x > 0 then
            abs := -x;
        else
            abs := x;
    end;

function inc(a, b, c: integer): integer;
    begin
        inc := a + b + c;
    end;

begin
    read(a, b, c, d);
    writeln(abs(a));
    writeln(abs(b));
    writeln(abs(c));
    writeln(abs(d));
    writeln(inc(a, b, a));
end.
