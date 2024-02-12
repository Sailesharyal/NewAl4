report 50112 "Vendors Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.vscode/SourceCode/Reports/VendorReport.RDL';

    dataset
    {
        dataitem(Vendor; Vendor)
        {

            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.";

            column(Name; Name)
            {

            }

            column(Address; Address)
            {

            }

            column(No_; "No.")
            {

            }



        }

        dataitem(Customer; Customer)

         DataItemLink = "Name" = field("No.");
        {
           

            column("Name_Customer"; Name)
            {

            }

            column(No__of_Ship_to_Addresses; "No. of Ship-to Addresses")
            {


            }




        }
    }



