/********************************************************
*    HEIC-2010 calculation for CARTaGENE's              *  
*      Diet History Questionnaire Data                  *
*    Author: Hannah Yang Han                            *
*    Email: yang.han3@mail.mcgill.ca                    *
*    Please feel to modify it and share with me         *
*      if you feel the code can be improved,            *
*      i'd really appreciate that!!                     *
*********************************************************/

data HEI_category;set nomissing;

/*HEI-C 2010 Food Group*/

tfrtvgtbls_serv=CSSE_TOTAL_VEGFRUIT;
/*greens and beans*/
/*greens and beans groups correspond to dark green vegetables in CFG 2007*/
/*greens and beans inlcude: cooked greens, raw greens, string beans, peas, 
broccoli, brussels sprout, asparagus, peppers,dark green lettuce*/

/*cooked greens*/
if NUT_34=0 or NUT_34=. or NUT_34=999 then ckdgrens_f= 0;
if NUT_34=1 or NUT_34=2 then ckdgrens_f=0.02;  /*less than once per month*/
if NUT_34=3 or NUT_34=4 then ckdgrens_f=0.08; /*1-2 times per month*/
if NUT_34=5 or NUT_34=6 then ckdgrens_f=0.17; /*1-2 times per week"*/
if NUT_34=7 then ckdgrens_f=0.50; /*3-4 times per week"*/
if NUT_34=8 or NUT_34=9 then ckdgrens_f=0.9; /*almost daily or daily*/
if NUT_34=10 then ckdgrens_f=2.2; /*2 or more times per day*/
if NUT_34A=0 or NUT_34A=. or NUT_34A=999 then ckdgrens_servpt=0;
if NUT_34A=1 then ckdgrens_servpt=0.5;
if NUT_34A=2 then ckdgrens_servpt=1;
if NUT_34A=3 then ckdgrens_servpt=1.5;
ckdgrens_serv = ckdgrens_f * ckdgrens_servpt;

/*raw greens*/
if NUT_35=0 or NUT_35=. or NUT_35=999 then rwgrens_f= 0;
if NUT_35=1 or NUT_35=2 then rwgrens_f=0.02;  /*less than once per month*/
if NUT_35=3 or NUT_35=4 then rwgrens_f=0.08; /*1-2 times per month*/
if NUT_35=5 or NUT_35=6 then rwgrens_f=0.17; /*1-2 times per week"*/
if NUT_35=7 then rwgrens_f=0.50; /*3-4 times per week"*/
if NUT_35=8 or NUT_35=9 then rwgrens_f=0.9; /*almost daily or daily*/
if NUT_35=10 then rwgrens_f=2.2; /*2 or more times per day*/
if NUT_35A=. or NUT_35A=999 then rwgrens_servpt=0;
if NUT_35A=1 then rwgrens_servpt=0.5;
if NUT_35A=2 then rwgrens_servpt=1;
if NUT_35A=3 then rwgrens_servpt=1.5;
rwgrens_serv = rwgrens_f * rwgrens_servpt;

/*string beans*/
if NUT_39=0 or NUT_39=. or NUT_39=999 then stngbns_f= 0;
if NUT_39=1 or NUT_39=2 then stngbns_f=0.02;  /*less than once per month*/
if NUT_39=3 or NUT_39=4 then stngbns_f=0.08; /*1-2 times per month*/
if NUT_39=5 or NUT_39=6 then stngbns_f=0.17; /*1-2 times per week"*/
if NUT_39=7 then stngbns_f=0.50; /*3-4 times per week"*/
if NUT_39=8 or NUT_39=9 then stngbns_f=0.9; /*almost daily or daily*/
if NUT_39=10 then stngbns_f=2.2; /*2 or more times per day*/
if NUT_39A=0 or NUT_39A=. or NUT_39A=999 then stngbns_servpt=0;
if NUT_39A=1 then stngbns_servpt=0.5;
if NUT_39A=2 then stngbns_servpt=1;
if NUT_39A=3 then stngbns_servpt=1.5;
stngbns_serv = stngbns_f * stngbns_servpt;

/*peas*/
if NUT_40=0 or NUT_40=. or NUT_40=999 then ps_f= 0;
if NUT_40=1 or NUT_40=2 then ps_f=0.02;  /*less than once per month*/
if NUT_40=3 or NUT_40=4 then ps_f=0.08; /*1-2 times per month*/
if NUT_40=5 or NUT_40=6 then ps_f=0.17; /*1-2 times per week"*/
if NUT_40=7 then ps_f=0.50; /*3-4 times per week"*/
if NUT_40=8 or NUT_40=9 then ps_f=0.9; /*almost daily or daily*/
if NUT_40=10 then ps_f=2.2; /*2 or more times per day*/
if NUT_40A=0 or NUT_40A=. or NUT_40A=999 then ps_servpt=0;
if NUT_40A=1 then ps_servpt=0.5;
if NUT_40A=2 then ps_servpt=1;
if NUT_40A=3 then ps_servpt=1.5;
ps_serv = ps_f * ps_servpt;

/*broccoli*/
if NUT_42=0 or NUT_42=. or NUT_42=999 or NUT_42=99 then brccl_f= 0;
if NUT_42=1 or NUT_42=2 then brccl_f=0.02;  /*less than once per month*/
if NUT_42=3 or NUT_42=4 then brccl_f=0.08; /*1-2 times per month*/
if NUT_42=5 or NUT_42=6 then brccl_f=0.17; /*1-2 times per week"*/
if NUT_42=7 then brccl_f=0.50; /*3-4 times per week"*/
if NUT_42=8 or NUT_42=9 then brccl_f=0.9; /*almost daily or daily*/
if NUT_42=10 then brccl_f=2.2; /*2 or more times per day*/
if NUT_42A=0 or NUT_42A=. or NUT_42A=999 OR NUT_42A=99 then brccl_servpt=0;
if NUT_42A=1 then brccl_servpt=0.5;
if NUT_42A=2 then brccl_servpt=1;
if NUT_42A=3 then brccl_servpt=1.5;
brccl_serv = brccl_f * brccl_servpt;

/*brussel sprout*/
if NUT_44=0 or NUT_44=. or NUT_44=999 then brsslsprt_f= 0;
if NUT_44=1 or NUT_44=2 then brsslsprt_f=0.02;  /*less than once per month*/
if NUT_44=3 or NUT_44=4 then brsslsprt_f=0.08; /*1-2 times per month*/
if NUT_44=5 or NUT_44=6 then brsslsprt_f=0.17; /*1-2 times per week"*/
if NUT_44=7 then brsslsprt_f=0.50; /*3-4 times per week"*/
if NUT_44=8 or NUT_44=9 then brsslsprt_f=0.9; /*almost daily or daily*/
if NUT_44=10 then brsslsprt_f=2.2; /*2 or more times per day*/
if NUT_44A=0 or NUT_44A=. or NUT_44A=999 then brsslsprt_servpt=0;
if NUT_44A=1 then brsslsprt_servpt=0.5;
if NUT_44A=2 then brsslsprt_servpt=1;
if NUT_44A=3 then brsslsprt_servpt=1.5;
brsslsprt_serv = brsslsprt_f * brsslsprt_servpt;

/*asparagus*/
if NUT_45=0 or NUT_45=. or NUT_45=999 then sprgs_f= 0;
if NUT_45=1 or NUT_45=2 then sprgs_f=0.02;  /*less than once per month*/
if NUT_45=3 or NUT_45=4 then sprgs_f=0.08; /*1-2 times per month*/
if NUT_45=5 or NUT_45=6 then sprgs_f=0.17; /*1-2 times per week"*/
if NUT_45=7 then sprgs_f=0.50; /*3-4 times per week"*/
if NUT_45=8 or NUT_45=9 then sprgs_f=0.9; /*almost daily or daily*/
if NUT_45=10 then sprgs_f=2.2; /*2 or more times per day*/
if NUT_45A=0 or NUT_45A=. or NUT_45A=999 then sprgs_servpt=0;
if NUT_45A=1 then sprgs_servpt=0.5;
if NUT_45A=2 then sprgs_servpt=1;
if NUT_45A=3 then sprgs_servpt=1.5;
sprgs_serv = sprgs_f * sprgs_servpt;

/*peppers*/
if NUT_51=0 or NUT_51=. or NUT_51=999 then ppprs_f= 0;
if NUT_51=1 or NUT_51=2 then ppprs_f=0.02;  /*less than once per month*/
if NUT_51=3 or NUT_51=4 then ppprs_f=0.08; /*1-2 times per month*/
if NUT_51=5 or NUT_51=6 then ppprs_f=0.17; /*1-2 times per week"*/
if NUT_51=7 then ppprs_f=0.50; /*3-4 times per week"*/
if NUT_51=8 or NUT_51=9 then ppprs_f=0.9; /*almost daily or daily*/
if NUT_51=10 then ppprs_f=2.2; /*2 or more times per day*/
if NUT_51A=0 or NUT_51A=. or NUT_51A=999 then ppprs_servpt=0;
if NUT_51A=1 then ppprs_servpt=0.5;
if NUT_51A=2 then ppprs_servpt=1;
if NUT_51A=3 then ppprs_servpt=1.5;
ppprs_serv = ppprs_f * ppprs_servpt;

/*dark green lettuce*/
if NUT_53=0 or NUT_53=. or NUT_53=999 then lttc_f= 0;
if NUT_53=1 or NUT_53=2 then lttc_f=0.02;  /*less than once per month*/
if NUT_53=3 or NUT_53=4 then lttc_f=0.08; /*1-2 times per month*/
if NUT_53=5 or NUT_53=6 then lttc_f=0.17; /*1-2 times per week"*/
if NUT_53=7 then lttc_f=0.50; /*3-4 times per week"*/
if NUT_53=8 or NUT_53=9 then lttc_f=0.9; /*almost daily or daily*/
if NUT_53=10 then lttc_f=2.2; /*2 or more times per day*/
if NUT_53A=0 or NUT_53A=. or NUT_53A=999 then lttc_servpt=0;
if NUT_53A=1 then lttc_servpt=0.5;
if NUT_53A=2 then lttc_servpt=1;
if NUT_53A=3 then lttc_servpt=1.5;
lttc_serv = lttc_f * lttc_servpt;
if NUT_53B=0 or NUT_53B=. or NUT_53B=999 or NUT_35B=99 then drkgrnlttc_serv=0;
if NUT_53B=1 then drkgrnlttc_serv= lttc_serv *0.25;
if NUT_53B=2 then drkgrnlttc_serv= lttc_serv *0.5;
if NUT_53B=3 then drkgrnlttc_serv= lttc_serv *0.75;
if NUT_53B=4 then drkgrnlttc_serv= lttc_serv *1;

tgrensbns_serv = ckdgrens_serv + rwgrens_serv + stngbns_serv + ps_serv + brccl_serv + brsslsprt_serv + sprgs_serv + ppprs_serv + drkgrnlttc_serv;

/*whole fruit*/
twfrt_serv = CSSE_WHOLE_FRUIT;

/*whole grain*/
twlgrn_serv = CSSE_WGRAIN;

/*dairy*/
tdry_serv = CSSE_MILK_ALT;

/*seafood and plant protein*/

/*legume*/
/*legume include beans, dried beans, other beans, peanut butter, soy burger, tofu */
/*peanut is included in nut and seed since this DFQ does not discriminate peanut from other nuts*/

