page 50205 "Doctor Detail"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Doctor Detail";

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

                field(Speciality; Rec.Speciality)
                {
                    ApplicationArea = All;
                }

                // field("For_Number Series"; Rec."For_Number Series")
                // {
                //     ApplicationArea = All;
                // }

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