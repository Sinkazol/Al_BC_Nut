page 50102 NutritionOrderSubform
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = NutritionLine;
    DelayedInsert = true;
    AutoSplitKey = true;
    RefreshOnActivate = true;

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
                field(NutritionNo; rec.NutritionNo)

                {
                    ApplicationArea = All;
                    Caption = 'Nutrition No.';

                }
                field(MacronutrienNo; rec.MacronutrienNo)
                {
                    ApplicationArea = All;
                    Caption = 'Macronutrien No.';
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;

                }
                field(Description; rec.Description)
                {
                    ApplicationArea = All;

                }
                field(Quantity; rec.Quantity)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;

                }
                field(Protein; rec.Protein)
                {
                    ApplicationArea = All;

                }
                field(Fat; rec.Fat)
                {
                    ApplicationArea = All;

                }
                field(UnitOfMesure; rec.UnitOfMesure)
                {
                    ApplicationArea = All;
                    Caption = 'Unit Of Mesure';

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