if NUT_64=0 or NUT_64=. or NUT_64=999 then bkdbns_f= 0;
if NUT_64=1 or NUT_64=2 then bkdbns_f=0.02;  /*less than once per month*/
if NUT_64=3 or NUT_64=4 then bkdbns_f=0.08; /*1-2 times per month*/
if NUT_64=5 or NUT_64=6 then bkdbns_f=0.17; /*1-2 times per week"*/
if NUT_64=7 then bkdbns_f=0.50; /*3-4 times per week"*/
if NUT_64=8 or NUT_64=9 then bkdbns_f=0.9; /*almost daily or daily*/
if NUT_64=10 then bkdbns_f=2.2; /*2 or more times per day*/
if NUT_64A=0 or NUT_64A=. or NUT_64A=999 then bkdbns_servpt=0;
if NUT_64A=1 then bkdbns_servpt=0.5;
if NUT_64A=2 then bkdbns_servpt=1;
if NUT_64A=3 then bkdbns_servpt=1.5;
bkdbns_serv = bkdbns_f * bkdbns_servpt;

if NUT_65=0 or NUT_65=. or NUT_65=999 then othbns_f= 0;
if NUT_65=1 or NUT_65=2 then othbns_f=0.02;  /*less than once per month*/
if NUT_65=3 or NUT_65=4 then othbns_f=0.08; /*1-2 times per month*/
if NUT_65=5 or NUT_65=6 then othbns_f=0.17; /*1-2 times per week"*/
if NUT_65=7 then othbns_f=0.50; /*3-4 times per week"*/
if NUT_65=8 or NUT_65=9 then othbns_f=0.9; /*almost daily or daily*/
if NUT_65=10 then othbns_f=2.2; /*2 or more times per day*/
if NUT_65A=0 or NUT_65A=. or NUT_65A=999 then othbns_servpt=0;
if NUT_65A=1 then othbns_servpt=0.5;
if NUT_65A=2 then othbns_servpt=1;
if NUT_65A=3 then othbns_servpt=1.5;
othbns_serv = othbns_f * othbns_servpt;

soup = NUT_110A + NUT_110B;
if soup=. then sps_f=0;
if soup=0 then sps_f=0;
if soup=999 then sps_f=0;
if soup=1998 then sps_f=0;
if soup=1000 then sps_f=0.02; /*less than once per month*/
if soup=1003 then sps_f=0.05; /*1-2 time per month*/
if soup=1004 then sps_f=0.07; /*half time per week*/
if soup=1005 then sps_f=0.14; /*once per week*/
if soup=1 or soup=2 or soup=3 or soup=4 or soup = 5 then sps_f=0.02;
if soup=6 or soup=7 or soup=8 then sps_f=0.08;
if soup=9 or soup=10 or soup=11 or soup=12 then sps_f=0.17;
if soup=13 or soup=14 or soup=15 then sps_f=0.5;
if soup=16 or soup=17 or soup=18 then sps_f=0.9;
if soup=19 or soup=20 then sps_f=2.2;
if NUT_110C=0 or NUT_110C=. or NUT_110C=999 then sps_servpt=0;
if NUT_110C=1 then sps_servpt=0.5;
if NUT_110C=2 then sps_servpt=1;
if NUT_110C=3 then sps_servpt=1.5;
sps_serv = sps_f * sps_servpt;
if NUT_110D=0 or NUT_110D=. or NUT_110D=999 then lntlsps_serv=0;
if NUT_110D=1 then lntlsps_serv = sps_serv * 0.25;
if NUT_110D=2 then lntlsps_serv = sps_serv * 0.5;
if NUT_110D=3 then lntlsps_serv = sps_serv * 0.75;
if NUT_110D=4 then lntlsps_serv = sps_serv;  

if NUT_77=0 or NUT_77=. or NUT_77=999 then pntbttr_f= 0;
if NUT_77=1 or NUT_77=2 then pntbttr_f=0.02;  /*less than once per month*/
if NUT_77=3 or NUT_77=4 then pntbttr_f=0.08; /*1-2 times per month*/
if NUT_77=5 or NUT_77=6 then pntbttr_f=0.17; /*1-2 times per week"*/
if NUT_77=7 then pntbttr_f=0.50; /*3-4 times per week"*/
if NUT_77=8 or NUT_77=9 then pntbttr_f=0.9; /*almost daily or daily*/
if NUT_77=10 then pntbttr_f=2.2; /*2 or more times per day*/
if NUT_77A=0 or NUT_77A=. or NUT_77A=999 then pntbttr_servpt=0;
if NUT_77A=1 then pntbttr_servpt=0.5;
if NUT_77A=2 then pntbttr_servpt=1;
if NUT_77A=3 then pntbttr_servpt=1.5;
pntbttr_serv = pntbttr_f * pntbttr_servpt;

if NUT_108=0 or NUT_108=. or NUT_108=999 then tf_f= 0;
if NUT_108=1 or NUT_108=2 then tf_f=0.02;  /*less than once per month*/
if NUT_108=3 or NUT_108=4 then tf_f=0.08; /*1-2 times per month*/
if NUT_108=5 or NUT_108=6 then tf_f=0.17; /*1-2 times per week"*/
if NUT_108=7 then tf_f=0.50; /*3-4 times per week"*/
if NUT_108=8 or NUT_108=9 then tf_f=0.9; /*almost daily or daily*/
if NUT_108=10 then tf_f=2.2; /*2 or more times per day*/
if NUT_108A=0 or NUT_108A=. or NUT_108A=999 then tf_servpt= 0;
if NUT_108A=1 then tf_servpt=0.5;
if NUT_108A=2 then tf_servpt=1;
if NUT_108A=3 then tf_servpt=1.5;
tf_serv = tf_f * tf_servpt;

if NUT_109=0 or NUT_109=. or NUT_109=999 then smtsbst_f= 0;
if NUT_109=1 or NUT_109=2 then smtsbst_f=0.02;  /*less than once per month*/
if NUT_109=3 or NUT_109=4 then smtsbst_f=0.08; /*1-2 times per month*/
if NUT_109=5 or NUT_109=6 then smtsbst_f=0.17; /*1-2 times per week"*/
if NUT_109=7 then smtsbst_f=0.50; /*3-4 times per week"*/
if NUT_109=8 or NUT_109=9 then smtsbst_f=0.9; /*almost daily or daily*/
if NUT_109=10 then smtsbst_f=2.2; /*2 or more times per day*/
if NUT_109A=0 or NUT_109A=. or NUT_109A=999 then smtsbst_servpt= 0;
if NUT_109A=1 then smtsbst_servpt=0.5;
if NUT_109A=2 then smtsbst_servpt=1;
if NUT_109A=3 then smtsbst_servpt=1.5;
smtsbst_serv = smtsbst_f * smtsbst_servpt;

lgm_serv=  bkdbns_serv + othbns_serv + lntlsps_serv + pntbttr_serv + tf_serv + smtsbst_serv;

/*fish*/
if NUT_82=0 or NUT_82=. or NUT_82=999 then cnndtn_f= 0;
if NUT_82=1 or NUT_82=2 then cnndtn_f=0.02;  /*less than once per month*/
if NUT_82=3 or NUT_82=4 then cnndtn_f=0.08; /*1-2 times per month*/
if NUT_82=5 or NUT_82=6 then cnndtn_f=0.17; /*1-2 times per week"*/
if NUT_82=7 then cnndtn_f=0.50; /*3-4 times per week"*/
if NUT_82=8 or NUT_82=9 then cnndtn_f=0.9; /*almost daily or daily*/
if NUT_82=10 then cnndtn_f=2.2; /*2 or more times per day*/
if NUT_82A=0 or NUT_82A=. or NUT_82A=999 then cnndtn_servpt=0;
if NUT_82A=1 then cnndtn_servpt=0.5;
if NUT_82A=2 then cnndtn_servpt=1;
if NUT_82A=3 then cnndtn_servpt=1.5;
cnndtn_serv = cnndtn_f * cnndtn_servpt;

if NUT_102=0 or NUT_102=. or NUT_102=999 then sllfs_f= 0;
if NUT_102=1 or NUT_102=2 then sllfs_f=0.02;  /*less than once per month*/
if NUT_102=3 or NUT_102=4 then sllfs_f=0.08; /*1-2 times per month*/
if NUT_102=5 or NUT_102=6 then sllfs_f=0.17; /*1-2 times per week"*/
if NUT_102=7 then sllfs_f=0.50; /*3-4 times per week"*/
if NUT_102=8 or NUT_102=9 then sllfs_f=0.9; /*almost daily or daily*/
if NUT_102=10 then sllfs_f=2.2; /*2 or more times per day*/
if NUT_102A=0 or NUT_102A=. or NUT_102A=999 then sllfs_servpt= 0;
if NUT_102A=1 then sllfs_servpt=0.5;
if NUT_102A=2 then sllfs_servpt=1;
if NUT_102A=3 then sllfs_servpt=1.5;
sllfs_serv = sllfs_f * sllfs_servpt;

if NUT_103=0 or NUT_103=. or NUT_103=999 then drklfs_f= 0;
if NUT_103=1 or NUT_103=2 then drklfs_f=0.02;  /*less than once per month*/
if NUT_103=3 or NUT_103=4 then drklfs_f=0.08; /*1-2 times per month*/
if NUT_103=5 or NUT_103=6 then drklfs_f=0.17; /*1-2 times per week"*/
if NUT_103=7 then drklfs_f=0.50; /*3-4 times per week"*/
if NUT_103=8 or NUT_103=9 then drklfs_f=0.9; /*almost daily or daily*/
if NUT_103=10 then drklfs_f=2.2; /*2 or more times per day*/
if NUT_103A=0 or NUT_103A=. or NUT_103A=999 then drklfs_servpt= 0;
if NUT_103A=1 then drklfs_servpt=0.5;
if NUT_103A=2 then drklfs_servpt=1;
if NUT_103A=3 then drklfs_servpt=1.5;
drklfs_serv = drklfs_f * drklfs_servpt;

if NUT_105=0 or NUT_105=. or NUT_105=999 then whtlnfs_f= 0;
if NUT_105=1 or NUT_105=2 then whtlnfs_f=0.02;  /*less than once per month*/
if NUT_105=3 or NUT_105=4 then whtlnfs_f=0.08; /*1-2 times per month*/
if NUT_105=5 or NUT_105=6 then whtlnfs_f=0.17; /*1-2 times per week"*/
if NUT_105=7 then whtlnfs_f=0.50; /*3-4 times per week"*/
if NUT_105=8 or NUT_105=9 then whtlnfs_f=0.9; /*almost daily or daily*/
if NUT_105=10 then whtlnfs_f=2.2; /*2 or more times per day*/
if NUT_105A=0 or NUT_105A=. or NUT_105A=999 then whtlnfs_servpt= 0;
if NUT_105A=1 then whtlnfs_servpt=0.5;
if NUT_105A=2 then whtlnfs_servpt=1;
if NUT_105A=3 then whtlnfs_servpt=1.5;
whtlnfs_serv = whtlnfs_f * whtlnfs_servpt;

/*nuts and seeds*/

if NUT_119=0 or NUT_119=. or NUT_119=999 then nts_f= 0;
if NUT_119=1 or NUT_119=2 then nts_f=0.02;  /*less than once per month*/
if NUT_119=3 or NUT_119=4 then nts_f=0.08; /*1-2 times per month*/
if NUT_119=5 or NUT_119=6 then nts_f=0.17; /*1-2 times per week"*/
if NUT_119=7 then nts_f=0.50; /*3-4 times per week"*/
if NUT_119=8 or NUT_119=9 then nts_f=0.9; /*almost daily or daily*/
if NUT_119=10 then nts_f=2.2; /*2 or more times per day*/
if NUT_119A=0 or NUT_119A=. or NUT_119A=999 then nts_servpt= 0;
if NUT_119A=1 then nts_servpt=0.5;
if NUT_119A=2 then nts_servpt=1;
if NUT_119A=3 then nts_servpt=1.5;
nts_serv = nts_f * nts_servpt;

