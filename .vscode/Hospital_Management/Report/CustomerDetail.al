report 50150 "Customer Detail"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    // ProcessingOnly=true
    RDLCLayout = '.vscode/Hospital_Management/Report/CustomerDetail.RDL';


    dataset
    {
        dataitem("Customer Detail"; "Customer Detail")
        {
            // DataItemTableView = where("Contact NUmber" = filter('=0'));
            column(Customer_Number; "Customer Number")
            {

            }

            column(Customer_NAme; "Customer NAme")
            {

            }

            column(Contact_NUmber; "Contact NUmber")
            {

            }

            column(Gender; Gender)
            {

            }

            dataitem("Customer Detail Line"; "Customer Detail Line")
            {
                DataItemLinkReference = "Customer Detail";
                DataItemLink = "Customer No" = field("Customer Number");
                DataItemTableView = where(Quantity = filter('<>0'));

                column(Line_No; "Line No")
                {

                }
                column(Medicine_Name; "Medicine Name")
                {

                }
                column(Amount; Amount)
                {

                }

                column(Quantity; Quantity)
                {

                }

                column(Total_Amount; "Total Amount")
                {

                }




            }
            trigger OnPreDataItem()

            begin
                // "Customer Detail".Reset();
                "Customer Detail Line".Reset();
                "Customer Detail Line".SetRange(Quantity, myInt);
            end;
        }




    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                field(myInt; myInt)
                {
                    ApplicationArea = All;
                    // FieldPropertyName = FieldPropertyValue
                }
            }
        }
    }

    var
        myInt: Integer;
}