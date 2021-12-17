page 50104 NutritionSetup
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = NutritionSetup;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(SeriesNoCode; rec.SeriesNoCode)
                {
                    ApplicationArea = All;

                }
                field(PostedNoCode; rec.ArhivedNoCode)
                {
                    ApplicationArea = All;

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}