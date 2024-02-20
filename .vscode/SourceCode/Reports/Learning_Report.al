report 50130 "Sales Order"
{
    Caption = 'Sales Order';
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.vscode/Sourcecode/Reports/learning_Report.RDL';

    dataset
    {


        dataitem("Sales Header"; "Sales Header")

        {

            // DataItemTableView = where(Status = filter(1));
            RequestFilterFields = "Document Type";

            column(Document_Type; "Document Type")
            {

            }

            column("CustomerName"; "Sell-to Customer Name")
            {

            }
            column(Contact; "Sell-to Contact")
            {

            }

            column(Status; Status)
            {

            }

            dataitem("Sales Line"; "Sales Line")
            {

                DataItemLinkReference = "Sales Header";
                DataItemLink = "Document Type" = field("Document Type"), "No." = field("No.");

                column(Document_No_; "Document No.")
                {

                }

                column(Line_Discount__; "Line Discount %")
                {

                }
                column(Qty__to_Ship; "Qty. to Ship")
                {

                }
                column(Tax_Area_Code; "Tax Area Code")
                {

                }

                column(VAT__; "VAT %")
                {

                }

                column(companyPic; companyinfo.Picture)
                {

                }
            }


            trigger OnAfterGetRecord()

            begin
                if statust = true then begin
                    "Sales Header".SetRange(Status, Status::Open);
                end
                else begin
                    "Sales Header".SetRange(Status, Status::Released);
                end;
            end;


            trigger OnPostDataItem()
            begin
                companyinfo.get;
                companyinfo.CalcFields(Picture);
            end;


        }



    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                field(statust; statust)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    var
        statust: Boolean;
        companyinfo: Record "Company Information";


}