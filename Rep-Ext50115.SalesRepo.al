reportextension 50115 SalesRepo extends "Standard Sales - Order Conf."
{
    dataset
    {
        add(Header)
        {
            column(SalesMessage; SalesMessage){}
            column(PhoneNo;Cus."Phone No."){}
            column(CusAddress;Cus.Address){}
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
        Cus : Record Customer;	
        "Phone No.": Text[30];
        Address: text[100];
}
