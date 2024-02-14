table 50200 "Customer Detail"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer Number"; Code[20])
        {
            DataClassification = ToBeClassified;

            Editable = false;

        }

        field(10; "For Number Series"; Code[20])
        {
            TableRelation = "No. Series";
        }

        field(2; "Customer NAme"; Text[20])
        {
            DataClassification = ToBeClassified;


        }

        field(3; "Age"; Integer)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if age <= 10 then begin
                    rec.Discount := true;
                    Message('You are a child. so, You get a Discount');
                end
                else
                    if Age >= 10 then begin
                        rec.Discount := false;
                        Message('Your are an adult.So, you dont get discount');
                    end

            end;


        }

        field(4; "Gender"; Option)
        {
            OptionMembers = " ","Female","Male","Gay";

        }

        field(5; "Adress"; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(6; "Contact NUmber"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(11; "Doctor Code"; Code[20])
        {
            TableRelation = "Doctor Detail";

            trigger OnValidate()
            var
                name: Record "Doctor Detail";
                Doc: Record "Doctor Detail";

            begin
                if name.Get("Doctor Code") then
                    Rec."Doctor Name" := name."Doctor Name(DR.)"
                else
                    ;

            end;



        }




        field(7; "Doctor Name"; Code[20])
        {


            // FieldClass = FlowField;
            // CalcFormula = lookup("Doctor Detail"."Doctor Name(DR.)" where("Doctor Number" = field("Doctor Code")));
            Editable = false;

            // trigger OnValidate()
            // var
            //     Doc: Record "Doctor Detail";
            // begin
            //     if Doc.Get("Customer Number") then
            //         rec."Doctor's Speciality" := Doc.Speciality

            // end;






        }

        field(8; "Doctor's Speciality"; Option)
        {

            OptionMembers = " ","Dermatology","Infectious disease","Ophthalmology","Obstetrics and gynecology","Cardiology","Endocrinology","Gastroenterology";
            FieldClass = FlowField;
            CalcFormula = lookup("Doctor Detail".Speciality where("Doctor Name(DR.)" = field("Doctor Name")));
            Editable = false;


        }

        field(12; "Discount"; Boolean)
        {
            DataClassification = ToBeClassified;


        }

        field(13; "Register Time"; Datetime)
        {
            DataClassification = ToBeClassified;
        }

        field(14; "Problem"; Text[20])
        {
            DataClassification = ToBeClassified;
        }

    }


    keys
    {
        key(Key1; "Customer Number")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        IsCodeunit: Codeunit "NoSeriesManagement";   //Calling NoseriesManagement 
        Sales_Rec: Record "Sales & Receivables Setup";

    trigger OnInsert()
    begin
        if Rec."Customer Number" = '' then
            Sales_Rec.Get();
        IsCodeunit.InitSeries(Sales_Rec."Order Nos.", Sales_Rec."Customer Nos.", 0D, "Customer Number", "For Number Series")

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;


}