tableextension 60221 ALF_Sales_Orders_Category_TExt extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(60221; ALF_Category_Code; Code[30])
        {
            DataClassification = CustomerContent;
            TableRelation = ALF_Sales_Orders_Category_Tab.Category_Code;
            ValidateTableRelation = true;
        }

    }
}