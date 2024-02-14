table 50202 "Doctor Detail"
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Doctor Number"; Code[20])
        {
            DataClassification = CustomerContent;

        }

        field(4; "For_Number Series"; Code[20])
        {
            TableRelation = "No. Series";

        }

        field(2; "Doctor Name(DR.)"; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(3; Speciality; Option)
        {
            OptionMembers = " ","Dermatology","Infectious disease","Ophthalmology","Obstetrics and gynecology","Cardiology","Endocrinology","Gastroenterology";

            DataClassification = CustomerContent;
        }





    }

    keys
    {
        key(Key1; "Doctor Number")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        IsCodeUnit: Codeunit "NoSeriesManagement";
        IsSales: Record "Sales & Receivables Setup";

    trigger OnInsert()
    begin
        if Rec."Doctor Number" = '' then
            IsSales.Get();
        IsCodeUnit.InitSeries(Issales."Invoice Nos.", IsSales."Invoice Nos.", 0D, "Doctor Number", "For_Number Series");

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}