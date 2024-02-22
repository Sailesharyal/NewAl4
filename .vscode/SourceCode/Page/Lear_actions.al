page 50199 "Learning about Actions"
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
                field(number1; number1)
                {
                    ApplicationArea = All;

                }

                field(number2; number2)
                {
                    ApplicationArea = All;
                }

                field(number3; number3)
                {
                    ApplicationArea = All;
                }

                field(Final_Result; Final_Result)
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
            action(Sum)
            {
                ApplicationArea = All;
                Caption = 'Add all the Numbers';
                ToolTip = 'This action is to add a sum';

                trigger OnAction()
                begin
                    Final_Result := number1 + number2 + number3;
                    Message('The Sum of 3 number is %1', Final_Result);

                end;
            }
        }
    }

    var
        number1: Decimal;

        number2: Decimal;

        number3: Decimal;

        Final_Result: Decimal;


}