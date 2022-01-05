query 50100 PostedNutritionQuery
{
    QueryType = Normal;
    OrderBy = descending(DateOfDay);

    elements
    {
        dataitem(PostNutritionHeader; PostNutritionHeader)
        {
            column(Document_No; "No.")
            {

            }
            column(CustomerId; CustomerId)
            {

            }
            column(CustomerName; CustomerName)
            {

            }
            column(DateOfDay; Day)
            {

            }
            dataitem(NutLine; PostNutritionLine)
            {
                DataItemLink = NutritionNo = PostNutritionHeader."No.";
                column(Description; Description)
                {
                }

                column(Quantity; Quantity)
                {
                }
                column(Protein; Protein)
                {
                    Method = Sum;

                }
                column(Carbohydrate; Carbohydrate)
                {
                    Method = Sum;

                }
                column(Fat; Fat)
                {
                }
                column(KJ; KJ)
                {
                }
                column(Kcal; Kcal)
                {
                }
            }

        }
    }
}