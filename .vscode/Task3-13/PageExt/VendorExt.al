pageextension 50130 MyVendorExt extends "Vendor List"
{
    layout
    {
        addafter("No.")
        {
            field{


 trigger OnOpenPage()
                var
                    myInt: Integer;
                begin

                end;
            }

        }
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
                    Rec.SetFilter("No.", '%1..%2 | %3', '80001', '80010', '80025');
                end;
            }
        }
    }


    var
        Codeun: Codeunit VendorCount;
}