if NUT_120=0 or NUT_120=. or NUT_120=999 then flxsds_f= 0;
if NUT_120=1 or NUT_120=2 then flxsds_f=0.02;  /*less than once per month*/
if NUT_120=3 or NUT_120=4 then flxsds_f=0.08; /*1-2 times per month*/
if NUT_120=5 or NUT_120=6 then flxsds_f=0.17; /*1-2 times per week"*/
if NUT_120=7 then flxsds_f=0.50; /*3-4 times per week"*/
if NUT_120=8 or NUT_120=9 then flxsds_f=0.9; /*almost daily or daily*/
if NUT_120=10 then flxsds_f=2.2; /*2 or more times per day*/
if NUT_120A=0 or NUT_120A=. or NUT_120A=999 then flxsds_servpt= 0;
if NUT_120A=1 then flxsds_servpt=0.5;
if NUT_120A=2 then flxsds_servpt=1;
if NUT_120A=3 then flxsds_servpt=1.5;
flxsds_serv = flxsds_f * flxsds_servpt;

if NUT_121=0 or NUT_121=. or NUT_121=999 then thrsds_f= 0;
if NUT_121=1 or NUT_121=2 then thrsds_f=0.02;  /*less than once per month*/
if NUT_121=3 or NUT_121=4 then thrsds_f=0.08; /*1-2 times per month*/
if NUT_121=5 or NUT_121=6 then thrsds_f=0.17; /*1-2 times per week"*/
if NUT_121=7 then thrsds_f=0.50; /*3-4 times per week"*/
if NUT_121=8 or NUT_121=9 then thrsds_f=0.9; /*almost daily or daily*/
if NUT_121=10 then thrsds_f=2.2; /*2 or more times per day*/
if NUT_121A=0 or NUT_121A=. or NUT_121A=999 then thrsds_servpt= 0;
if NUT_121A=1 then thrsds_servpt=0.5;
if NUT_121A=2 then thrsds_servpt=1;
if NUT_121A=3 then thrsds_servpt=1.5;
thrsds_serv = thrsds_f * thrsds_servpt;


/*total seafood and plant protein inlcude legume.
!!!!!legume will be added during calculation of seafood score due to legume allocation */
tsfdplprot_serv = cnndtn_serv + sllfs_serv + drklfs_serv + whtlnfs_serv + nts_serv + flxsds_serv + thrsds_serv ;

/*total protein*/
tprot_serv = CSSE_MEAT_ALT;
 
/*empty calories*/
if NUT_58=0 or NUT_58=. or NUT_58=999 then bkdptts_f= 0;
if NUT_58=1 or NUT_58=2 then bkdptts_f=0.02;  /*less than once per month*/
if NUT_58=3 or NUT_58=4 then bkdptts_f=0.08; /*1-2 times per month*/
if NUT_58=5 or NUT_58=6 then bkdptts_f=0.17; /*1-2 times per week"*/
if NUT_58=7 then bkdptts_f=0.50; /*3-4 times per week"*/
if NUT_58=8 or NUT_58=9 then bkdptts_f=0.9; /*almost daily or daily*/
if NUT_58=10 then bkdptts_f=2.2; /*2 or more times per day*/
if NUT_58B=0 or NUT_58B=. or NUT_58B=999 then srcrmptt_f=0; /*to calculate number of serving of sour cream added to potatoes*/
if NUT_58B=1 then srcrmptt_f=0.25 * bkdptts_f;
if NUT_58B=2 then srcrmptt_f=0.50 * bkdptts_f;
if NUT_58B=3 then srcrmptt_f=0.75 * bkdptts_f;
if NUT_58B=4 then srcrmptt_f= bkdptts_f;
if NUT_58C=. or NUT_58C=999 or NUT_58C=0 then srcrmptt_servpt=0;
if NUT_58C=1 then srcrmptt_servpt=0.5;
if NUT_58C=2 then srcrmptt_servpt=1;
if NUT_58C=3 then srcrmptt_servpt=1.5;
srcrmptt_serv = srcrmptt_f * srcrmptt_servpt;

if NUT_58D=0 or NUT_58D=. or NUT_58D=999 then mrgrnptt_f=0; /*to calculate number of serving of margarine added to potatoes*/
if NUT_58D=1 then mrgrnptt_f=0.25;
if NUT_58D=2 then mrgrnptt_f=0.50;
if NUT_58D=3 then mrgrnptt_f=0.75;
if NUT_58D=4 then mrgrnptt_f=1.00;
if NUT_58E=0 or NUT_58E=. or NUT_58E=999 then bttrptt_f=0; /*to calculate number of serving of butter added to potatoes*/
if NUT_58E=1 then bttrptt_f=0.25;
if NUT_58E=2 then bttrptt_f=0.50;
if NUT_58E=3 then bttrptt_f=0.75;
if NUT_58E=4 then bttrptt_f=1.00;
if NUT_58F=0 or NUT_58F=. or NUT_58F=999 then mrgrnbttrptt_servpt=0;
if NUT_58F=1 then mrgrnbttrptt_servpt=0.5;
if NUT_58F=2 then mrgrnbttrptt_servpt=1;
if NUT_58F=3 then mrgrnbttrptt_servpt=1.5;
mrgrnptt_serv = bkdptts_f * mrgrnptt_f * mrgrnbttrptt_servpt;
bttrptt_serv = bkdptts_f * bttrptt_f * mrgrnbttrptt_servpt;

if NUT_68=0 or NUT_68=. or NUT_68=999 then pnck_f= 0;
if NUT_68=1 or NUT_68=2 then pnck_f=0.02;  /*less than once per month*/
if NUT_68=3 or NUT_68=4 then pnck_f=0.08; /*1-2 times per month*/
if NUT_68=5 or NUT_68=6 then pnck_f=0.17; /*1-2 times per week"*/
if NUT_68=7 then pnck_f=0.50; /*3-4 times per week"*/
if NUT_68=8 or NUT_68=9 then pnck_f=0.9; /*almost daily or daily*/
if NUT_68=10 then pnck_f=2.2; /*2 or more times per day*/
if NUT_68B=0 or NUT_68B=. or NUT_68B=999 then mrgrnpnck_f=0; /*to calculate number of serving of margarine added to pancakes and waffles */
if NUT_68B=1 then mrgrnpnck_f=0.25;
if NUT_68B=2 then mrgrnpnck_f=0.50;
if NUT_68B=3 then mrgrnpnck_f=0.75;
if NUT_68B=4 then mrgrnpnck_f=1.00;
if NUT_68C=0 or NUT_68C=. or NUT_68C=999 then bttrpnck_f=0; /*to calculate number of serving of butter added to pancakes and waffles */
if NUT_68C=1 then bttrpnck_f=0.25;
if NUT_68C=2 then bttrpnck_f=0.50;
if NUT_68C=3 then bttrpnck_f=0.75;
if NUT_68C=4 then bttrpnck_f=1.00;
if NUT_68D=0 or NUT_68D=. or NUT_68D=999 then mrgrnbttrpnck_servpt=0;
if NUT_68D=1 then mrgrnbttrpnck_servpt=0.5;
if NUT_68D=2 then mrgrnbttrpnck_servpt=1;
if NUT_68D=3 then mrgrnbttrpnck_servpt=1.5;
if NUT_68E=0 or NUT_68E=. OR NUT_68E=999 then srppnck_f=0; /*to calculate number of serving of syrup added to pancakes and waffles */
if NUT_68E=1 then srppnck_f=0.25;
if NUT_68E=2 then srppnck_f=0.50;
if NUT_68E=3 then srppnck_f=0.75;
if NUT_68E=4 then srppnck_f=1.00;
if NUT_68F=0 or NUT_68F=. OR NUT_68F=999 then srppnck_servpt=0;
if NUT_68F=1 then srppnck_servpt=0.5;
if NUT_68F=2 then srppnck_servpt=1;
if NUT_68F=3 then srppnck_servpt=1.5;
mrgrnpnck_serv = pnck_f * mrgrnpnck_f * mrgrnbttrpnck_servpt;
bttrpnck_serv = pnck_f * bttrpnck_f * mrgrnbttrpnck_servpt;
srppnck_serv = pnck_f * srppnck_f * srppnck_servpt;

if NUT_73=0 or NUT_73=. or NUT_73=999 then bgls_f= 0;
if NUT_73=1 or NUT_73=2 then bgls_f=0.02;  /*less than once per month*/
if NUT_73=3 or NUT_73=4 then bgls_f=0.08; /*1-2 times per month*/
if NUT_73=5 or NUT_73=6 then bgls_f=0.17; /*1-2 times per week"*/
if NUT_73=7 then bgls_f=0.50; /*3-4 times per week"*/
if NUT_73=8 or NUT_73=9 then bgls_f=0.9; /*almost daily or daily*/
if NUT_73=10 then bgls_f=2.2; /*2 or more times per day*/
if NUT_73C=0 or NUT_73C=. or NUT_73C=999 then mrgrnbgls_f=0; /*to calculate number of serving of margarine added to bagels or english muffins */
if NUT_73C=1 then mrgrnbgls_f=0.25;
if NUT_73C=2 then mrgrnbgls_f=0.50;
if NUT_73C=3 then mrgrnbgls_f=0.75;
if NUT_73C=4 then mrgrnbgls_f=1.00;
if NUT_73D=0 or NUT_73D=. or NUT_73D=999 then bttrbgls_f=0; /*to calculate number of serving of butter added to bagels or english muffins */
if NUT_73D=1 then bttrbgls_f=0.25;
if NUT_73D=2 then bttrbgls_f=0.50;
if NUT_73D=3 then bttrbgls_f=0.75;
if NUT_73D=4 then bttrbgls_f=1.00;
if NUT_73E=0 or NUT_73E=. or NUT_73E=999 then mrgrnbttrbgls_servpt=0;
if NUT_73E=1 then mrgrnbttrbgls_servpt=0.5;
if NUT_73E=2 then mrgrnbttrbgls_servpt=1;
if NUT_73E=3 then mrgrnbttrbgls_servpt=1.5;
if NUT_73F=0 or NUT_73F=. or NUT_73F=999 then crmchsbgls_f=0; /*to calculate number of serving of cream chesse added to bagels or english muffins */
if NUT_73F=1 then crmchsbgls_f=0.25;
if NUT_73F=2 then crmchsbgls_f=0.50;
if NUT_73F=3 then crmchsbgls_f=0.75;
if NUT_73F=4 then crmchsbgls_f=1.00;
if NUT_73G=0 or NUT_73G=. or NUT_73G=999 then crmchsbgls_servpt=0;
if NUT_73G=1 then crmchsbgls_servpt=0.5;
if NUT_73G=2 then crmchsbgls_servpt=1;
if NUT_73G=3 then crmchsbgls_servpt=1.5;
mrgrnbgls_serv = bgls_f * mrgrnbgls_f * mrgrnbttrbgls_servpt;
bttrbgls_serv = bgls_f * bttrbgls_f * mrgrnbttrbgls_servpt;
crmchsbgls_serv = bgls_f * crmchsbgls_f * crmchsbgls_servpt;

