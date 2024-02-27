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
                    ShowMandatory = true;

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

                field(Discount; Rec.Discount)
                {
                    ApplicationArea = All;
                }
                field("Register Time"; Rec."Register Time")
                {
                    ApplicationArea = All;
                }



            }
            group("Doctor's Detail")
            {
                field("Doctor Name"; Rec."Doctor Name")
                {
                    ApplicationArea = ALL;
                }

                field("Doctor's Speciality"; Rec."Doctor's Speciality")
                {
                    ApplicationArea = ALL;
                }

                field("Doctor Code"; Rec."Doctor Code")
                {
                    ApplicationArea = All;
                }

            }

            part("Cutomer line"; CusDetailLineList)
            {
                SubPageLink = "Customer No" = field("Customer Number");
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