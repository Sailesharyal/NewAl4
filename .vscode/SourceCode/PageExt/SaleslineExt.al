pageextension 50113 "Sales line Ext" extends "Sales Order Subform"
{
    layout
    {
        addafter("No.")
        {
            field("Number Detail"; Rec."Number Detail")
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