if NUT_74=0 or NUT_74=. or NUT_74=999 then brdsndwch_f= 0;
if NUT_74=1 or NUT_74=2 then brdsndwch_f=0.02;  /*less than once per month*/
if NUT_74=3 or NUT_74=4 then brdsndwch_f=0.08; /*1-2 times per month*/
if NUT_74=5 or NUT_74=6 then brdsndwch_f=0.17; /*1-2 times per week"*/
if NUT_74=7 then brdsndwch_f=0.50; /*3-4 times per week"*/
if NUT_74=8 or NUT_74=9 then brdsndwch_f=0.9; /*almost daily or daily*/
if NUT_74=10 then brdsndwch_f=2.2; /*2 or more times per day*/
if NUT_74E=0 or NUT_74E=. or NUT_74E=999 then mrgrnbrdsndwch_f=0; /*to calculate number of serving of margarine added to breads, rolls, flatbreads as part of sandwiches */
if NUT_74E=1 then mrgrnbrdsndwch_f=0.25;
if NUT_74E=2 then mrgrnbrdsndwch_f=0.50;
if NUT_74E=3 then mrgrnbrdsndwch_f=0.75;
if NUT_74E=4 then mrgrnbrdsndwch_f=1.00;
if NUT_74F=0 or NUT_74F=. or NUT_74F=999 then bttrbrdsndwch_f=0; /*to calculate number of serving of butter added to breads, rolls, flatbreads as part of sandwiches */
if NUT_74F=1 then bttrbrdsndwch_f=0.25;
if NUT_74F=2 then bttrbrdsndwch_f=0.50;
if NUT_74F=3 then bttrbrdsndwch_f=0.75;
if NUT_74F=4 then bttrbrdsndwch_f=1.00;
if NUT_74G=0 or NUT_74G=. or NUT_74G=999 then mrgrnbttrbrdsndwch_servpt=0;
if NUT_74G=1 then mrgrnbttrbrdsndwch_servpt=0.5;
if NUT_74G=2 then mrgrnbttrbrdsndwch_servpt=1;
if NUT_74G=3 then mrgrnbttrbrdsndwch_servpt=1.5;
mrgrnbrdsndwch_serv = brdsndwch_f * mrgrnbrdsndwch_f + mrgrnbttrbrdsndwch_servpt;
bttrbrdsndwch_serv = brdsndwch_f * bttrbrdsndwch_f + mrgrnbttrbrdsndwch_servpt;

if NUT_75=0 or NUT_75=. or NUT_75=999 then brdsrlls_f= 0;
if NUT_75=1 or NUT_75=2 then brdsrlls_f=0.02;  /*less than once per month*/
if NUT_75=3 or NUT_75=4 then brdsrlls_f=0.08; /*1-2 times per month*/
if NUT_75=5 or NUT_75=6 then brdsrlls_f=0.17; /*1-2 times per week"*/
if NUT_75=7 then brdsrlls_f=0.50; /*3-4 times per week"*/
if NUT_75=8 or NUT_75=9 then brdsrlls_f=0.9; /*almost daily or daily*/
if NUT_75=10 then brdsrlls_f=2.2; /*2 or more times per day*/
if NUT_75C=0 or NUT_75C=. or NUT_75C=999 then mrgrnbrdsrlls_f=0; /*to calculate number of serving of margarine added to breads and rolls not as part of sandwiches */
if NUT_75C=1 then mrgrnbrdsrlls_f=0.25;
if NUT_75C=2 then mrgrnbrdsrlls_f=0.50;
if NUT_75C=3 then mrgrnbrdsrlls_f=0.75;
if NUT_75C=4 then mrgrnbrdsrlls_f=1.00;
if NUT_75D=0 or NUT_75D=. or NUT_75D=999 then bttrbrdsrlls_f=0; /*to calculate number of serving of butter added to breads and rolls not as part of sandwiches */
if NUT_75D=1 then bttrbrdsrlls_f=0.25;
if NUT_75D=2 then bttrbrdsrlls_f=0.50;
if NUT_75D=3 then bttrbrdsrlls_f=0.75;
if NUT_75D=4 then bttrbrdsrlls_f=1.00;
if NUT_75E=0 or NUT_75E=. or NUT_75E=999 then mrgrnbttrbrdsrlls_servpt=0;
if NUT_75E=1 then mrgrnbttrbrdsrlls_servpt=0.5;
if NUT_75E=2 then mrgrnbttrbrdsrlls_servpt=1;
if NUT_75E=3 then mrgrnbttrbrdsrlls_servpt=1.5;
if NUT_75F=0 or NUT_75F=. or NUT_75F=999 then crmchsbrdsrlls_f=0; /*to calculate number of serving of cream chesse added to breads and rolls not as part of sandwiches */
if NUT_75F=1 then crmchsbrdsrlls_f=0.25;
if NUT_75F=2 then crmchsbrdsrlls_f=0.50;
if NUT_75F=3 then crmchsbrdsrlls_f=0.75;
if NUT_75F=4 then crmchsbrdsrlls_f=1.00;
if NUT_75G=0 or NUT_75G=. or NUT_75G=999 then crmchsbrdsrlls_servpt=0;
if NUT_75G=1 then crmchsbrdsrlls_servpt=0.5;
if NUT_75G=2 then crmchsbrdsrlls_servpt=1;
if NUT_75G=3 then crmchsbrdsrlls_servpt=1.5;
mrgrnbrdsrlls_serv = brdsrlls_f * mrgrnbrdsrlls_f * mrgrnbttrbrdsrlls_servpt;
bttrbrdsrlls_serv = brdsrlls_f * bttrbrdsrlls_f * mrgrnbttrbrdsrlls_servpt;
crmchsbrdsrlls_serv = brdsrlls_f * crmchsbrdsrlls_f * crmchsbrdsrlls_servpt;

if NUT_67=0 or NUT_67=. or NUT_67=999 then rice_f= 0;
if NUT_67=1 or NUT_67=2 then rice_f=0.02;  /*less than once per month*/
if NUT_67=3 or NUT_67=4 then rice_f=0.08; /*1-2 times per month*/
if NUT_67=5 or NUT_67=6 then rice_f=0.17; /*1-2 times per week"*/
if NUT_67=7 then rice_f=0.50; /*3-4 times per week"*/
if NUT_67=8 or NUT_67=9 then rice_f=0.9; /*almost daily or daily*/
if NUT_67=10 then rice_f=2.2; /*2 or more times per day*/
if NUT_67B=0 or NUT_67B=. or NUT_67B=999 then bttrmrgrnrice_serv=0; /*since only serving frequency is provided, 1 serving is assumed*/
if NUT_67B=1 then bttrmrgrnrice_serv=0.25 * rice_f;
if NUT_67B=2 then bttrmrgrnrice_serv=0.5 * rice_f;
if NUT_67B=3 then bttrmrgrnrice_serv=0.75 * rice_f;
if NUT_67B=4 then bttrmrgrnrice_serv=rice_f;

if NUT_72=0 or NUT_72=. or NUT_72=999 then pstspghtt_f= 0;
if NUT_72=1 or NUT_72=2 then pstspghtt_f=0.02;  /*less than once per month*/
if NUT_72=3 or NUT_72=4 then pstspghtt_f=0.08; /*1-2 times per month*/
if NUT_72=5 or NUT_72=6 then pstspghtt_f=0.17; /*1-2 times per week"*/
if NUT_72=7 then pstspghtt_f=0.50; /*3-4 times per week"*/
if NUT_72=8 or NUT_72=9 then pstspghtt_f=0.9; /*almost daily or daily*/
if NUT_72=10 then pstspghtt_f=2.2; /*2 or more times per day*/
if NUT_72D=0 or NUT_72D=. or NUT_72D=999 then bttrmrgrnpstspghtt_serv=0; /*since only serving frequency is provided, 1 serving is assumed*/
if NUT_72D=1 then bttrmrgrnpstspghtt_serv=0.25 * pstspghtt_f;
if NUT_72D=2 then bttrmrgrnpstspghtt_serv=0.5 * pstspghtt_f;
if NUT_72D=3 then bttrmrgrnpstspghtt_serv=0.75 * pstspghtt_f;
if NUT_72D=4 then bttrmrgrnpstspghtt_serv=pstspghtt_f;

if NUT_106=0 or NUT_106=. or NUT_106=999 then bttrmrgrncook_serv= 0; /*since only serving frequency is provided, 1 serving is assumed per consumption*/
if NUT_106=1 or NUT_106=2 then bttrmrgrncook_serv=0.02;  /*less than once per month*/
if NUT_106=3 or NUT_106=4 then bttrmrgrncook_serv=0.08; /*1-2 times per month*/
if NUT_106=5 or NUT_106=6 then bttrmrgrncook_serv=0.17; /*1-2 times per week"*/
if NUT_106=7 then bttrmrgrncook_serv=0.50; /*3-4 times per week"*/
if NUT_106=8 or NUT_106=9 then bttrmrgrncook_serv=0.9; /*almost daily or daily*/
if NUT_106=10 then bttrmrgrncook_serv=2.2; /*2 or more times per day*/

oatmeal = NUT_17A + NUT_17B;
if oatmeal=. then tml_f=0;
if oatmeal=0 then tml_f=0;
if oatmeal=999 then tml_f=0;
if oatmeal=1998 then tml_f=0;
if oatmeal=1000 then tml_f=0.02; /*less than once per month*/
if oatmeal=1003 then tml_f=0.05; /*1-2 time per month*/
if oatmeal=1004 then tml_f=0.07; /*half time per week*/
if oatmeal=1005 then tml_f=0.14; /*once per week*/
if oatmeal=1 or oatmeal=2 or oatmeal=3 or oatmeal=4 or oatmeal = 5 then tml_f=0.02;
if oatmeal=6 or oatmeal=7 or oatmeal=8 then tml_f=0.08;
if oatmeal=9 or oatmeal=10 or oatmeal=11 or oatmeal=12 then tml_f=0.17;
if oatmeal=13 or oatmeal=14 or oatmeal=15 then tml_f=0.5;
if oatmeal=16 or oatmeal=17 or oatmeal=18 then tml_f=0.9;
if oatmeal=19 or oatmeal=20 then tml_f=2.2;
if NUT_17D=0 or NUT_17D=. or NUT_17D=999 then bttrmrgrntml_serv=0; /*since only serving frequency is provided, 1 serving is assumed per consumption*/
if NUT_17D=1 then bttrmrgrntml_serv = tml_f * 0.25;
if NUT_17D=2 then bttrmrgrntml_serv = tml_f * 0.5;
if NUT_17D=3 then bttrmrgrntml_serv = tml_f * 0.75;
if NUT_17D=4 then bttrmrgrntml_serv = tml_f ;

bttrmrgrn_serv = 0.5*(bttrmrgrnrice_serv + bttrmrgrnpstspghtt_serv + bttrmrgrncook_serv + bttrmrgrntml_serv);

mrgrn_serv = mrgrnptt_serv + mrgrnpnck_serv + mrgrnbgls_serv + mrgrnbrdsndwch_serv + mrgrnbrdsrlls_serv + bttrmrgrn_serv;
bttr_serv = bttrptt_serv + bttrpnck_serv + bttrbgls_serv + bttrbrdsndwch_serv + bttrbrdsrlls_serv + bttrmrgrn_serv;
srcrm_serv = srcrmptt_serv;
crmch_serv = crmchsbgls_serv + crmchsbrdsrlls_serv;
srp_serv = srppnck_serv; 


