page 50100 "MacronutrientsCard"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Macronutrients;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; rec."No.")
                {
                    ApplicationArea = All;

                }
                field(Description; rec.Description)
                {
                    ApplicationArea = All;

                }
                field(Protein; rec.Protein)
                {
                    ApplicationArea = All;

                }
                field(Fat; rec.Fat)
                {
                    ApplicationArea = All;

                }
                field(Carbohydrate; rec.Carbohydrate)
                {
                    ApplicationArea = All;

                }
                field(UnitOfMesure; rec.UnitOfMesure)
                {
                    ApplicationArea = All;

                }
                field(KJ; rec.KJ)
                {
                    ApplicationArea = All;

                }
                field(Kcal; rec.Kcal)
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