page 50106 PostedNutritionOrderSubform
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PostNutritionLine;
    DelayedInsert = true;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; rec."No.")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(NutritionNo; rec.NutritionNo)

                {
                    ApplicationArea = All;
                    Caption = 'Nutrition No.';
                    Editable = false;

                }
                field(MacronutrienNo; rec.MacronutrienNo)
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'Macronutrien No.';

                }
                field(Description; rec.Description)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Quantity; rec.Quantity)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Protein; rec.Protein)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Fat; rec.Fat)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(UnitOfMesure; rec.UnitOfMesure)
                {
                    ApplicationArea = All;
                    Caption = 'Unit Of Mesure';
                    Editable = false;

                }
                field(KJ; rec.KJ)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Kcal; rec.Kcal)
                {
                    ApplicationArea = All;
                    Editable = false;

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