if NUT_144A=0 or NUT_144A=. OR NUT_144A=999 then tmrgrn_serv=mrgrn_serv;
if NUT_144A=1 then tmrgrn_serv=mrgrn_serv * 0.25 * 0.5 + mrgrn_serv * 0.75;
if NUT_144A=2 then tmrgrn_serv=mrgrn_serv * 0.5 * 0.5 + mrgrn_serv * 0.5;
if NUT_144A=3 then tmrgrn_serv=mrgrn_serv * 0.75 * 0.5 + mrgrn_serv * 0.25;
if NUT_144A=4 then tmrgrn_serv=mrgrn_serv * 0.5;

if NUT_145A=0 or NUT_145A=. or NUT_145A=999 then tbttr_serv=bttr_serv;
if NUT_145A=1 then tbttr_serv=bttr_serv * 0.25 * 0.5 + bttr_serv * 0.75;
if NUT_145A=2 then tbttr_serv=bttr_serv * 0.5 * 0.5 + bttr_serv * 0.5;
if NUT_145A=3 then tbttr_serv=bttr_serv * 0.75 * 0.5 + bttr_serv * 0.25;
if NUT_145A=4 then tbttr_serv=bttr_serv * 0.5;

if NUT_147A=0 or NUT_147A=. or NUT_147A=999 then tsrcrm_serv=srcrm_serv;
if NUT_147A=1 then tsrcrm_serv=srcrm_serv * 0.25 * 0.5 + srcrm_serv * 0.75;
if NUT_147A=2 then tsrcrm_serv=srcrm_serv * 0.5 * 0.5 + srcrm_serv * 0.50;
if NUT_147A=3 then tsrcrm_serv=srcrm_serv * 0.75 * 0.5 + srcrm_serv * 0.25;
if NUT_147A=4 then tsrcrm_serv=srcrm_serv * 0.5;

if NUT_148A=0 or NUT_148A=. or NUT_148A=999 then tcrmch_serv=crmch_serv;
if NUT_148A=1 then tcrmch_serv=crmch_serv * 0.25 * 0.5 + crmch_serv * 0.75;
if NUT_148A=2 then tcrmch_serv=crmch_serv * 0.5 * 0.5 + crmch_serv * 0.5;
if NUT_148A=3 then tcrmch_serv=crmch_serv * 0.75 * 0.5 + crmch_serv * 0.25;
if NUT_148A=4 then tcrmch_serv=crmch_serv * 0.5;


if NUT_5=0 or NUT_5=. or NUT_5=999 then thrfrtdrks_f=0;
if NUT_5=1 then thrfrtdrks_f=0.02; /*less than once per month*/
if NUT_5=2 then thrfrtdrks_f=0.08; /*2-3 times per month*/
if NUT_5=3 then thrfrtdrks_f=0.17; /*1-2 times per week*/
if NUT_5=4 then thrfrtdrks_f=0.5; /*3-4 glass, can or bottle per week*/
if NUT_5=5 or NUT_5=6 then thrfrtdrks_f=0.9; /*almost daily or daily*/
if NUT_5=7 then thrfrtdrks_f=2.2; /*2-3 times per day*/
if NUT_5=8 then thrfrtdrks_f=4.5; /*4-5 times per day*/
if NUT_5=9 then thrfrtdrks_f=6; /*6 or more times per day*/
if NUT_5A=0 or NUT_5A=. or NUT_5A=999 then thrfrtdrks_servpt=0;
if NUT_5A=1 then thrfrtdrks_servpt=0.5;
if NUT_5A=2 then thrfrtdrks_servpt=1;
if NUT_5A=3 then thrfrtdrks_servpt=1.5;
thrfrtdrks_serv = thrfrtdrks_f * thrfrtdrks_servpt;
if NUT_5B=0 or NUT_5B=. or NUT_5B=999 then tthrfrtdrks_serv=thrfrtdrks_serv;
if NUT_5B=1 then tthrfrtdrks_serv=thrfrtdrks_serv * 0.75;
if NUT_5B=2 then tthrfrtdrks_serv=thrfrtdrks_serv * 0.5;
if NUT_5B=3 then tthrfrtdrks_serv=thrfrtdrks_serv * 0.25;
if NUT_5B=4 then tthrfrtdrks_serv=thrfrtdrks_serv * 0;

if NUT_7=0 or NUT_7=. or NUT_7=999 then chcltmlk_f=0;
if NUT_7=1 then chcltmlk_f=0.02; /*less than once per month*/
if NUT_7=2 then chcltmlk_f=0.08; /*2-3 times per month*/
if NUT_7=3 then chcltmlk_f=0.17; /*1-2 times per week*/
if NUT_7=4 then chcltmlk_f=0.5; /*3-4 glass, can or bottle per week*/
if NUT_7=5 or NUT_7=6 then chcltmlk_f=0.9; /*almost daily or daily*/
if NUT_7=7 then chcltmlk_f=2.2; /*2-3 times per day*/
if NUT_7=8 then chcltmlk_f=4.5; /*4-5 times per day*/
if NUT_7=9 then chcltmlk_f=6; /*6 or more times per day*/
if NUT_7A=0 or NUT_7A=. or NUT_7A=999 then chcltmlk_servpt=0;
if NUT_7A=1 then chcltmlk_servpt=0.5;
if NUT_7A=2 then chcltmlk_servpt=1;
if NUT_7A=3 then chcltmlk_servpt=1.5;
chcltmlk_serv = chcltmlk_f * chcltmlk_servpt;
if NUT_7B=0 or NUT_7B=999 then tchcltmlk_serv=chcltmlk_serv;
if NUT_7B=. then tchcltmlk_serv=0;
if NUT_7B=1 then tchcltmlk_serv=chcltmlk_serv * 0.25 * 0.5 + chcltmlk_serv * 0.75;
if NUT_7B=2 then tchcltmlk_serv=chcltmlk_serv * 0.5 * 0.5 + chcltmlk_serv * 0.5;
if NUT_7B=3 then tchcltmlk_serv=chcltmlk_serv * 0.75 * 0.5 + chcltmlk_serv * 0.25;
if NUT_7B=4 then tchcltmlk_serv=chcltmlk_serv * 0.5;

if NUT_8=0 or NUT_8=. or NUT_8=999 then mlkshks_f=0;
if NUT_8=1 then mlkshks_f=0.02; /*less than once per month*/
if NUT_8=2 then mlkshks_f=0.08; /*2-3 times per month*/
if NUT_8=3 then mlkshks_f=0.17; /*1-2 times per week*/
if NUT_8=4 then mlkshks_f=0.5; /*3-4 glass, can or bottle per week*/
if NUT_8=5 or NUT_8=6 then mlkshks_f=0.9; /*almost daily or daily*/
if NUT_8=7 then mlkshks_f=2.2; /*2-3 times per day*/
if NUT_8=8 then mlkshks_f=4.5; /*4-5 times per day*/
if NUT_8=9 then mlkshks_f=6; /*6 or more times per day*/
if NUT_8A=0 or NUT_8A=. or NUT_8A=999 then mlkshks_servpt=0;
if NUT_8A=1 then mlkshks_servpt=0.5;
if NUT_8A=2 then mlkshks_servpt=1;
if NUT_8A=3 then mlkshks_servpt=1.5;
mlkshks_serv = mlkshks_f * mlkshks_servpt;

if NUT_10=0 or NUT_10=. or NUT_10=999 then sftdrnks_f=0;
if NUT_10=1 then sftdrnks_f=0.02; /*less than once per month*/
if NUT_10=2 then sftdrnks_f=0.08; /*2-3 times per month*/
if NUT_10=3 then sftdrnks_f=0.17; /*1-2 times per week*/
if NUT_10=4 then sftdrnks_f=0.5; /*3-4 glass, can or bottle per week*/
if NUT_10=5 or NUT_10=6 then sftdrnks_f=0.9; /*almost daily or daily*/
if NUT_10=7 then sftdrnks_f=2.2; /*2-3 times per day*/
if NUT_10=8 then sftdrnks_f=4.5; /*4-5 times per day*/
if NUT_10=9 then sftdrnks_f=6; /*6 or more times per day*/
if NUT_10A=0 or NUT_10A=. or NUT_10A=999 then sftdrnks_servpt=0;
if NUT_10A=1 then sftdrnks_servpt=0.5;
if NUT_10A=2 then sftdrnks_servpt=1;
if NUT_10A=3 then sftdrnks_servpt=1.5;
sftdrnks_serv = sftdrnks_f * sftdrnks_servpt;
if NUT_10B=0 or NUT_10B=999 then tsftdrnks_serv=sftdrnks_serv;
if NUT_10B=. then tsftdrnks_serv=0;
if NUT_10B=1 then tsftdrnks_serv=sftdrnks_serv * 0.75;
if NUT_10B=2 then tsftdrnks_serv=sftdrnks_serv * 0.5;
if NUT_10B=3 then tsftdrnks_serv=sftdrnks_serv * 0.25;
if NUT_10B=4 then tsftdrnks_serv=sftdrnks_serv * 0;

if NUT_11A + NUT_11B=. then sprtsdrnks_f=0;
if NUT_11A + NUT_11B=999 then sprtsdrnks_f=0;
if NUT_11A + NUT_11B=1998 then sprtsdrnks_f=0;
if NUT_11A + NUT_11B=0 then sprtsdrnks_f=0;
if NUT_11A + NUT_11B=1 or NUT_11A + NUT_11B=2 or NUT_11A + NUT_11B=3 then sprtsdrnks_f=0.02; /*less than once per month*/
if NUT_11A + NUT_11B=4 or NUT_11A + NUT_11B=5 then sprtsdrnks_f=0.08; /* 2-3 times per month*/
if NUT_11A + NUT_11B=6 or NUT_11A + NUT_11B=7 then sprtsdrnks_f=0.17; /* 1-2 times per week*/
if NUT_11A + NUT_11B=8 or NUT_11A + NUT_11B=9 then sprtsdrnks_f=0.5; /*3-4 times per week*/
if NUT_11A + NUT_11B=10 or NUT_11A + NUT_11B=11 or NUT_11A + NUT_11B=12 then sprtsdrnks_f=0.9; /*almost daily or daily*/
if NUT_11A + NUT_11B=13 or NUT_11A + NUT_11B=14 then sprtsdrnks_f=2.2; /*2-3 times per day*/
if NUT_11A + NUT_11B=15 or NUT_11A + NUT_11B=16 then sprtsdrnks_f=4.5; /*4-5 times per day*/
if NUT_11A + NUT_11B=17 or NUT_11A + NUT_11B=18 then sprtsdrnks_f=6; /*6 or more times per day*/
if NUT_11C=0 or NUT_11C=. or NUT_11C=999 then sprtsdrnks_servpt=0;
if NUT_11C=1 then sprtsdrnks_servpt=0.5;
if NUT_11C=2 then sprtsdrnks_servpt=1;
if NUT_11C=3 then sprtsdrnks_servpt=1.5;
sprtsdrnks_serv = sprtsdrnks_f * sprtsdrnks_servpt;

if NUT_12=0 or NUT_12=. or NUT_12=999 then nrgydrnks_f=0;
if NUT_12=1 then nrgydrnks_f=0.02; /*less than once per month*/
if NUT_12=2 then nrgydrnks_f=0.08; /*2-3 times per month*/
if NUT_12=3 then nrgydrnks_f=0.17; /*1-2 times per week*/
if NUT_12=4 then nrgydrnks_f=0.5; /*3-4 glass, can or bottle per week*/
if NUT_12=5 or NUT_12=6 then nrgydrnks_f=0.9; /*almost daily or daily*/
if NUT_12=7 then nrgydrnks_f=2.2; /*2-3 times per day*/
if NUT_12=8 then nrgydrnks_f=4.5; /*4-5 times per day*/
if NUT_12=9 then nrgydrnks_f=6; /*6 or more times per day*/
if NUT_12A=0 or NUT_12A=. or NUT_12A=999 then nrgydrnks_servpt=0;
if NUT_12A=1 then nrgydrnks_servpt=0.5;
if NUT_12A=2 then nrgydrnks_servpt=1;
if NUT_12A=3 then nrgydrnks_servpt=1.5;
nrgydrnks_serv = nrgydrnks_f * nrgydrnks_servpt;

