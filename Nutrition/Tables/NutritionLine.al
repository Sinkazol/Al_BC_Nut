table 50103 NutritionLine
{
    DataClassification = ToBeClassified;
    DrillDownPageId = NutritionOrderSubform;

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; NutritionNo; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(3; MacronutrienNo; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Macronutrients;
            trigger OnValidate()
            begin
                CalculateValues();
            end;
        }
        field(4; Description; Text[120])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Macronutrients.Description where("No." = field(MacronutrienNo)));
            TableRelation = Macronutrients."No.";
        }
        field(5; Quantity; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                CalculateValues();
            end;
        }
        field(6; Protein; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(7; Fat; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(8; Carbohydrate; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(9; UnitOfMesure; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(10; KJ; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(11; Kcal; Decimal)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Pk; NutritionNo, "No.")
        {
            Clustered = true;
        }
    }

    local procedure CalculateValues()
    var
        MacronutrientRec: Record Macronutrients;
    begin
        IF Quantity <> 0 THEN
            if MacronutrientRec.Get(rec.MacronutrienNo) then begin
                rec.UnitOfMesure := MacronutrientRec.UnitOfMesure;
                rec.Protein := MacronutrientRec.Protein * Quantity;
                rec.Fat := MacronutrientRec.Fat * Quantity;
                rec.Carbohydrate := MacronutrientRec.Carbohydrate * Quantity;
                rec.KJ := MacronutrientRec.KJ * Quantity;
                rec.Kcal := MacronutrientRec.Kcal * Quantity;
            end;
    end;
}