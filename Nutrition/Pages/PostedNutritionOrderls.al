page 50107 PostedNutritionOrderls
{
    PageType = API;
    Caption = 'apiPageName';
    APIPublisher = 'publisherName';
    APIGroup = 'groupName';
    EntityName = 'entityName';
    EntitySetName = 'entitySetName';
    SourceTable = PostNutritionHeader;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(CustomerId; rec.CustomerId)
                {

                }
                field(CustomerName; rec.CustomerName)
                {

                }
                field(Day; rec.Day)
                {
                    Caption = 'Date';

                }


            }
        }
    }
}