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

            DataItemTableView = sorting("No.", Name);
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

            column(CustomerNo; CustomerNo)
            {

            }
            dataitem(Customer; Customer)
            {
                DataItemLinkReference = Vendor;
                DataItemLink = "No." = field("No.");
                DataItemTableView = sorting("Name");
                RequestFilterFields = Address;




                column("Name_Customer"; Name)
                {

                }

                column(No__of_Ship_to_Addresses; "No. of Ship-to Addresses")
                {


                }




            }


        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {

                    field(CustomerNo; CustomerNo)
                    {
                        Caption = 'Customer No.';
                        ApplicationArea = All;
                        trigger OnValidate()
                        var
                            myInt: Integer;
                        begin
                            if CustomerNo <> '' then
                                Customer.SetRange("No.", CustomerNo);

                        end;
                    }
                    field(Bk; BK)
                    {
                        ApplicationArea = all;
                    }
                }
            }
        }

        actions
        {

            // area(Processing)
            // {
            //     action(NewAction)
            //     {
            //         ApplicationArea = All;

            //         trigger OnAction()
            //         begin
            //             Message('This is a message');
            //         end;
            //     }
            // }
        }
        trigger OnOpenPage()
        var
            myInt: Integer;
        begin
            bk := True;
        end;


    }

    var
        CustomerNo: Code[20];
        bk: Boolean;
}