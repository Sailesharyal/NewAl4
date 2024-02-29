table 50160 "Student Form"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Bill.No"; Code[50])
        {
            DataClassification = ToBeClassified;


        }

        field(4; "Autogenerate"; Code[20])
        {
            TableRelation = "No. Series";
        }



        field(2; "Symbol Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Student Name"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }


    keys
    {
        key(Key1; "Bill.No")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        Iscodeunit: Codeunit NoSeriesManagement;
        Issales: Record "Sales & Receivables Setup";



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