if NUT_76=0 or NUT_76=. or NUT_76=999 then jmjllybgls_f= 0;
if NUT_76=1 or NUT_76=2 then jmjllybgls_f=0.02;  /*less than once per month*/
if NUT_76=3 or NUT_76=4 then jmjllybgls_f=0.08; /*1-2 times per month*/
if NUT_76=5 or NUT_76=6 then jmjllybgls_f=0.17; /*1-2 times per week"*/
if NUT_76=7 then jmjllybgls_f=0.50; /*3-4 times per week"*/
if NUT_76=8 or NUT_76=9 then jmjllybgls_f=0.9; /*almost daily or daily*/
if NUT_76=10 then jmjllybgls_f=2.2; /*2 or more times per day*/
if NUT_76A=. or NUT_76A=0 or NUT_76A=999 then jmjllybgls_servpt=0;
if NUT_76A=1 then jmjllybgls_servpt=0.5;
if NUT_76A=2 then jmjllybgls_servpt=1;
if NUT_76A=3 then jmjllybgls_servpt=1.5;
jmjllybgls_serv = jmjllybgls_f * jmjllybgls_servpt;

if NUT_126=0 or NUT_126=. or NUT_126=999 then frzygrt_f= 0;
if NUT_126=1 or NUT_126=2 then frzygrt_f=0.02;  /*less than once per month*/
if NUT_126=3 or NUT_126=4 then frzygrt_f=0.08; /*1-2 times per month*/
if NUT_126=5 or NUT_126=6 then frzygrt_f=0.17; /*1-2 times per week"*/
if NUT_126=7 then frzygrt_f=0.50; /*3-4 times per week"*/
if NUT_126=8 or NUT_126=9 then frzygrt_f=0.9; /*almost daily or daily*/
if NUT_126=10 then frzygrt_f=2.2; /*2 or more times per day*/
if NUT_126A=0 or NUT_126A=. or NUT_126A=999 then frzygrt_servpt= 0;
if NUT_126A=1 then frzygrt_servpt=0.5;
if NUT_126A=2 then frzygrt_servpt=1;
if NUT_126A=3 then frzygrt_servpt=1.5;
frzygrt_serv = frzygrt_f * frzygrt_servpt;

if NUT_127=0 or NUT_127=. or NUT_127=999 then iccrm_f= 0;
if NUT_127=1 or NUT_127=2 then iccrm_f=0.02;  /*less than once per month*/
if NUT_127=3 or NUT_127=4 then iccrm_f=0.08; /*1-2 times per month*/
if NUT_127=5 or NUT_127=6 then iccrm_f=0.17; /*1-2 times per week"*/
if NUT_127=7 then iccrm_f=0.50; /*3-4 times per week"*/
if NUT_127=8 or NUT_127=9 then iccrm_f=0.9; /*almost daily or daily*/
if NUT_127=10 then iccrm_f=2.2; /*2 or more times per day*/
if NUT_127A=0 or NUT_127A=. or NUT_127A=999 then iccrm_servpt= 0;
if NUT_127A=1 then iccrm_servpt=0.5;
if NUT_127A=2 then iccrm_servpt=1;
if NUT_127A=3 then iccrm_servpt=1.5;
iccrm_serv = iccrm_f * iccrm_servpt;
if NUT_127B=0 or NUT_127B=. or NUT_127B=999 then ticcrm_serv = iccrm_serv;
if NUT_127B=1 then ticcrm_serv=iccrm_serv * 0.25 * 0.5 + iccrm_serv * 0.75;
if NUT_127B=2 then ticcrm_serv=iccrm_serv * 0.5 * 0.5 + iccrm_serv * 0.5;
if NUT_127B=3 then ticcrm_serv=iccrm_serv * 0.75 * 0.5 + iccrm_serv * 0.25;
if NUT_127B=4 then ticcrm_serv=iccrm_serv * 0.5;

if NUT_128=0 or NUT_128=. or NUT_128=999 then cake_f= 0;
if NUT_128=1 or NUT_128=2 then cake_f=0.02;  /*less than once per month*/
if NUT_128=3 or NUT_128=4 then cake_f=0.08; /*1-2 times per month*/
if NUT_128=5 or NUT_128=6 then cake_f=0.17; /*1-2 times per week"*/
if NUT_128=7 then cake_f=0.50; /*3-4 times per week"*/
if NUT_128=8 or NUT_128=9 then cake_f=0.9; /*almost daily or daily*/
if NUT_128=10 then cake_f=2.2; /*2 or more times per day*/
if NUT_128A=0 or NUT_128A=. or NUT_128A=999 then cake_servpt= 0;
if NUT_128A=1 then cake_servpt=0.5;
if NUT_128A=2 then cake_servpt=1;
if NUT_128A=3 then cake_servpt=1.5;
cake_serv = cake_f * cake_servpt;

if NUT_129=0 or NUT_129=. or NUT_129=999 then ckbrwn_f= 0;
if NUT_129=1 or NUT_129=2 then ckbrwn_f=0.02;  /*less than once per month*/
if NUT_129=3 or NUT_129=4 then ckbrwn_f=0.08; /*1-2 times per month*/
if NUT_129=5 or NUT_129=6 then ckbrwn_f=0.17; /*1-2 times per week"*/
if NUT_129=7 then ckbrwn_f=0.50; /*3-4 times per week"*/
if NUT_129=8 or NUT_129=9 then ckbrwn_f=0.9; /*almost daily or daily*/
if NUT_129=10 then ckbrwn_f=2.2; /*2 or more times per day*/
if NUT_129A=0 or NUT_129A=. or NUT_129A=999 then ckbrwn_servpt= 0;
if NUT_129A=1 then ckbrwn_servpt=0.5;
if NUT_129A=2 then ckbrwn_servpt=1;
if NUT_129A=3 then ckbrwn_servpt=1.5;
ckbrwn_serv = ckbrwn_f * ckbrwn_servpt;

if NUT_130=0 or NUT_130=. or NUT_130=999 then dghnts_f= 0;
if NUT_130=1 or NUT_130=2 then dghnts_f=0.02;  /*less than once per month*/
if NUT_130=3 or NUT_130=4 then dghnts_f=0.08; /*1-2 times per month*/
if NUT_130=5 or NUT_130=6 then dghnts_f=0.17; /*1-2 times per week"*/
if NUT_130=7 then dghnts_f=0.50; /*3-4 times per week"*/
if NUT_130=8 or NUT_130=9 then dghnts_f=0.9; /*almost daily or daily*/
if NUT_130=10 then dghnts_f=2.2; /*2 or more times per day*/
if NUT_130A=0 or NUT_130A=. or NUT_130A=999 then dghnts_servpt= 0;
if NUT_130A=1 then dghnts_servpt=0.5;
if NUT_130A=2 then dghnts_servpt=1;
if NUT_130A=3 then dghnts_servpt=1.5;
dghnts_serv = dghnts_f * dghnts_servpt;

if NUT_131=0 or NUT_131=. or NUT_131=999 then swtmffns_f= 0;
if NUT_131=1 or NUT_131=2 then swtmffns_f=0.02;  /*less than once per month*/
if NUT_131=3 or NUT_131=4 then swtmffns_f=0.08; /*1-2 times per month*/
if NUT_131=5 or NUT_131=6 then swtmffns_f=0.17; /*1-2 times per week"*/
if NUT_131=7 then swtmffns_f=0.50; /*3-4 times per week"*/
if NUT_131=8 or NUT_131=9 then swtmffns_f=0.9; /*almost daily or daily*/
if NUT_131=10 then swtmffns_f=2.2; /*2 or more times per day*/
if NUT_131A=0 or NUT_131A=. or NUT_131A=999 then swtmffns_servpt= 0;
if NUT_131A=1 then swtmffns_servpt=0.5;
if NUT_131A=2 then swtmffns_servpt=1;
if NUT_131A=3 then swtmffns_servpt=1.5;
swtmffns_serv = swtmffns_f * swtmffns_servpt;

if NUT_132=0 or NUT_132=. or NUT_132=999 then frtcrsp_f= 0;
if NUT_132=1 or NUT_132=2 then frtcrsp_f=0.02;  /*less than once per month*/
if NUT_132=3 or NUT_132=4 then frtcrsp_f=0.08; /*1-2 times per month*/
if NUT_132=5 or NUT_132=6 then frtcrsp_f=0.17; /*1-2 times per week"*/
if NUT_132=7 then frtcrsp_f=0.50; /*3-4 times per week"*/
if NUT_132=8 or NUT_132=9 then frtcrsp_f=0.9; /*almost daily or daily*/
if NUT_132=10 then frtcrsp_f=2.2; /*2 or more times per day*/
if NUT_132A=0 or NUT_132A=. or NUT_132A=999 then frtcrsp_servpt= 0;
if NUT_132A=1 then frtcrsp_servpt=0.5;
if NUT_132A=2 then frtcrsp_servpt=1;
if NUT_132A=3 then frtcrsp_servpt=1.5;
frtcrsp_serv = frtcrsp_f * frtcrsp_servpt;

if NUT_133=0 or NUT_133=. or NUT_133=999 then pie_f= 0;
if NUT_133=1 or NUT_133=2 then pie_f=0.02;  /*less than once per month*/
if NUT_133=3 or NUT_133=4 then pie_f=0.08; /*1-2 times per month*/
if NUT_133=5 or NUT_133=6 then pie_f=0.17; /*1-2 times per week"*/
if NUT_133=7 then pie_f=0.50; /*3-4 times per week"*/
if NUT_133=8 or NUT_133=9 then pie_f=0.9; /*almost daily or daily*/
if NUT_133=10 then pie_f=2.2; /*2 or more times per day*/
if NUT_133A=0 or NUT_133A=. or NUT_133A=999 then pie_servpt= 0;
if NUT_133A=1 then pie_servpt=0.5;
if NUT_133A=2 then pie_servpt=1;
if NUT_133A=3 then pie_servpt=1.5;
pie_serv = pie_f * pie_servpt;

if NUT_134=0 or NUT_134=. or NUT_134=999 then chcltcndy_f= 0;
if NUT_134=1 or NUT_134=2 then chcltcndy_f=0.02;  /*less than once per month*/
if NUT_134=3 or NUT_134=4 then chcltcndy_f=0.08; /*1-2 times per month*/
if NUT_134=5 or NUT_134=6 then chcltcndy_f=0.17; /*1-2 times per week"*/
if NUT_134=7 then chcltcndy_f=0.50; /*3-4 times per week"*/
if NUT_134=8 or NUT_134=9 then chcltcndy_f=0.9; /*almost daily or daily*/
if NUT_134=10 then chcltcndy_f=2.2; /*2 or more times per day*/
if NUT_134A=0 or NUT_134A=. or NUT_134A=999 then chcltcndy_servpt= 0;
if NUT_134A=1 then chcltcndy_servpt=0.5;
if NUT_134A=2 then chcltcndy_servpt=1;
if NUT_134A=3 then chcltcndy_servpt=1.5;
chcltcndy_serv = chcltcndy_f * chcltcndy_servpt;

