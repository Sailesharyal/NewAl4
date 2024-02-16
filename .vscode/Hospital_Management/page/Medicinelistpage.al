page 50207 "Medicine List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Medicine Detail";
    CardPageId = "Medicine Card Page";

    layout
    {
        area(Content)
        {
            repeater("Medicine List")
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
        area(Factboxes)
        {

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
}