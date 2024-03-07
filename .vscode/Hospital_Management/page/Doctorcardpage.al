page 50204 "Doctor Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Doctor Detail";


    layout
    {
        area(Content)
        {
            group("Doctor Detail")
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