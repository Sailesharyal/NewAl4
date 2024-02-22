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

                group(Numbers)
                {

                    field(number1; number1)
                    {
                        ApplicationArea = All;

                    }

                    field(number3; number3)
                    {
                        ApplicationArea = All;
                    }

                    field(number2; number2)
                    {
                        ApplicationArea = All;
                    }

                }
            }

            group("Final Result ")
            {
                field(Final_Result; Final_Result)
                {
                    ApplicationArea = All;
                    Editable = false;
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
        area(Navigation)
        {
            group(Navigate)
            {
                action("Customer Page")
                {
                    Caption = 'Customer Detail';
                    ToolTip = 'Click here to go to the customer card page';
                    RunObject = page "Customer Card";

                }

                action("sales Card")
                {
                    Caption = 'Sales & Marketing manager';
                    ToolTip = 'Click here to go to the Sales card';
                    RunObject = page "Sales & Receivables Setup";
                }

                action("Order Adress")
                {
                    RunObject = page "Order Address List";
                    ToolTip = 'Click here to go to Order Address';
                    Caption = 'Order Adress List';
                }

            }
        }
    }

    var
        number1: Decimal;

        number2: Decimal;

        number3: Decimal;

        Final_Result: Decimal;


}