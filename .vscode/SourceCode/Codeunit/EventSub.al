codeunit 50111 EventSub
{

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Sell-to Customer No.', false, false)]
    local procedure OnAfterValidateEventSelltoCustomerNo(CurrFieldNo: Integer; var Rec: Record "Sales Header"; var xRec: Record "Sales Header")
    var
        Cust: Record Customer;
    begin
        if Cust.get(rec."Sell-to Customer No.") then
            rec."External Document No." := Cust."External No";

    end;

    // [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnValidateSellToCustomerNoOnBeforeRecallModifyAddressNotification', '', false, false)]
    // local procedure OnValidateSellToCustomerNoOnBeforeRecallModifyAddressNotification(var SalesHeader: Record "Sales Header"; xSalesHeader: Record "Sales Header")
    // begin

    // end;

    // [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnValidateSellToCustomerNoOnBeforeRecallModifyAddressNotification', '', false, false)]
    // local procedure "Sales Header_OnValidateSellToCustomerNoOnBeforeRecallModifyAddressNotification"(var SalesHeader: Record "Sales Header"; xSalesHeader: Record "Sales Header")
    // begin
    // end;


    // [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterInsertShipmentLine', '', false, false)]
    // local procedure "Sales-Post_OnAfterInsertShipmentLine"(var SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line"; var SalesShptLine: Record "Sales Shipment Line"; PreviewMode: Boolean; xSalesLine: Record "Sales Line")
    // begin
    // end;



    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterOnInsertevent', 'Sell-to Customer No.', false, false)]
    local procedure ()
    begin

    end;

}