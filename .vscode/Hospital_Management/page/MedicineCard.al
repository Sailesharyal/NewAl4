page 50206 "Medicine Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Medicine Detail";

    layout
    {
        area(Content)
        {
            group("Medicine List")
            {
                field("Bill No"; Rec."Bill No")
                {
                    ApplicationArea = All;

                }
                field("Medicine Name"; Rec."Medicine Name")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}