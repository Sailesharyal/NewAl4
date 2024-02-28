page 50198 "CusDetailLineList"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Customer Detail Line";
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;

                }

                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;

                }

                field("Medicine Name"; Rec."Medicine Name")
                {
                    ApplicationArea = All;
                    TableRelation = "Medicine Detail";

                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;

                }

                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;

                }

                field("Total Amount"; Rec."Total Amount")
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
}