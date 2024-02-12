report 50110 "Customers Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.vscode/SourceCode/Reports/CustomersReport.RDL';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {

            }
            column(Name_2; "Name 2")
            {

            }

            column(Address; Address)
            {

            }






        }


    }

}