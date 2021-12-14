table 50102 NutritionHeader
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; CustomerId; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Id';
            TableRelation = Customer."No.";
            trigger OnValidate()

            begin
                if CustomerRecord.Get(CustomerId) then begin
                    CustomerName := CustomerRecord.Name;
                end;
            end;
        }
        field(3; CustomerName; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Name';

        }
        field(4; Day; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date';

        }
        field(5; Status; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Open,Close;

        }
        field(6; SumProtein; Decimal)
        {
            Caption = 'Sum Protein';
            FieldClass = FlowField;
            CalcFormula = sum(Macronutrients.Protein where("No." = field("No.")));

        }
        field(7; SumFat; Decimal)
        {
            Caption = 'Sum Fat';
            FieldClass = FlowField;
            CalcFormula = sum(Macronutrients.Fat where("No." = field("No.")));

        }
        field(8; SumCarbohydrate; Decimal)
        {
            Caption = 'Sum Carbohydrate';
            FieldClass = FlowField;
            CalcFormula = sum(Macronutrients.Carbohydrate where("No." = field("No.")));

        }
        field(9; SumKJ; Decimal)
        {
            Caption = 'Sum KJ';
            FieldClass = FlowField;
            CalcFormula = sum(Macronutrients.Carbohydrate where("No." = field("No.")));

        }
        field(10; SumKcal; Decimal)
        {
            Caption = 'Sum Carbohydrate';
            FieldClass = FlowField;
            CalcFormula = sum(Macronutrients.Carbohydrate where("No." = field("No.")));

        }
        field(11; DeleteAfterPost; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(12; IsPosted; Boolean)
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

    var
        CustomerRecord: Record Customer;

    trigger OnInsert()
    var
        NutritionSetupRec: Record NutritionSetup;
        NoSeriesManagment: Codeunit NoSeriesManagement;
    begin
        NutritionSetupRec.Get();
        "No." := NoSeriesManagment.GetNextNo(NutritionSetupRec.SeriesNoCode, Today, true);
    end;

}