if NUT_135=0 or NUT_135=. or NUT_135=999 then thrcndy_f= 0;
if NUT_135=1 or NUT_135=2 then thrcndy_f=0.02;  /*less than once per month*/
if NUT_135=3 or NUT_135=4 then thrcndy_f=0.08; /*1-2 times per month*/
if NUT_135=5 or NUT_135=6 then thrcndy_f=0.17; /*1-2 times per week"*/
if NUT_135=7 then thrcndy_f=0.50; /*3-4 times per week"*/
if NUT_135=8 or NUT_135=9 then thrcndy_f=0.9; /*almost daily or daily*/
if NUT_135=10 then thrcndy_f=2.2; /*2 or more times per day*/
if NUT_135A=0 or NUT_135A=. or NUT_135A=999 then thrcndy_servpt= 0;
if NUT_135A=1 then thrcndy_servpt=0.5;
if NUT_135A=2 then thrcndy_servpt=1;
if NUT_135A=3 then thrcndy_servpt=1.5;
thrcndy_serv = thrcndy_f * thrcndy_servpt;

if NUT_138=0 or NUT_138=. or NUT_138=999 then cffdrnks_f= 0;
if NUT_138=1 or NUT_138=2 then cffdrnks_f=0.02;  /*less than once per month*/
if NUT_138=3 or NUT_138=4 then cffdrnks_f=0.08; /*1-2 times per month*/
if NUT_138=5 or NUT_138=6 then cffdrnks_f=0.17; /*1-2 times per week"*/
if NUT_138=7 then cffdrnks_f=0.50; /*3-4 times per week"*/
if NUT_138=8 or NUT_138=9 then cffdrnks_f=0.9; /*almost daily or daily*/
if NUT_138=10 then cffdrnks_f=2.2; /*2 or more times per day*/
if NUT_138A=0 or NUT_138A=. or NUT_138A=999 then cffdrnks_servpt= 0;
if NUT_138A=1 then cffdrnks_servpt=0.5;
if NUT_138A=2 then cffdrnks_servpt=1;
if NUT_138A=3 then cffdrnks_servpt=1.5;
cffdrnks_serv = cffdrnks_f * cffdrnks_servpt;

/*iced tea: 1 serving = 1 glass, can or bottle*/
if NUT_139=0 or NUT_139=. or NUT_139=999 then icdt_serv=0;
if NUT_139=1 then icdt_serv=0.02; /*less than once per month*/
if NUT_139=2 then icdt_serv=0.08; /*1-3 glass, can or bottle per month*/
if NUT_139=3 then icdt_serv=0.14; /*1 glass, can or bottle per week*/
if NUT_139=4 then icdt_serv=0.43; /*2-4 glass, can or bottle per week*/
if NUT_139=5 or NUT_139=6 then icdt_serv=0.9; /*almost daily or daily*/
if NUT_139=7 then icdt_serv=2.2; /*2-3 glass, can or bottle per day*/
if NUT_139=8 then icdt_serv=4.5; /*4-5 glass, can or bottle per day*/
if NUT_139=9 then icdt_serv=6; /*6 or more glass, can or bottle per day*/
if NUT_139B=0 or NUT_139B=. or NUT_139B=999 then ticdt_serv=icdt_serv;
if NUT_139B=1 then ticdt_serv=icdt_serv * 0.75;
if NUT_139B=2 then ticdt_serv=icdt_serv * 0.5;
if NUT_139B=3 then ticdt_serv=icdt_serv * 0.25;
if NUT_139B=4 then ticdt_serv=icdt_serv * 0;

if NUT_143=0 or NUT_143=. or NUT_143=999 then sgrhnyfd_f= 0;
if NUT_143=1 or NUT_143=2 then sgrhnyfd_f=0.02;  /*less than once per month*/
if NUT_143=3 or NUT_143=4 then sgrhnyfd_f=0.08; /*1-2 times per month*/
if NUT_143=5 or NUT_143=6 then sgrhnyfd_f=0.17; /*1-2 times per week"*/
if NUT_143=7 then sgrhnyfd_f=0.50; /*3-4 times per week"*/
if NUT_143=8 or NUT_143=9 then sgrhnyfd_f=0.9; /*almost daily or daily*/
if NUT_143=10 then sgrhnyfd_f=2.2; /*2 or more times per day*/
if NUT_143A=0 or NUT_143A=. or NUT_143A=999 then sgrhnyfd_servpt= 0;
if NUT_143A=1 then sgrhnyfd_servpt=0.5;
if NUT_143A=2 then sgrhnyfd_servpt=1;
if NUT_143A=3 then sgrhnyfd_servpt=1.5;
sgrhnyfd_serv = sgrhnyfd_f * sgrhnyfd_servpt;

if NUT_137=0 or NUT_137=. or NUT_137=999 then cff_f=0;
if NUT_137=1 then cff_f=0.02; /*less than 1 cup per month*/
if NUT_137=2 then cff_f=0.07; /*1-3 cups per month*/
if NUT_137=3 then cff_f=0.14; /*1 cup per week*/
if NUT_137=4 then cff_f=0.43; /*2-4 cups per week*/
if NUT_137=5 or NUT_137=6 then cff_f=0.9; /*almost daily or daily */
if NUT_137=7 then cff_f=2.2; /*2-3 cups per day*/
if NUT_137=8 then cff_f=4.5; /*4-5 cups per week*/
if NUT_137=9 then cff_f=6; /*6 cups per week*/

if NUT_140=0 or NUT_140=. or NUT_140=999 then httea_f=0;
if NUT_140=1 then httea_f=0.02; /*less than 1 cup per month*/
if NUT_140=2 then httea_f=0.07; /*1-3 cups per month*/
if NUT_140=3 then httea_f=0.14; /*1 cup per week*/
if NUT_140=4 then httea_f=0.43; /*2-4 cups per week*/
if NUT_140=5 or NUT_140=6 then httea_f=0.9; /*almost daily or daily */
if NUT_140=7 then httea_f=2.2; /*2-3 cups per day*/
if NUT_140=8 then httea_f=4.5; /*4-5 cups per week*/
if NUT_140=9 then httea_f=6; /*6 cups per week*/

cfftea_f = cff_f + httea_f;

if NUT_141A=0 or NUT_141A=. or NUT_141A=999 then sgrhnycfft_f=0;
if NUT_141A=1 then sgrhnycfft_f=0.25 * cfftea_f;
if NUT_141A=2 then sgrhnycfft_f=0.5 * cfftea_f;
if NUT_141A=3 then sgrhnycfft_f=0.75 * cfftea_f;
if NUT_141A=4 then sgrhnycfft_f=cfftea_f;
if NUT_141B=0 or NUT_141B=. or NUT_141B=999 then sgrhnycfft_servpt=0;
if NUT_141B=1 then sgrhnycfft_servpt=0.5;
if NUT_141B=2 then sgrhnycfft_servpt=1;
if NUT_141B=3 then sgrhnycfft_servpt=1.5;
sgrhnycfft_serv = sgrhnycfft_f * sgrhnycfft_servpt;

if NUT_142A=0 or NUT_142A=. or NUT_142A=999 then ndrycrmr_f=0;
if NUT_142A=1 then ndrycrmr_f= 0.25* cfftea_f;
if NUT_142A=2 then ndrycrmr_f= 0.5* cfftea_f;
if NUT_142A=3 then ndrycrmr_f= 0.75* cfftea_f;
if NUT_142A=4 then ndrycrmr_f= cfftea_f;
if NUT_142B=0 or NUT_142B=. or NUT_142B=999 then ndrycrmr_servpt=0;
if NUT_142B=1 then ndrycrmr_servpt=0.5;
if NUT_142B=2 then ndrycrmr_servpt=1;
if NUT_142B=3 then ndrycrmr_servpt=1.5;
ndrycrmr_serv = ndrycrmr_f * ndrycrmr_servpt;

if NUT_142D=0 or NUT_142D=. or NUT_142D=999 then crmhlfhlf_f=0;
if NUT_142D=1 then crmhlfhlf_f= 0.25* cfftea_f;
if NUT_142D=2 then crmhlfhlf_f= 0.5* cfftea_f;
if NUT_142D=3 then crmhlfhlf_f= 0.75* cfftea_f;
if NUT_142D=4 then crmhlfhlf_f= cfftea_f;
if NUT_142E=0 or NUT_142E=. or NUT_142E=999 then crmhlfhlf_servpt=0;
if NUT_142E=1 then crmhlfhlf_servpt=0.5;
if NUT_142E=2 then crmhlfhlf_servpt=1;
if NUT_142E=3 then crmhlfhlf_servpt=1.5;
crmhlfhlf_serv = crmhlfhlf_f * crmhlfhlf_servpt;


/*temptcal_serv =  tmrgrn_serv + tbttr_serv + tsrcrm_serv + tcrmch_serv + srp_serv + tthrfrtdrks_serv + tchcltmlk_serv + mlkshks_serv + tsftdrnks_serv 
+sprtsdrnks_serv + nrgydrnks_serv + jmjllybgls_serv + frzygrt_serv + ticcrm_serv + cake_serv + ckbrwn_serv + dghnts_serv + swtmffns_serv + frtcrsp_serv + 
pie_serv + chcltcndy_serv + thrcndy_serv + cffdrnks_serv + ticdt_serv + sgrhnyfd_serv + sgrhnycfft_serv + ndrycrmr_serv + crmhlfhlf_serv + talcohol_serv;*/
/*if ALCOHOL_G_CCHS<28 then alcohol_g = ALCOHOL_G_CCHS; /*28 g used as threshold for counting alcohol as empty kcal*/
/*if ALCOHOL_G_CCHS>=28 then alcohol_g = ALCOHOL_G_CCHS-28;*/
temptcal_kcal =  tmrgrn_serv*37 + tbttr_serv*37 + tsrcrm_serv*62 + tcrmch_serv*51 + srp_serv*53 + tthrfrtdrks_serv*119 
+ tchcltmlk_serv*190 + mlkshks_serv*382 + tsftdrnks_serv *140 +sprtsdrnks_serv*90 + nrgydrnks_serv*108  
+ jmjllybgls_serv*55 + frzygrt_serv*214 + ticcrm_serv*267 + cake_serv*235 + ckbrwn_serv*130 + dghnts_serv*190 
+ swtmffns_serv*320 + frtcrsp_serv*175 + pie_serv*356 + chcltcndy_serv*155 + thrcndy_serv*152 + cffdrnks_serv*200 
+ ticdt_serv*90 + sgrhnyfd_serv*16 + sgrhnycfft_serv*16 + ndrycrmr_serv*10 + crmhlfhlf_serv*20 + ALCOHOL_G_CCHS*7;

run;


/*individual HEI-C 2010 component calculation*/
/* remaining servings of legumes in HEI-C 2010 were counted towards the greens and beans and total fruits and vegetables
components only after allocation to the total protein foods and seafood and plant proteins components*/
/* note! tprot does not include legume, legume will be added back if tprot does not exceed max serving*/
/*adjusted serving for total protein with addition of legume*/
data HEI; set HEI_category; /*n=5147*/
 /*total protein*/
if gender=1 and tprot_serv< 3 then lgmtprot_serv=tprot_serv+lgm_serv;
if gender=2 and tprot_serv< 2 then lgmtprot_serv=tprot_serv+lgm_serv;
if gender=1 and tprot_serv>= 3 then lgmtprot_serv=tprot_serv;
if gender=2 and tprot_serv>= 2 then lgmtprot_serv=tprot_serv;

