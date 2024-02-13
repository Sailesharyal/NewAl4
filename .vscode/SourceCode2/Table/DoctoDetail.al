table 50202 "Doctor Detail"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Doctor Number"; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(2; "Doctor Name(DR.)"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(3; Speciality; Option)
        {
            OptionMembers = "Dermatology","Infectious disease","Ophthalmology","Obstetrics and gynecology","Cardiology","Endocrinology","Gastroenterology";
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