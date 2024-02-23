report 50140 "Transfer Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.vscode/SourceCode/Reports/TansferReport.RDL';


    dataset
    {
        dataitem("Transfer Header"; "Transfer Header")
        {

            column(Transfer_from_Code; "Transfer-from Code")
            {

            }

            column(No_; "No.")
            {

            }
            column(Transfer_to_Code; "Transfer-to Code")
            {

            }

            column(Status; Status)
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }

            dataitem("Transfer Line"; "Transfer Line")
            {
                DataItemLinkReference = "Transfer Header";
                DataItemLink = "Document No." = field("No.");
                // DataItemTableView = sorting()



                column(Item_No_; "Item No.")
                {

                }

                column(Description; Description)
                {

                }

                column(Quantity; Quantity)
                {

                }

                column(Shipment_Date; "Shipment Date")
                {

                }

                column(Quantity_Shipped; "Quantity Shipped")
                {

                }
            }


        }
    }




    var
        myInt: Report 116;
}