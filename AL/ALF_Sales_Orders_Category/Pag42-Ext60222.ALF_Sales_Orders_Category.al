pageextension 60222 ALF_Sales_Orders_Category_PECa extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
        addbefore("No.")
        {
            field(ALF_Category_Code;ALF_Category_Code)
            {
                ApplicationArea = All;
                StyleExpr = StyleTxt;
                ToolTip = 'The small color text note to categorize ‘Sales Order’.';
            }
        }

    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    trigger OnAfterGetRecord()
    var
    ALF_Sales_Orders_Category_Tab: record ALF_Sales_Orders_Category_Tab;
    begin
        StyleTxt := 'standard';
        if ALF_Sales_Orders_Category_Tab.GET("ALF_Category_Code") then
        begin
            StyleTxt := 
            ALF_Sales_Orders_Category_Code.GetTextFrom_ALF_Category_StyleExpr_enum(ALF_Sales_Orders_Category_Tab.Category_StyleExpr);
        end;            
    end;
    
    var
        StyleTxt: Text;
        ALF_Sales_Orders_Category_Code: Codeunit "ALF_Sales_Orders_Category_Code";
}
