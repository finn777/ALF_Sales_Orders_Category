
page 60221 ALF_Sales_Orders_Category_List
{
    PageType = List;
    SourceTable = "ALF_Sales_Orders_Category_Tab";
    UsageCategory = Lists;
    ApplicationArea = All;
    Caption='ALF_Sales_Orders_Category_List';
    Editable = true;   
    
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Category_Code; Category_Code)
                {
                    ApplicationArea = All;
                    StyleExpr = StyleTxt;                    
                }
                field(Category_StyleExpr; Category_StyleExpr)
                {
                    ApplicationArea = All;
                    StyleExpr = StyleTxt;
                    ToolTip = 'Refresh page (F5) after add/modify Category_StyleExpr for use the actual style.';                    
                }
            }
        }
        area(Factboxes)
        {
            
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        StyleTxt := ALF_Sales_Orders_Category_Code.GetTextFrom_ALF_Category_StyleExpr_enum(Category_StyleExpr);
    end;

    var
    StyleTxt: Text;
    ALF_Sales_Orders_Category_Code: Codeunit "ALF_Sales_Orders_Category_Code";

}
