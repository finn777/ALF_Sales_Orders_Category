codeunit 60221 ALF_Sales_Orders_Category_Code
{
   procedure GetTextFrom_ALF_Category_StyleExpr_enum(Category_StyleExpr: enum ALF_Category_StyleExpr_enum):Text
    begin
        case Category_StyleExpr of
            Category_StyleExpr::"'standard'": EXIT('standard');
            Category_StyleExpr::"'standardaccent'": EXIT('standardaccent');
            Category_StyleExpr::"'strong'": EXIT('strong');
            Category_StyleExpr::"'strongaccent'": EXIT('strongaccent');
            Category_StyleExpr::"'attention'": EXIT('attention');
            Category_StyleExpr::"'attentionaccent'": EXIT('attentionaccent');
            Category_StyleExpr::"'favorable'": EXIT('favorable');
            Category_StyleExpr::"'unfavorable'": EXIT('unfavorable');
            Category_StyleExpr::"'ambiguous'": EXIT('ambiguous');
            Category_StyleExpr::"'subordinate'": EXIT('subordinate');
        else
            EXIT('standard');
        end;   
    end;
}  