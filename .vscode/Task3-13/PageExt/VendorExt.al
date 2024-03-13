pageextension 50130 MyVendorExt extends "Vendor List"
{
    layout
    {
        // Add changes to page layout here
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



                trigger OnAction()                  //Learning about Set Filters 
                begin
                    // Rec.SetFilter("No.", '80001..80010 | 80025');
                    Rec.SetFilter("No.", '%1..%2 | %3', '80001', '80010', '80025');
                end;
            }
        }
    }


    var
        Codeun: Codeunit VendorCount;
}