pageextension 60221 ALF_Sales_Orders_Category_PELi   extends "Sales Order List"
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
        addafter("Co&mments")
        {
                action("ALF Sales Orders Category List")                
                {
                    Image = Reminder;
                    ApplicationArea = All;
                    Promoted = true;
                    PromotedCategory = Category5;
                    ToolTip = 'List of small color text notes to categorize ‘Sales Order’.';
                    trigger OnAction()
                    begin
                        Page.RUN(Page::ALF_Sales_Orders_Category_List);
                    end;
                }
               
        }        

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