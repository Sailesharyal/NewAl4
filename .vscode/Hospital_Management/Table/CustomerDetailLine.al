table 50199 "Customer Detail Line"
{
    DataClassification = ToBeClassified;
    Caption = 'Medicine Detail';

    fields
    {
        field(1; "Customer No"; Code[20])
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
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                rec."Total Amount" := rec.Quantity * Rec.Amount;
            end;
        }

        field(6; "Total Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
    }

    keys
    {
        key(Key1; "Customer No", "Line No")
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