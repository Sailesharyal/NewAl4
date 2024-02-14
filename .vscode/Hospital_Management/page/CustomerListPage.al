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

                field("Doctor Code"; Rec."Doctor Code")
                {
                    ApplicationArea = All;
                }
                field(Discount; Rec.Discount)
                {
                    ApplicationArea = All;
                }
                field("Register Time"; Rec."Register Time")
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
        area(Creation)
        {
            action("Set Filter")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = Approve;

                trigger OnAction()
                begin
                    Rec.SetFilter("Customer Number", '%1 | %2', '1024', '1026');
                end;
            }


            action("Set Range")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = Approve;

                trigger OnAction()
                begin
                    Rec.SetRange("Doctor Code", '1014');
                end;
            }


        }
    }
}