page 50101 "MacronutrientsList"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Macronutrients;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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