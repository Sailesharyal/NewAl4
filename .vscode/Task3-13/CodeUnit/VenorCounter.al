codeunit 50120 "VendorCount"
{
    // trigger OnRun()
    // var
    //     myInt: Integer;
    // begin

    // end;

    procedure NoCount(): Integer
    var
        recVen: Record Vendor;
        salesheader: Record "Sales Header";
        sai: Code[20];
        int: Integer;
    begin
        // recVen.Reset();
        // recVen.SetRange("No.", '0*');
        // recVen.SetFilter("No.", '=%1', '102');
        // recVen.SetFilter("Date Filter", '=%1', Today);
        if recVen.FindFirst() then
            //  begin
            //     repeat
            //         int += int;
            //     until recVen.Next() = 0;
            //     exit(int);
            // end;
            // if recVen.get() then
            exit(recVen.Count());
        // recVen.SetFilter("No.", '%1..%2', '01254796', '49989898');
    end;









}

