report 50160 "Purchase Order"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.vscode/SourceCode/Reports/PurchaseOrder.RDL';



    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = where(Status = filter(1));
            RequestFilterFields =;



            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {

            }

            column(Vendor_Invoice_No_; "Vendor Invoice No.")
            {

            }
            column(Document_Type; "Document Type")
            {

            }

            column(Status; Status)
            {

            }

            column(Buy_from_Contact; "Buy-from Contact")
            {

            }

            // column()
            // {

            // }

            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLinkReference = "Purchase Header";
                RequestFilterFields = "No.";


                column(Type; Type)
                {

                }
                column(No_; "No.")
                {

                }

                column(Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Promised_Receipt_Date; "Promised Receipt Date")
                {

                }
                column(Line_Amount; "Line Amount")
                {

                }
                column(Direct_Unit_Cost; "Direct Unit Cost")
                {

                }
                column(companypic; companyinfo.Picture)
                {

                }

                // trigger OnAfterGetRecord()

                // begin
                //     companyinfo.get;
                //     companyinfo.CalcFields(Picture);
                // end




                trigger OnAfterGetRecord()

                begin
                    if status1 = true then begin
                        "Purchase Header".SetRange(Status::Released);
                    end
                    else begin
                        "Purchase Header".SetRange(Status::Open);
                    end;
                end;

            }





        }
    }







    var
        myInt: Integer;
        companyinfo: Record "Company Information";

        status1: Boolean;
}