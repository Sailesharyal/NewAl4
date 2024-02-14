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
                Image = "8ball";
                Promoted = true;
                PromotedIsBig = true;
                ToolTip = 'Click to add a new action';
                Description = 'This is a action button to learn how the Set Filter works';
                Caption = 'Set Filter';



                trigger OnAction()                  //Learning about Set Filters 
                begin
                    Rec.SetFilter("No.", '80001..80010 | 80025');
                end;
            }

        }

    }

    var
        myInt: Integer;
}