page 50105 PostedNutritionOrder
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PostNutritionHeader;
    DelayedInsert = true;
    RefreshOnActivate = true;
    InsertAllowed = false;


    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; rec."No.")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(CustomerId; rec.CustomerId)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(CustomerName; rec.CustomerName)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Day; rec.Day)
                {
                    ApplicationArea = All;
                    Caption = 'Date';
                    Editable = false;

                }
                field(Status; rec.Status)
                {
                    ApplicationArea = All;
                    Editable = false;


                }
            }
            group(Details)
            {
                part(NutritionOrderSubform; NutritionOrderSubform)
                {
                    ApplicationArea = All;
                    SubPageLink = NutritionNo = field("No.");
                    UpdatePropagation = Both;
                    Editable = false;
                }
            }
            group(SumMacronutrients)
            {
                field(SumProtein; rec.SumProtein)
                {
                    ApplicationArea = All;
                    Caption = 'Sum Protein';
                    Editable = false;

                }
                field(SumFat; rec.SumFat)
                {
                    ApplicationArea = All;
                    Caption = 'Sum Fat';
                    Editable = false;
                }
                field(SumCarbohydrate; rec.SumCarbohydrate)
                {
                    ApplicationArea = All;
                    Caption = 'Sum Carbohydrate ';
                    Editable = false;

                }
                field(SumKJ; rec.SumKJ)
                {
                    ApplicationArea = All;
                    Caption = 'Sum Kj';
                    Editable = false;

                }
                field(SumKcal; rec.SumKcal)
                {
                    ApplicationArea = All;
                    Caption = 'Sum Kcal';
                    Editable = false;

                }
            }
        }
    }


}