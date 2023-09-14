pageextension 50116 "Sales Order Subforme" extends "Sales Order Subform"
{
    layout
    {
        addbefore("Tax Area Code")
        {
            field(Tax; Rec.Tax)
            {
                ApplicationArea = All;
                Caption = 'Tax';
                ToolTip = 'My Field';
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}