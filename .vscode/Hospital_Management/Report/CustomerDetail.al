report 50150 "Customer Detail"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.vscode/Hospital_Management/Report/CustomerDetail.RDL';


    dataset
    {
        dataitem("Customer Detail"; "Customer Detail")
        {
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
        }




    }

    var
        myInt: Integer;
}