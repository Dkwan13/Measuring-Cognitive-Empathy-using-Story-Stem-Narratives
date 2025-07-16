// IMPORT DATAFILE //

// Recode missing values 999 //

mvdecode _all, mv(999)

// Recode child sex so 1 = Female, 2 = Male //

encode child_sex_5fu, generate(child_sex_num)

recode child_sex_num (1=1 "Female") (2=2 "Male"), generate(child_sex_recoded)
(0 differences between child_sex_num and child_sex_recoded)

------------------------------------------------------------------------------

// Gender and Empathy //

ttest final_empathy_score, by (inf_gender)

// Age and Empathy //

pwcorr final_empathy_score age_5fu, sig

// Prosocial behavior and Empathy // 

*Parent SDQ, *Teacher SDQ, *Child Story Stems

pwcorr pro_sdqp_5fu final_empathy_score, sig 
pwcorr pro_sdqt_5fu final_empathy_score, sig
pwcorr psobp_total_5 final_empathy_score, sig

// CUTS and Empathy //

pwcorr cut_totalscore_5fu final_empathy_score, sig

// Externalizing behavior and Empathy //

pwcorr cbcl_ext_5fu final_empathy_score, sig 

// Interrnalizing behavior and Empathy //

pwcorr cbcl_int_5fu final_empathy_score, sig
