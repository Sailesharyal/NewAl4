// 1) Create Codeunit and create a function to count vendor records.
// 2) Add an action in vendor list where it will display the vendor records in message. (call the function created in codeunit from page extension)Create an action in  that displays the total record count of Vendor Table.
// Use setrange or setfilter to display any one field of record from the table.

pageextension 50130 MyVendorExt extends "Vendor List"
{
    layout
    {
        // addafter("No.")
        // {

        // }
    }

    actions
    {
        addfirst(processing)
        {

            action(Setfilter)
            {
                ApplicationArea = All;
                Image = Action;
                Promoted = true;
                PromotedIsBig = true;
                ToolTip = 'Click here to get the total Vendor List';
                Description = 'This is a action button is to see a total vendor Number ';
                Caption = 'Set Filter';



                trigger OnAction()
                begin
                    Rec.SetFilter("No.", '%1', '27833998');
                end;
            }
        }
    }


    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Message('this is a totol number %1', Codeun.NoCount());
    end;


    var
        Codeun: Codeunit VendorCount;
}