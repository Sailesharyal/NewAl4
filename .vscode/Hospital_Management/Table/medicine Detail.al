table 50206 "Medicine Detail"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Bill No"; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(2; "Field For No series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }

        field(3; "Medicine Name"; text[20])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Bill No")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        isCodeUnit: Codeunit "NoSeriesManagement";
        issale: Record "Sales & Receivables Setup";

    trigger OnInsert()
    begin
        If Rec."Bill No" = '' then
            issale.Get();
        isCodeUnit.InitSeries(issale."Posted Invoice Nos.", issale."Posted Invoice Nos.", 0D, "Bill No", "Field For No series");

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