report 50100 PostedNutritionReport
{
    UsageCategory = Administration;
    ApplicationArea = All;

    dataset
    {
        dataitem(DataItemName; PostNutListTemp)

        {
            column(CustomerNo; CustomerNo)
            {

            }
            column(CustomerName; CustomerName)
            {

            }
            column(Protein; Protein)
            {

            }
            column(Fat; Fat)
            {

            }
            column(Carbohydrate; Carbohydrate)
            {

            }
            column(Kj; Kj)
            {

            }
            column(Kcal; Kcal)
            {

            }
            column(Day; Day)
            {

            }
        }
    }
    var
        PostedNutritionQuery: query PostedNutritionQuery;
        PostNutListTemp: Record PostNutListTemp;

    trigger OnPreReport()

    begin
        PostedNutritionQuery.OPEN();

        PostNutListTemp.DELETEALL(FALSE);

        WHILE PostedNutritionQuery.READ DO BEGIN
            PostNutListTemp.INIT();
            PostNutListTemp.CustomerNo := PostedNutritionQuery.CustomerId;
            PostNutListTemp.CustomerName := PostedNutritionQuery.CustomerName;
            PostNutListTemp.Kcal := PostedNutritionQuery.Kcal;
            PostNutListTemp.Carbohydrate := PostedNutritionQuery.Carbohydrate;
            PostNutListTemp.Kj := PostedNutritionQuery.KJ;
            PostNutListTemp.Fat := PostedNutritionQuery.Fat;
            PostNutListTemp.Protein := PostedNutritionQuery.Protein;
            PostNutListTemp.Day := PostedNutritionQuery.DateOfDay;
            PostNutListTemp.INSERT();
        END;
        PostedNutritionQuery.CLOSE();

        PostNutListTemp.FINDFIRST();

    end;

}