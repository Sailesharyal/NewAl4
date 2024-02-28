page 50197 "lerning regular Expression"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(ID; ID)
                {
                    ApplicationArea = All;

                }

                field(Email; Email)
                {

                }

            }
        }
    }



    var
        ID: Code[20];

        Email: Code[20];

        Exp: Codeunit Regex;
}