table 60221 ALF_Sales_Orders_Category_Tab
{
    DataClassification = CustomerContent;
    DrillDownPageId = "ALF_Sales_Orders_Category_List";
    LookupPageId = "ALF_Sales_Orders_Category_List";    
    
    fields
    {
        field(1;Category_Code; Code[30])
        {
            DataClassification = CustomerContent;
        }
        field(2; Category_StyleExpr; enum ALF_Category_StyleExpr_enum) 
        {
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(PK; Category_Code)
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    var
    SalesHeader: Record "Sales Header";
    begin
        SalesHeader.RESET;
        SalesHeader.SETRANGE(ALF_Category_Code,Rec.Category_Code);
        SalesHeader.ModifyAll(ALF_Category_Code,'');
    end;    
    trigger OnRename()
    begin
        
    end;
    
}