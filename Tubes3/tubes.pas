program TBA;
uses crt,sysutils;
var
        lexic,formula : string;
        j,i : integer;
        temp : integer;
        negatif,found : boolean;

        procedure search (lexic : string; formula : string; var j : integer);
        var
                i : integer;
                found : boolean;
        begin
                i := 1;
                found := false;
                repeat
                begin
                        if (formula = lexic[i]) then
                        begin
                                j := i;
                                found := true;
                        end;
                        i := i + 1;
                end;
                until((i = length(lexic)) or (found = true));
                if (found = false) then
                        j := 0;

        end;
begin
        clrscr;
        lexic := '+-x:()1234567890,E';
        write('Input (String): ');
        readln(formula);
        temp := 0;
        negatif := false;
        write('Input: ');
        for i := 1 to length(formula) do
        begin
                if (formula[i] <>   ' ') then
                begin
                        search(lexic,formula[i],j);
                        if (j = 5) then
                                write(formula[i],' | ')
                        else
                                if (j = 6) then
                                        write(formula[i],' | ')
                                else
                                        if (((j >= 1) and (j <= 4)) or (negatif = true)) then
                                        begin
                                                if ((formula[i+1] = ' ') and (negatif = false)) then
                                                        write(formula[i],' | ')
                                                else
                                                begin
                                                        negatif := true;
                                                        if ((negatif = true) and (((formula[i+1] = ' ') or (i = length(formula))) or ((formula[i+1] = ')') or (formula[i+1] = '(')))) then
                                                                write(formula[i],' | ')
                                                        else
                                                                write(formula[i]);
                                                end;
                                        end
                                        else
                                        begin
                                                temp := temp + 1;
                                                if (((((formula[i+1] = ' ') or (i = length(formula))) or ((formula[i+1] = ')') or (formula[i+1] = '('))) and (temp >= 1))) then
                                                begin
                                                        write (formula[i],' | ');
                                                        temp := 0;
                                                end
                                                else
                                                        write(formula[i]);
                                        end;
                end;
        end;
        writeln;
        write('Output: ');
        temp := 0;
        negatif := false;
        i := 1;
        while (i <= length(formula)) do
        begin
                j := 1;
                found := false;
                while (j <= length(lexic))  do
                begin
                        if (formula[i] = lexic[j]) then
                        begin
                                found := true;
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
                        end
                        else
                                if ((((j = length(lexic)) and (found = false)) and (formula[i] <> ' '))) then
                                begin
                                        write ('error | ');
                                        i := length(formula) + 1;
                                end;
                        j := j+1;
                end;
                i := i+1;
        end;
        readln;
end.
