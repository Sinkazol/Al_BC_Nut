table 50100 Macronutrients
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Description; Text[120])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Protein; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(4; Fat; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(5; Carbohydrate; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(6; UnitOfMesure; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Unit of Measure";

        }
        field(7; KJ; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(8; Kcal; Decimal)
        {
            DataClassification = ToBeClassified;


        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}