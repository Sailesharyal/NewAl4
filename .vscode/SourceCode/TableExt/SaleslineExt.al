tableextension 50112 "SalesLineExt" extends "Sales Line"
{
    fields
    {
        field(50130; "Number Detail"; Integer)
        {
            DataClassification = CustomerContent;
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