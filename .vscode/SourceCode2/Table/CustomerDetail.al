table 50141 "Customer Detail"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer Number"; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(10; "For Number Series"; Code[20])
        {
            TableRelation = "Sales & Receivables Setup";
        }

        field(2; "Customer NAme"; Text[20])
        {
            DataClassification = ToBeClassified;


        }

        field(3; "Age"; Text[30])
        {
            DataClassification = ToBeClassified;

        }

        field(4; "Gender"; Option)
        {
            OptionMembers = " ","Female","Male","Gay";

        }

        field(5; "Adress"; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(6; "Contact NUmber"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(7; "Doctor To see"; Code[20])
        {
            DataClassification = ToBeClassified;
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