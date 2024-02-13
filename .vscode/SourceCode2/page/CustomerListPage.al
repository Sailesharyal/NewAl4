page 50201 "Customer Detail List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Customer Detail";
    CardPageId = "Customer Detail Page";

    layout
    {
        area(Content)
        {
            repeater("Customer Detail")
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