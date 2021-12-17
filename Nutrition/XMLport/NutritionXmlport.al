xmlport 50100 "NutritionXmlport"
{
    Format = VariableText;
    Direction = Export;
    TextEncoding = UTF8;
    UseRequestPage = false;
    TableSeparator = '<NewLine>';
    schema
    {
        textelement(Root)
        {
            tableelement(Integer; Integer)
            {
                XmlName = 'NutritionHeader';
                SourceTableView = SORTING(Number) WHERE(Number = CONST(1));
                textelement(MacronutrientsNoTitle)
                {

                    trigger OnBeforePassVariable()
                    begin
                        MacronutrientsNoTitle := NutritionHeader.FieldCaption("No.");
                    end;
                }
                textelement(MacroCustomerIdTitle)
                {

                    trigger OnBeforePassVariable()
                    begin
                        MacroCustomerIdTitle := NutritionHeader.FieldCaption(CustomerId);
                    end;
                }
                textelement(MacroCustomerNameTitle)
                {

                    trigger OnBeforePassVariable()
                    begin
                        MacroCustomerNameTitle := NutritionHeader.FieldCaption(CustomerName);
                    end;
                }
                textelement(MacronutrientsDayTitle)
                {

                    trigger OnBeforePassVariable()
                    begin
                        MacronutrientsDayTitle := NutritionHeader.FieldCaption(Day);
                    end;
                }
                textelement(MacronutrientsSumFatTitle)
                {

                    trigger OnBeforePassVariable()
                    begin
                        MacronutrientsSumFatTitle := NutritionHeader.FieldCaption(SumFat);
                    end;
                }
                textelement(MacronutrientSumFatTitle)
                {

                    trigger OnBeforePassVariable()
                    begin
                        MacronutrientSumFatTitle := NutritionHeader.FieldCaption(SumFat);
                    end;
                }
                textelement(MacronutrientSumSumProteinTitle)
                {

                    trigger OnBeforePassVariable()
                    begin
                        MacronutrientSumSumProteinTitle := NutritionHeader.FieldCaption(SumProtein);
                    end;
                }
                textelement(MacronutrientsSumSumCarbohydrateTitle)
                {

                    trigger OnBeforePassVariable()
                    begin
                        MacronutrientsSumSumCarbohydrateTitle := NutritionHeader.FieldCaption(SumCarbohydrate);
                    end;
                }
                textelement(MacronutrientsSumKcalTitle)
                {

                    trigger OnBeforePassVariable()
                    begin
                        MacronutrientsSumKcalTitle := NutritionHeader.FieldCaption(SumKcal);
                    end;
                }

            }
            tableelement(NutritionHeader; NutritionHeader)
            {
                XmlName = 'NutritionHeader';
                RequestFilterFields = "No.";
                fieldelement(No; NutritionHeader."No.")
                {
                }
                fieldelement(CustomerId; NutritionHeader.CustomerId)
                {
                }
                fieldelement(CustomerName; NutritionHeader.CustomerName)
                {
                }
                fieldelement(Day; NutritionHeader.Day)
                {
                }
                fieldelement(SumProtein; NutritionHeader.SumProtein)
                {
                }
                fieldelement(SumFat; NutritionHeader.SumFat)
                {
                }
                fieldelement(SumCarbohydrate; NutritionHeader.SumCarbohydrate)
                {
                }
                fieldelement(SumKJ; NutritionHeader.SumKJ)
                {
                }
                fieldelement(SumKcal; NutritionHeader.SumKcal)
                {
                }
            }
        }
    }
}