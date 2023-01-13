ALGORITHM Checkpoint Linear Data Structures
VAR
    set1, set2 : array of integers;
    sum, i, j : integer;
    found : boolean;
BEGIN
    sum := 0;
    for i := 0 to length(set1) - 1 do
    begin
        found := false;
        for j := 0 to length(set2) - 1 do
        begin
            if set1[i] = set2[j] then
            begin
                found := true;
                break;
            end;
        end;
        if found = false then
            sum := sum + set1[i];
    end;
    for i := 0 to length(set2) - 1 do
    begin
        found := false;
        for j := 0 to length(set1) - 1 do
        begin
            if set2[i] = set1[j] then
            begin
                found := true;
                break;
            end;
        end;
        if found = false then
            sum := sum + set2[i];
    end;
    writeln(sum);
END
