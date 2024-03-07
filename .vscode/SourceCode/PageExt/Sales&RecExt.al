pageextension 50120 MyExtensionofpage extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("Student Symbol"; Rec."Student Symbol")
            {
                ApplicationArea = All;

            }


        }
    }


    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}