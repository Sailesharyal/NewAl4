table 50199 "Customer Detail Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer Number"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Customer Detail";
        }

        field(2; "Line No"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Medicine Name"; Text[10])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Quantity"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(6; "Total Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                "Total Amount" := rec.Quantity * Rec.Amount
            end;
        }
    }

    keys
    {
        key(Key1; "Customer Number")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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