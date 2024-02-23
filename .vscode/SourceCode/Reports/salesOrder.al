report 50170 "Sales Order Report1"
{
    Caption = 'Sales Order';
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.vscode/Sourcecode/Reports/salesOrder.RDL';

    dataset
    {


        dataitem("Sales Header"; "Sales Header")

        {

            // DataItemTableView = where(Status = filter(1));


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

            column(Location_Code; "Location Code")
            {

            }

            dataitem("Sales Line"; "Sales Line")
            {

                DataItemLinkReference = "Sales Header";
                DataItemLink = "No." = field("No.");

                column(Document_No_; "Document No.")
                {

                }

                column(Line_Discount__; "Line Discount %")
                {

                }
                column(Qty__to_Ship; "Qty. to Ship")
                {

                }

                column(Unit_Price; "Unit Price")
                {

                }


                column(Prepayment_Tax_Area_Code; "Prepayment Tax Area Code")
                {

                }

                column(Line_Amount; "Line Amount")
                {

                }

                column(companyPic; companyinfo.Picture)
                {

                }

                column(Depreciation_Book_Code; "Depreciation Book Code")
                {

                }
            }


            trigger OnAfterGetRecord()

            // begin
            //     if statust = true then begin
            //         "Sales Header".SetRange(Status, Status::Open);
            //     end
            //     else begin
            //         "Sales Header".SetRange(Status, Status::Released);
            //     end;
            // end;

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