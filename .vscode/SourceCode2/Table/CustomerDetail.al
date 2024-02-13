table 50200 "Customer Detail"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer Number"; Code[20])
        {
            DataClassification = ToBeClassified;

            Editable = false;

        }

        field(10; "For Number Series"; Code[20])
        {
            TableRelation = "No. Series";
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




        field(7; "Doctor Name"; Code[20])
        {
            TableRelation = "Doctor Detail";


        }

        field(8; "Doctor's Speciality"; Code[20])
        {

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
        IsCodeunit: Codeunit "NoSeriesManagement";   //Calling NoseriesManagement 
        Sales_Rec: Record "Sales & Receivables Setup";

    trigger OnInsert()
    begin
        if Rec."Customer Number" = '' then
            Sales_Rec.Get();
        IsCodeunit.InitSeries(Sales_Rec."Order Nos.", Sales_Rec."Customer Nos.", 0D, "Customer Number", "For Number Series")

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