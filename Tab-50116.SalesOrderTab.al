tableextension 50116 "Sales Order Linee" extends "Sales Line"
{
    fields
    {
        field(20; Tax; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    var
        myInt: Integer;
}