if GENDER = 1 and lgmtprot_serv >=3 then tprot_pt=5;
if GENDER = 2 and lgmtprot_serv >=2 then tprot_pt=5;
if GENDER = 1 and lgmtprot_serv>0 and lgmtprot_serv<3 then tprot_pt = (5/3) * lgmtprot_serv;
if GENDER = 2 and lgmtprot_serv>0 and lgmtprot_serv<2 then tprot_pt = (5/2) * lgmtprot_serv;
if lgmtprot_serv=0 then tprot_pt=0;

/*sea food and plant based protein*/
/*Seafood and protein: The standard for max score represents 32% of the meat and alternatives recommendation in CFG*/
lgmtsfdplprot_serv=tsfdplprot_serv;
if gender=1 and tprot_serv<3 and lgmtprot_serv >3 then lgmtsfdplprot_serv=(lgmtprot_serv-3)+tsfdplprot_serv;
if gender=2 and tprot_serv<2 and lgmtprot_serv >2 then lgmtsfdplprot_serv=(lgmtprot_serv-2)+tsfdplprot_serv;

if GENDER=1 and lgmtsfdplprot_serv>=0.96 then tsfdplprot_pt=5;
if GENDER=1 and lgmtsfdplprot_serv<0.96 then tsfdplprot_pt= (5/0.96)*lgmtsfdplprot_serv;

if GENDER=2 and lgmtsfdplprot_serv>=0.64 then tsfdplprot_pt=5;
if GENDER=2 and lgmtsfdplprot_serv<0.64 then tsfdplprot_pt= (5/0.64)*lgmtsfdplprot_serv;
if lgmtsfdplprot_serv = 0 then tsfdplprot_pt = 0;

/*greens and beans*/
lgmtgrensbns_serv=tgrensbns_serv;
if gender=1 and tprot_serv<3 and lgmtprot_serv >3 and lgmtsfdplprot_serv>0.96 
then lgmtgrensbns_serv=(lgmtsfdplprot_serv-0.96)+tgrensbns_serv;

if gender=2 and tprot_serv<2 and lgmtprot_serv >2 and lgmtsfdplprot_serv>0.64 
then lgmtgrensbns_serv=(lgmtsfdplprot_serv-0.64)+tgrensbns_serv;

if GENDER=1 and p_age<51 and lgmtgrensbns_serv>=(8*0.105) then tgrensbns_pt=5;
if GENDER=2 and p_age<51 and lgmtgrensbns_serv>=(7*0.105) then tgrensbns_pt=5;
if GENDER=1 and p_age>=51 and lgmtgrensbns_serv>=(7*0.105) then tgrensbns_pt=5;
if GENDER=2 and p_age>=51 and lgmtgrensbns_serv>=(7*0.105) then tgrensbns_pt=5;

if GENDER=1 and p_age<51 and lgmtgrensbns_serv<(8*0.105) then tgrensbns_pt=(5/(8*0.105)) *lgmtgrensbns_serv ;
if GENDER=2 and p_age<51 and lgmtgrensbns_serv<(7*0.105) then tgrensbns_pt=(5/(7*0.105)) * lgmtgrensbns_serv;
if GENDER=1 and p_age>= 51 and lgmtgrensbns_serv<(7*0.105) then tgrensbns_pt=(5/(7*0.105)) * lgmtgrensbns_serv;
if GENDER=2 and p_age>= 51 and lgmtgrensbns_serv<(7*0.105) then tgrensbns_pt=(5/(7*0.105)) * lgmtgrensbns_serv;
if lgmtgrensbns_serv=0 then tgrensbns_pt=0;


/*Fruit and Vegetables*/
lgmtfrtvgtbls_serv=tfrtvgtbls_serv;
if gender=1 and tprot_serv<3 and lgmtprot_serv >3 and lgmtsfdplprot_serv>0.96 
then lgmtfrtvgtbls_serv=(lgmtsfdplprot_serv-0.96)+tfrtvgtbls_serv;

if gender=2 and tprot_serv<2 and lgmtprot_serv >2 and lgmtsfdplprot_serv>0.64 
then lgmtfrtvgtbls_serv=(lgmtsfdplprot_serv-0.64)+tfrtvgtbls_serv;

if GENDER =1 and p_age <51 and lgmtfrtvgtbls_serv >=8 then tfrtvgtbls_pt = 10;
if GENDER =1 and p_age >=51 and lgmtfrtvgtbls_serv >=7 then tfrtvgtbls_pt = 10;
if GENDER =2 and lgmtfrtvgtbls_serv >=7 then tfrtvgtbls_pt = 10;

if GENDER =1 and p_age <51 and lgmtfrtvgtbls_serv <8 then tfrtvgtbls_pt = (10/8)*lgmtfrtvgtbls_serv;
if GENDER =1 and p_age >=51 and lgmtfrtvgtbls_serv <7 then tfrtvgtbls_pt = (10/7)*lgmtfrtvgtbls_serv;
if GENDER =2 and lgmtfrtvgtbls_serv <7 then tfrtvgtbls_pt = (10/7)*lgmtfrtvgtbls_serv;
if lgmtfrtvgtbls_serv = 0 then tfrtvgtbls_pt=0;

/*Whole Fruit*/
/*: 21% of the sum of the maximum score criteria for total fruit and total vegetable components in HEI-2010*/
if GENDER =1 and p_age <51 and twfrt_serv>= (8*0.21) then twfrt_pt=5;
if GENDER =2 and p_age <51 and twfrt_serv>= (7*0.21) then twfrt_pt=5;
if p_age >=51 and twfrt_serv>= (7*0.21) then twfrt_pt=5;

if GENDER=1 and p_age < 51 and twfrt_serv>0 and twfrt_serv< (8*0.21) then twfrt_pt= (5/(8*0.21))*twfrt_serv;
if GENDER=2 and p_age < 51 and twfrt_serv>0 and twfrt_serv< (7*0.21) then twfrt_pt= (5/(7*0.21))*twfrt_serv;
if p_age >= 51 and  twfrt_serv< (7*0.21) then twfrt_pt= (5/(7*0.21))*twfrt_serv;
if twfrt_serv=0 then twfrt_pt=0;

/*Whole grain*/
/*: 50% of recommendation for grain product*/
if GENDER=1 and p_age<51 and twlgrn_serv>=4 then twlgrn_pt=10;
if GENDER=2 and p_age<51 and twlgrn_serv>=3 then twlgrn_pt=10;
if GENDER=1 and p_age>=51 and twlgrn_serv>=3.5 then twlgrn_pt=10;
if GENDER=2 and p_age>=51 and twlgrn_serv>=3 then twlgrn_pt=10;

if GENDER=1 and p_age<51 and twlgrn_serv<4 then twlgrn_pt= (10/4) * twlgrn_serv;
if GENDER=2 and p_age<51 and twlgrn_serv<3 then twlgrn_pt= (10/3) * twlgrn_serv;
if GENDER=1 and p_age>=51 and twlgrn_serv<3.5 then twlgrn_pt= (10/3.5) * twlgrn_serv;
if GENDER=2 and p_age>=51 and twlgrn_serv<3 then twlgrn_pt= (10/3) * twlgrn_serv;
if twlgrn_serv<=0 then twlgrn_pt=0;

/*dairy*/
/*: Serving recommendations from the milk and alternatives in CFG 2007 were used as the cut-off 
for maximum scores for the dairy components of the HEI-C 2010*/
if p_age<51 and tdry_serv >=2 then tdry_pt=10;
if p_age>=51 and tdry_serv >=3 then tdry_pt=10;

if p_age<51 and tdry_serv<2 then tdry_pt=10/2 * tdry_serv;
if p_age>= 51 and tdry_serv<3 then tdry_pt=10/3 * tdry_serv;
if tdry_serv=0 then tdry_pt=0;

/*Fatty Acid*/
fatty_acid= (TOTAL_MONOUNSATURATED_FATTY_ACI +TOTAL_POLYUNSATURATED_FATTY_ACI)/TOTAL_SATURATED_FATTY_ACIDS_G_C;
if TOTAL_SATURATED_FATTY_ACIDS_G_C=0 then fatty_acid=TOTAL_MONOUNSATURATED_FATTY_ACI + TOTAL_POLYUNSATURATED_FATTY_ACI;
if fatty_acid >= 2.5 then fatty_acid_pt=10;
if fatty_acid <= 1.2 then fatty_acid_pt=0;
if fatty_acid>1.2 and fatty_acid<2.5 then fatty_acid_pt= (10/(2.5-1.2) * fatty_acid) - ((10/1.3)*1.2);

/*Refined Grain*/
trfngrn_serv = (CSSE_TOTAL_GRAIN - CSSE_WGRAIN);
/*if CSSE_TOTAL_GRAIN=0 then trfngrn_serv=0;
if CSSE_WGRAIN=0 then trfngrn_serv=CSSE_TOTAL_GRAIN;*/
refined_prop = (trfngrn_serv)/(CSSE_TOTAL_GRAIN);
if CSSE_TOTAL_GRAIN=0 then refined_prop=0;

if (refined_prop) >0.5 then trfngrn_pt=0;
if (refined_prop) <=0.5 and refined_prop>0 then trfngrn_pt=10;
if refined_prop=0 then trfngrn_pt=0;

/*Sodium*/

if p_age<51 and SODIUM_MG_CCHS <=1500 then sodium_pt=10;
if p_age>=51 and p_age<=70 and SODIUM_MG_CCHS <=1300 then sodium_pt=10;
if p_age >70 and SODIUM_MG_CCHS <=1200 then sodium_pt=10;

if p_age<51 and SODIUM_MG_CCHS>1500 and SODIUM_MG_CCHS<=2300 then sodium_pt=(-0.0025*SODIUM_MG_CCHS)+13.75;
if p_age>=51 and p_age<=71 and SODIUM_MG_CCHS>1300 and SODIUM_MG_CCHS<=2300 then sodium_pt=(-0.002*SODIUM_MG_CCHS)+12.6;
if p_age>71 and SODIUM_MG_CCHS>1200 and SODIUM_MG_CCHS<=2300 then sodium_pt=((-2/1100)*SODIUM_MG_CCHS)+(10-((-2/1100)*1200));

if SODIUM_MG_CCHS>2300 and SODIUM_MG_CCHS <4600 then sodium_pt = (-8/2300 * SODIUM_MG_CCHS) + 16;
if SODIUM_MG_CCHS>=4600 then sodium_pt=0;

/*Empty Calorie*/
Empty_calories = temptcal_kcal/ENERGY_KCAL_CCHS;
if ENERGY_KCAL_CCHS=0 then Empty_calories=temptcal_kcal;
if Empty_calories<=0.19 then temptcal_pt=20;
if Empty_calories>=0.5 then temptcal_pt=0;
if Empty_calories>0.19 and Empty_calories<0.5 then temptcal_pt= (20/(0.19-0.5) * Empty_calories) - (20/(0.19-0.5)*0.5);

HEI_C_SCORE = tfrtvgtbls_pt + twfrt_pt + tgrensbns_pt + twlgrn_pt + tdry_pt + tprot_pt + tsfdplprot_pt + fatty_acid_pt +
trfngrn_pt + sodium_pt + temptcal_pt;

Adequacy_sub_score= tfrtvgtbls_pt + twfrt_pt + tgrensbns_pt + twlgrn_pt + tdry_pt + tprot_pt + tsfdplprot_pt + fatty_acid_pt;
Moderation_sub_score= trfngrn_pt + sodium_pt + temptcal_pt;
run;
