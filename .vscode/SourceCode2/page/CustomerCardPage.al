page 50200 "Customer Detail Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Customer Detail";

    layout
    {
        area(Content)
        {
            group("Customer Detail")
            {
                field("Customer Number"; Rec."Customer Number")
                {
                    ApplicationArea = All;

                }
                field("Customer NAme"; Rec."Customer NAme")
                {
                    ApplicationArea = All;
                }
                field("Contact NUmber"; Rec."Contact NUmber")
                {
                    ApplicationArea = All;
                }

                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                }

                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                }

                field(Adress; Rec.Adress)
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