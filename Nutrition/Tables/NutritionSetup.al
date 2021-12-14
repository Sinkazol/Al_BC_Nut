table 50101 "NutritionSetup"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimeryKey; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; SeriesNoCode; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;

        }
        field(3; ArhivedNoCode; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;

        }
    }

    keys
    {
        key(PK; PrimeryKey)
        {
            Clustered = true;
        }
    }

}