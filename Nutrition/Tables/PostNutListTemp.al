table 50106 PostNutListTemp
{
    DataClassification = ToBeClassified;
    TableType = Temporary;
    fields
    {
        field(1; CustomerNo; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; CustomerName; Text[120])
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
        field(6; Kj; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Kcal; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; Day; Date)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; CustomerNo, CustomerName, Protein, Carbohydrate, Kj, Kcal, Day)
        {
            Clustered = true;
        }
    }
}