page 50103 NutritionOrder
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = NutritionHeader;
    DelayedInsert = true;
    RefreshOnActivate = true;


    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; rec."No.")
                {
                    ApplicationArea = All;

                }
                field(CustomerId; rec.CustomerId)
                {
                    ApplicationArea = All;


                }
                field(CustomerName; rec.CustomerName)
                {
                    ApplicationArea = All;

                }
                field(Day; rec.Day)
                {
                    ApplicationArea = All;
                    Caption = 'Date';

                }
                field(Status; rec.Status)
                {
                    ApplicationArea = All;

                }
            }
            group(Details)
            {
                part(NutritionOrderSubform; NutritionOrderSubform)
                {
                    ApplicationArea = All;
                    SubPageLink = NutritionNo = field("No.");
                    UpdatePropagation = Both;
                }
            }
            group(SumMacronutrients)
            {
                field(SumProtein; rec.SumProtein)
                {
                    ApplicationArea = All;
                    Caption = 'Sum Protein';

                }
                field(SumFat; rec.SumFat)
                {
                    ApplicationArea = All;
                    Caption = 'Sum Fat';

                }
                field(SumCarbohydrate; rec.SumCarbohydrate)
                {
                    ApplicationArea = All;
                    Caption = 'Sum Carbohydrate ';

                }
                field(SumKJ; rec.SumKJ)
                {
                    ApplicationArea = All;
                    Caption = 'Sum Kj';

                }
                field(SumKcal; rec.SumKcal)
                {
                    ApplicationArea = All;
                    Caption = 'Sum Kcal';

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ReOpend)
            {
                ApplicationArea = All;
                Image = ReOpen;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Rec.Status := rec.Status::Open;
                    Modify();
                end;
            }
            action(Close)
            {
                ApplicationArea = All;
                Image = Closed;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    if rec.Day <> 0D then begin
                        Rec.Status := rec.Status::Close;
                        Modify()
                    end
                    else begin
                        Message('Please enter a date');
                    end;
                end;
            }
            action(Export)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = Export;

                trigger OnAction()
                begin
                    Xmlport.Run(50100, true, false);
                end;
            }
            action(Posted)
            {
                ApplicationArea = Basic, Suite;
                Ellipsis = true;
                Image = Post;
                Promoted = true;
                PromotedCategory = Process;
                ShortCutKey = 'Alt+F9';

                trigger OnAction()
                VAR
                    NutritionHEADER: Record NutritionHeader;
                    NutritionLine: Record NutritionLine;
                    PostedNutritionHeader: Record PostNutritionHeader;
                    PostedNutritionLine: Record PostNutritionLine;
                    ActionPostText: TextConst ENG = 'Document will be posted. Are you continue?';
                    DeleteAfterBookingQuestion: TextConst ENU = 'Do you want to delete the selected nutrition after successful bookment?';
                    DeleteRecordAfterBooking: Boolean;
                    Answer: Boolean;
                    NutritionSetupRec: Record NutritionSetup;
                    NoSeriesManagment: Codeunit NoSeriesManagement;
                BEGIN
                    if rec.Status = rec.Status::Close then begin

                        PostedNutritionHeader.TransferFields(Rec);
                        PostedNutritionHeader."No." := rec."No.";
                        PostedNutritionHeader.Insert();
                        NutritionLine.SetRange("No.", NutritionLine."No.");
                        if NutritionLine.FindSet() then begin
                            repeat
                                PostedNutritionLine.TransferFields(NutritionLine);
                                PostedNutritionLine.NutritionNo := PostedNutritionHeader."No.";
                                PostedNutritionLine.Insert();
                                if Answer = true then NutritionLine.Delete();
                            until NutritionLine.Next() = 0;

                        end;
                        if Answer = true then rec.Delete();
                    end else begin
                        Error('You must close the nutrition order!');
                    end;
                end;




            }
        }
    }
}