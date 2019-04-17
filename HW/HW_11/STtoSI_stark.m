%STtoSI_stark(ins, lbs) converts inches and pounds to cm and kg.
function  [SI_height, SI_weight] = STtoSI_stark(ins, lbs)

    SI_height = ins * 2.54;
    SI_weight = lbs * 0.45359237;

end