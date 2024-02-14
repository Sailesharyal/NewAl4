pageextension 50200 "learniigSetFilter" extends "Item List"
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
                ToolTip = 'Click to add a new action';
                Description = 'This is a action button to learn how the Set Filter works';
                Caption = 'Set Filter';



                trigger OnAction()                  //Learning about Set Filters 
                begin
                    // Rec.SetFilter("No.", '80001..80010 | 80025');
                    Rec.SetFilter("No.", '%1..%2 | %3', '80001', '80010', '80025');
                end;


            }
            action("Set Range")

            {
                ApplicationArea = All;
                Image = Action;
                Promoted = true;
                PromotedIsBig = true;
                ToolTip = 'Click to make Some Changes';
                Description = 'This is a action button to learn how the Set Range works';
                Caption = 'Set Range';

                trigger OnAction()
                begin
                    Rec.SetRange("Unit Cost", 2.70, 30.00);

                end;

            }

        }

    }

    var
        myInt: Integer;
}