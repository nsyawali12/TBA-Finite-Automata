program TBA;
uses crt,sysutils;
var
        lexic,formula : string;
        j,i : integer;
        temp : integer;
        negatif : boolean;
begin
        clrscr;
        lexic := '+-x:()1234567890';
        write('masukkan formula: ');
        readln(formula);
        //write(length(formula));
        temp := 0;
        negatif := false;
        i := 1;
        while (i <= length(formula)) do
        begin
                j := 1;
                while (j <= length(lexic))  do
                begin
                        if (formula[i] = lexic[j]) then
                        begin
                                if (( (j >= 1) and (j <= 4)) or (negatif = true)) then
                                begin
                                        if ((formula[i+1] = ' ') and (negatif = false)) then
                                                write('opr | ')
                                        else
                                        begin
                                                negatif := true;
                                                temp := temp + 1;
                                                if ((((formula[i+1] = ' ') or (i = length(formula))or ((formula[i+1] = ')') or (formula[i+1] = '('))) and (temp >= 1))) then
                                                begin
                                                        write ('num | ');
                                                        temp := 0;
                                                        negatif := false;
                                                end;
                                        end;
                                end
                                else
                                        if (j = 5) then
                                                write ('kurbuk | ')
                                        else
                                                if ( j = 6 ) then
                                                        write ('kurtup | ')
                                                else
                                                begin
                                                        temp := temp + 1;
                                                        if ((((formula[i+1] = ' ') or (i = length(formula)) or ((formula[i+1] = ')') or (formula[i+1] = '('))) and (temp >= 1))) then
                                                        begin
                                                                write ('num | ');
                                                                temp := 0;
                                                        end;
                                                end;
                        end;
                        j := j+1;
                end;
                i := i+1;
        end;
        readln;
end.
