reportextension 50115 SalesRepo extends "Standard Sales - Order Conf."
{
    dataset
    {
        add(Header)
        {
            column(SalesMessage; SalesMessage) { }
            column(PhoneNo; "Sell-to Phone No.") { }
            column(Address; "Bill-to Address") { }
        }
        add(Line)
        {
            column(Tax; Tax) { }
        }
        add(Totals)
        {
            column(TotalTax; TotalTax) { }
        }
        modify(Line)
        {
            trigger OnAfterAfterGetRecord()
            begin
                TotalTax += Tax;
            end;
        }
    }
    rendering
    {
        layout(Print)
        {
            Type = Word;
            LayoutFile = 'SalesRepo.docx';
        }

    }
    var
        SalesMessage: Label 'Sales Message';
        // Cus : Record Customer;	
        // "Phone No.": Text[30];
        Address: text[100];
        PhoneNo: Text[30];
        TotalTax: Decimal;
}
