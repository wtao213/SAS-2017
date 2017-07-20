

proc logistic data= WORK.DEV2(obs=5000) simple plots(only)=(roc);
     class funded_amnt installment;
     model default(event='1') = funded_amnt installment total_rec_prncp total_rec_late_fee last_pymnt_amnt grade_num
           / link=logit technique=fisher
rsquare lackfit ctable stb expb corrb pcorr;
 code file=sascode;
run;


