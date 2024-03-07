page 50205 "Doctor Detail"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Doctor Detail";
    CardPageId = "Doctor Card Page";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Doctor Name(DR.)"; Rec."Doctor Name(DR.)")
                {
                    ApplicationArea = All;

                }

                field("Doctor Number"; Rec."Doctor Number")
                {
                    ApplicationArea = All;
                }

                // field(Speciality; Rec.Speciality)
                // {
                //     ApplicationArea = All;
                // }

                // field("For_Number Series"; Rec."For_Number Series")
                // {
                //     ApplicationArea = All;
                // }

                field("Secondary Doctor Name(DR.)"; Rec."Secondary Doctor Name(DR.)") { ApplicationArea = All; }

                field("Patient's Problem"; Rec."Patient's Problem")
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
            action("Set Filter")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                Image = Approve;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}