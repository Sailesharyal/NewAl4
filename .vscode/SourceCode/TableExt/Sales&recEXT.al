tableextension 50120 MyExtension extends "Sales & Receivables Setup"
{
    fields
    {
        field(50150; "Student Symbol"; Text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";

        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}