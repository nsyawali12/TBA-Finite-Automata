program TBA;
uses crt,sysutils;
var
        lexic,formula : string;
        j,i : integer;
begin
        clrscr;
        lexic := '+-x:()123456789';
        write('masukkan formula: ');
        readln(formula);
        i := 1;
        while (i <= length(formula)) do
        begin
                j := 1;
                while (j <= length(lexic))  do
                begin
                        if (formula[i] = lexic[j]) then
                        begin
                                if ( (j >= 1) and (j <= 4)) then
                                begin
                                        if (formula[i+1] = ' ') then
                                                write('opr | ')
                                        else
                                                write('num | ');
                                                i := i+2;
                                end
                                else
                                        if (j = 5) then
                                                write ('kurbuk | ')
                                        else
                                                if ( j = 6 ) then
                                                        write ('kurtup | ')
                                                else
                                                begin
                                                        write ('num | ');
                                                end;
                        end;
                        j := j+1;
                end;
                i := i+1;
        end;
        readln;
end.
