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
            RequestFilterFields = "No.", Address, "Address 2", Balance;

            column(CustomerNo_; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Name_2; "Name 2")
            {

            }
            column(Address; Address)
            {

            }
            column(Balance; Balance)
            {

            }

        }
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "No.";
            DataItemTableView = where(Status = filter('Release'));
            column(No_; "No.")
            {

            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLinkReference = "Sales Header";
                DataItemLink = "No." = field("No.");
                column(Amount; Amount)
                {

                }
            }
        }

    }
    var
        purchase: Page "Purchase Order";


}