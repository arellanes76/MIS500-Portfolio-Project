*Portfolio Project MIS500-Running SAS Code on Dataset Provided by U.S Dept. of Health & Human Services;

*Permanent library named PUBLIF created;
LIBNAME PUFLIB '/folders/myfolders/SASDATA'; 
    
*File reference for external MEPS source data created;                                                          
FILENAME IN1 '/folders/myfolders/SASDATA/H201.DAT';                                                
                                                                                                    
*Permanent dataset named PUFLIB.H201 created;
DATA PUFLIB.H201;
*Subet of data columns from MEPS source data kept in dataset;
KEEP DUPERSID DOBMM DOBYY SEX DIABDX DSDIA53 DIABAGED DSINSU53 DSMED53 POVCAT17 POVLEV17 FOODMN17 FOODST17;                                                                        
*Identifies the MEPS source data as the input file;
INFILE IN1 LRECL=4216;  
*Reads MEPS raw data into SAS dataset;
INPUT @1      DUID      5.0
      @6      PID       3.0
      @9      DUPERSID $8.0
      @17     PANEL     2.0
      @19     FAMID31  $2.0
      @21     FAMID42  $2.0
      @23     FAMID53  $2.0
      @25     FAMID17  $2.0
      @27     FAMIDYR  $2.0
      @29     CPSFAMID $2.0
      @31     FCSZ1231  2.0
      @33     FCRP1231  2.0
      @35     RULETR31 $2.0
      @37     RULETR42 $2.0
      @39     RULETR53 $2.0
      @41     RULETR17 $2.0
      @43     RUSIZE31  2.0
      @45     RUSIZE42  2.0
      @47     RUSIZE53  2.0
      @49     RUSIZE17  2.0
      @51     RUCLAS31  2.0
      @53     RUCLAS42  2.0
      @55     RUCLAS53  2.0
      @57     RUCLAS17  1.0
      @58     FAMSZE31  2.0
      @60     FAMSZE42  2.0
      @62     FAMSZE53  2.0
      @64     FAMSZE17  2.0
      @66     FMRS1231  2.0
      @68     FAMS1231  2.0
      @70     FAMSZEYR  2.0
      @72     FAMRFPYR  1.0
      @73     REGION31  2.0
      @75     REGION42  2.0
      @77     REGION53  2.0
      @79     REGION17  2.0
      @81     REFPRS31  3.0
      @84     REFPRS42  3.0
      @87     REFPRS53  3.0
      @90     REFPRS17  3.0
      @93     RESP31    1.0
      @94     RESP42    1.0
      @95     RESP53    1.0
      @96     RESP17    1.0
      @97     PROXY31   2.0
      @99     PROXY42   2.0
      @101    PROXY53   2.0
      @103    PROXY17   1.0
      @104    INTVLANG  2.0
      @106    BEGRFM31  2.0
      @108    BEGRFY31  4.0
      @112    ENDRFM31  2.0
      @114    ENDRFY31  4.0
      @118    BEGRFM42  2.0
      @120    BEGRFY42  4.0
      @124    ENDRFM42  2.0
      @126    ENDRFY42  4.0
      @130    BEGRFM53  2.0
      @132    BEGRFY53  4.0
      @136    ENDRFM53  2.0
      @138    ENDRFY53  4.0
      @142    ENDRFM17  2.0
      @144    ENDRFY17  4.0
      @148    KEYNESS   1.0
      @149    INSCOP31  1.0
      @150    INSCOP42  1.0
      @151    INSCOP53  1.0
      @152    INSCOP17  1.0
      @153    INSC1231  1.0
      @154    INSCOPE   1.0
      @155    ELGRND31  1.0
      @156    ELGRND42  1.0
      @157    ELGRND53  1.0
      @158    ELGRND17  1.0
      @159    PSTATS31  2.0
      @161    PSTATS42  2.0
      @163    PSTATS53  2.0
      @165    RURSLT31 $2.0
      @167    RURSLT42 $2.0
      @169    RURSLT53 $2.0
      @171    AGE31X    2.0
      @173    AGE42X    2.0
      @175    AGE53X    2.0
      @177    AGE17X    2.0
      @179    AGELAST   2.0
      @181    DOBMM     2.0
      @183    DOBYY     4.0
      @187    SEX       1.0
      @188    RACEV1X   1.0
      @189    RACEV2X   2.0
      @191    RACEAX    1.0
      @192    RACEBX    1.0
      @193    RACEWX    1.0
      @194    RACETHX   1.0
      @195    HISPANX   1.0
      @196    HISPNCAT  1.0
      @197    MARRY31X  2.0
      @199    MARRY42X  2.0
      @201    MARRY53X  2.0
      @203    MARRY17X  2.0
      @205    SPOUID31  3.0
      @208    SPOUID42  3.0
      @211    SPOUID53  3.0
      @214    SPOUID17  3.0
      @217    SPOUIN31  2.0
      @219    SPOUIN42  2.0
      @221    SPOUIN53  2.0
      @223    SPOUIN17  2.0
      @225    EDUCYR    2.0
      @227    HIDEG     2.0
      @229    FTSTU31X  2.0
      @231    FTSTU42X  2.0
      @233    FTSTU53X  2.0
      @235    FTSTU17X  2.0
      @237    ACTDTY31  2.0
      @239    ACTDTY42  2.0
      @241    ACTDTY53  2.0
      @243    HONRDC31  2.0
      @245    HONRDC42  2.0
      @247    HONRDC53  2.0
      @249    REFRL31X  2.0
      @251    REFRL42X  2.0
      @253    REFRL53X  2.0
      @255    REFRL17X  2.0
      @257    OTHLANG   2.0
      @259    LANGSPK   2.0
      @261    HWELLSPE  2.0
      @263    BORNUSA   2.0
      @265    YRSINUS   2.0
      @267    MOPID31X  3.0
      @270    MOPID42X  3.0
      @273    MOPID53X  3.0
      @276    DAPID31X  3.0
      @279    DAPID42X  3.0
      @282    DAPID53X  3.0
      @285    RTHLTH31  2.0
      @287    RTHLTH42  2.0
      @289    RTHLTH53  2.0
      @291    MNHLTH31  2.0
      @293    MNHLTH42  2.0
      @295    MNHLTH53  2.0
      @297    HIBPDX    2.0
      @299    HIBPAGED  2.0
      @301    BPMLDX    2.0
      @303    CHDDX     2.0
      @305    CHDAGED   2.0
      @307    ANGIDX    2.0
      @309    ANGIAGED  2.0
      @311    MIDX      2.0
      @313    MIAGED    2.0
      @315    OHRTDX    2.0
      @317    OHRTAGED  2.0
      @319    STRKDX    2.0
      @321    STRKAGED  2.0
      @323    EMPHDX    2.0
      @325    EMPHAGED  2.0
      @327    CHBRON31  2.0
      @329    CHOLDX    2.0
      @331    CHOLAGED  2.0
      @333    CANCERDX  2.0
      @335    CABLADDR  2.0
      @337    CABREAST  2.0
      @339    CACERVIX  2.0
      @341    CACOLON   2.0
      @343    CALUNG    2.0
      @345    CALYMPH   2.0
      @347    CAMELANO  2.0
      @349    CAOTHER   2.0
      @351    CAPROSTA  2.0
      @353    CASKINNM  2.0
      @355    CASKINDK  2.0
      @357    CAUTERUS  2.0
      @359    DIABDX    2.0
      @361    DIABAGED  2.0
      @363    JTPAIN31  2.0
      @365    ARTHDX    2.0
      @367    ARTHTYPE  2.0
      @369    ARTHAGED  2.0
      @371    ASTHDX    2.0
      @373    ASTHAGED  2.0
      @375    ASSTIL31  2.0
      @377    ASATAK31  2.0
      @379    ASTHEP31  2.0
      @381    ADHDADDX  2.0
      @383    ADHDAGED  2.0
      @385    IADLHP31  2.0
      @387    ADLHLP31  2.0
      @389    AIDHLP31  2.0
      @391    WLKLIM31  2.0
      @393    LFTDIF31  2.0
      @395    STPDIF31  2.0
      @397    WLKDIF31  2.0
      @399    MILDIF31  2.0
      @401    STNDIF31  2.0
      @403    BENDIF31  2.0
      @405    RCHDIF31  2.0
      @407    FNGRDF31  2.0
      @409    ACTLIM31  2.0
      @411    WRKLIM31  2.0
      @413    HSELIM31  2.0
      @415    SCHLIM31  2.0
      @417    UNABLE31  2.0
      @419    SOCLIM31  2.0
      @421    COGLIM31  2.0
      @423    DFHEAR42  2.0
      @425    DEAF42    2.0
      @427    DFSEE42   2.0
      @429    BLIND42   2.0
      @431    DFCOG42   2.0
      @433    DFWLKC42  2.0
      @435    DFDRSB42  2.0
      @437    DFERND42  2.0
      @439    HEARAD42  2.0
      @441    WRGLAS42  2.0
      @443    ANYLMI17  2.0
      @445    CHPMED42  2.0
      @447    CHPMHB42  2.0
      @449    CHPMCN42  2.0
      @451    CHSERV42  2.0
      @453    CHSRHB42  2.0
      @455    CHSRCN42  2.0
      @457    CHLIMI42  2.0
      @459    CHLIHB42  2.0
      @461    CHLICO42  2.0
      @463    CHTHER42  2.0
      @465    CHTHHB42  2.0
      @467    CHTHCO42  2.0
      @469    CHCOUN42  2.0
      @471    CHEMPB42  2.0
      @473    CSHCN42   2.0
      @475    MOMPRO42  2.0
      @477    DADPRO42  2.0
      @479    UNHAP42   2.0
      @481    SCHLBH42  2.0
      @483    HAVFUN42  2.0
      @485    ADUPRO42  2.0
      @487    NERVAF42  2.0
      @489    SIBPRO42  2.0
      @491    KIDPRO42  2.0
      @493    SPRPRO42  2.0
      @495    SCHPRO42  2.0
      @497    HOMEBH42  2.0
      @499    TRBLE42   2.0
      @501    CHILCR42  2.0
      @503    CHILWW42  2.0
      @505    CHRTCR42  2.0
      @507    CHRTWW42  2.0
      @509    CHAPPT42  2.0
      @511    CHNDCR42  2.0
      @513    CHENEC42  2.0
      @515    CHLIST42  2.0
      @517    CHEXPL42  2.0
      @519    CHRESP42  2.0
      @521    CHPRTM42  2.0
      @523    CHHECR42  2.0
      @525    CHSPEC42  2.0
      @527    CHEYRE42  2.0
      @529    MESHGT42  2.0
      @531    WHNHGT42  2.0
      @533    MESWGT42  2.0
      @535    WHNWGT42  2.0
      @537    CHBMIX42  5.1
      @542    MESVIS42  2.0
      @544    MESBPR42  2.0
      @546    WHNBPR42  2.0
      @548    DENTAL42  2.0
      @550    WHNDEN42  2.0
      @552    EATHLT42  2.0
      @554    WHNEAT42  2.0
      @556    PHYSCL42  2.0
      @558    WHNPHY42  2.0
      @560    SAFEST42  2.0
      @562    WHNSAF42  2.0
      @564    BOOST42   2.0
      @566    WHNBST42  2.0
      @568    LAPBLT42  2.0
      @570    WHNLAP42  2.0
      @572    HELMET42  2.0
      @574    WHNHEL42  2.0
      @576    NOSMOK42  2.0
      @578    WHNSMK42  2.0
      @580    TIMALN42  2.0
      @582    LSTETH53  2.0
      @584    PHYEXE53  2.0
      @586    OFTSMK53  2.0
      @588    SAQELIG   1.0
      @589    ADPROX42  2.0
      @591    ADGENH42  2.0
      @593    ADDAYA42  2.0
      @595    ADCLIM42  2.0
      @597    ADACLS42  2.0
      @599    ADWKLM42  2.0
      @601    ADEMLS42  2.0
      @603    ADMWCF42  2.0
      @605    ADPAIN42  2.0
      @607    ADPCFL42  2.0
      @609    ADENGY42  2.0
      @611    ADPRST42  2.0
      @613    ADSOCA42  2.0
      @615    ADNERV42  2.0
      @617    ADHOPE42  2.0
      @619    ADREST42  2.0
      @621    ADSAD42   2.0
      @623    ADEFRT42  2.0
      @625    ADWRTH42  2.0
      @627    K6SUM42   2.0
      @629    ADINTR42  2.0
      @631    ADDPRS42  2.0
      @633    PHQ242    2.0
      @635    ADINSA42  2.0
      @637    ADINSB42  2.0
      @639    ADRISK42  2.0
      @641    ADOVER42  2.0
      @643    ADILCR42  2.0
      @645    ADILWW42  2.0
      @647    ADRTCR42  2.0
      @649    ADRTWW42  2.0
      @651    ADAPPT42  2.0
      @653    ADHECR42  2.0
      @655    ADINST42  2.0
      @657    ADEZUN42  2.0
      @659    ADTLHW42  2.0
      @661    ADFFRM42  2.0
      @663    ADFHLP42  2.0
      @665    ADEXPL42  2.0
      @667    ADLIST42  2.0
      @669    ADRESP42  2.0
      @671    ADPRTM42  2.0
      @673    ADSMOK42  2.0
      @675    ADNSMK42  2.0
      @677    ADSPCL42  2.0
      @679    ADSNSP42  2.0
      @681    ADCMPM42  2.0
      @683    ADCMPY42  4.0
      @687    ADLANG42  2.0
      @689    DSDIA53   2.0
      @691    DSA1C53   2.0
      @693    DSFT1853  2.0
      @695    DSFT1753  2.0
      @697    DSFT1653  2.0
      @699    DSFB1653  2.0
      @701    DSFTNV53  2.0
      @703    DSEY1853  2.0
      @705    DSEY1753  2.0
      @707    DSEY1653  2.0
      @709    DSEB1653  2.0
      @711    DSEYNV53  2.0
      @713    DSCH1853  2.0
      @715    DSCH1753  2.0
      @717    DSCH1653  2.0
      @719    DSCB1653  2.0
      @721    DSCHNV53  2.0
      @723    DSFL1853  2.0
      @725    DSFL1753  2.0
      @727    DSFL1653  2.0
      @729    DSVB1653  2.0
      @731    DSFLNV53  2.0
      @733    DSKIDN53  2.0
      @735    DSEYPR53  2.0
      @737    DSDIET53  2.0
      @739    DSMED53   2.0
      @741    DSINSU53  2.0
      @743    DSCPCP53  2.0
      @745    DSCNPC53  2.0
      @747    DSCPHN53  2.0
      @749    DSCINT53  2.0
      @751    DSCGRP53  2.0
      @753    DSCONF53  2.0
      @755    DSPRX53   2.0
      @757    CCNRDI31  2.0
      @759    CDIAG31   2.0
      @761    CTRTMT31  2.0
      @763    CLSTRT31  2.0
      @765    CBCK31    2.0
      @767    CBCKYR31  4.0
      @771    CFTRT31   2.0
      @773    CWRKP31   2.0
      @775    CTMOFF31  2.0
      @777    CWYCNG31  2.0
      @779    CEXTM31   2.0
      @781    CEXTDI31  2.0
      @783    CEXTRT31  2.0
      @785    CEXTLT31  2.0
      @787    CEXTMT31  2.0
      @789    CNPTLD31  2.0
      @791    CNGFLX31  2.0
      @793    CPROM31   2.0
      @795    CERET31   2.0
      @797    CPTASK31  2.0
      @799    CMTASK31  2.0
      @801    CLPROD31  2.0
      @803    CFRET31   2.0
      @805    CLHINS31  2.0
      @807    CCLHIN31  2.0
      @809    CSLHIN31  2.0
      @811    CFMEM31   2.0
      @813    CFMSPS31  2.0
      @815    CFMCHD31  2.0
      @817    CFMSIB31  2.0
      @819    CFMPAR31  2.0
      @821    CFMREL31  2.0
      @823    CFMFND31  2.0
      @825    CFMOTR31  2.0
      @827    CFMTOF31  2.0
      @829    CFM2MT31  2.0
      @831    CINCOV31  2.0
      @833    CINPRV31  2.0
      @835    CINMDC31  2.0
      @837    CINMDG31  2.0
      @839    CINMDA31  2.0
      @841    CINMLT31  2.0
      @843    CINIHS31  2.0
      @845    CINSHP31  2.0
      @847    CINOGP31  2.0
      @849    CINSSP31  2.0
      @851    CINNCV31  2.0
      @853    CINNOC31  2.0
      @855    CINADQ31  2.0
      @857    CINCMP31  2.0
      @859    CINDIF31  2.0
      @861    CINAFD31  2.0
      @863    CNCMED31  2.0
      @865    CNCTRP31  2.0
      @867    CNCLOD31  2.0
      @869    CNCCHD31  2.0
      @871    CNCHME31  2.0
      @873    CNCNON31  2.0
      @875    CNCNTS31  2.0
      @877    CFNDBT31  2.0
      @879    CFNAMT31  2.0
      @881    CFNVAC31  2.0
      @883    CFNPUR31  2.0
      @885    CFNSPD31  2.0
      @887    CFNSAV31  2.0
      @889    CFNLIV31  2.0
      @891    CFNOTH31  2.0
      @893    CFNUNB31  2.0
      @895    CFNBNK31  2.0
      @897    CFNPMT31  2.0
      @899    CFNSTB31  2.0
      @901    CFNINC31  2.0
      @903    CMCFUP31  2.0
      @905    CMCEFF31  2.0
      @907    CMCPSY31  2.0
      @909    CMCSTY31  2.0
      @911    CMCOST31  2.0
      @913    CMCTRT31  2.0
      @915    CDLPRS31  2.0
      @917    CDLVST31  2.0
      @919    CDLTRT31  2.0
      @921    CDLFUP31  2.0
      @923    CDLMNT31  2.0
      @925    CDLOTH31  2.0
      @927    CMCNEC31  2.0
      @929    CMNAFF31  2.0
      @931    CMNINS31  2.0
      @933    CMNACC31  2.0
      @935    CMNOFF31  2.0
      @937    CMNTIM31  2.0
      @939    CMNPLC31  2.0
      @941    CMNCRE31  2.0
      @943    CMNLNG31  2.0
      @945    CEFACT31  2.0
      @947    CEFLCT31  2.0
      @949    CEFOG31   2.0
      @951    CEFMTL31  2.0
      @953    CEFUND31  2.0
      @955    CEFBCK31  2.0
      @957    CEFSTG31  2.0
      @959    CEFCOP31  2.0
      @961    CEFPOS31  2.0
      @963    CEFHLT31  2.0
      @965    CEFPHL31  2.0
      @967    CEFPAC31  2.0
      @969    CEFPIN31  2.0
      @971    CEFFTG31  2.0
      @973    CEFQLF31  2.0
      @975    CEFMHL31  2.0
      @977    CEFRLT31  2.0
      @979    CEFMPR31  2.0
      @981    DDNWRK17  2.0
      @983    OTHDYS17  2.0
      @985    OTHNDD17  2.0
      @987    ACCELI42  2.0
      @989    HAVEUS42  2.0
      @991    YNOUSC42  2.0
      @993    NOREAS42  2.0
      @995    SELDSI42  2.0
      @997    NEWARE42  2.0
      @999    DKWHRU42  2.0
      @1001   USCNOT42  2.0
      @1003   PERSLA42  2.0
      @1005   DIFFPL42  2.0
      @1007   INSRPL42  2.0
      @1009   MYSELF42  2.0
      @1011   CARECO42  2.0
      @1013   NOHINS42  2.0
      @1015   OTHINS42  2.0
      @1017   JOBRSN42  2.0
      @1019   NEWDOC42  2.0
      @1021   DOCELS42  2.0
      @1023   NOLIKE42  2.0
      @1025   HEALTH42  2.0
      @1027   KNOWDR42  2.0
      @1029   NOGODR42  2.0
      @1031   TRANS42   2.0
      @1033   CLINIC42  2.0
      @1035   OTHREA42  2.0
      @1037   PROVTY42  2.0
      @1039   PLCTYP42  2.0
      @1041   TMTKUS42  2.0
      @1043   TYPEPE42  2.0
      @1045   LOCATN42  2.0
      @1047   HSPLAP42  2.0
      @1049   WHITPR42  2.0
      @1051   BLCKPR42  2.0
      @1053   ASIANP42  2.0
      @1055   NATAMP42  2.0
      @1057   PACISP42  2.0
      @1059   OTHRCP42  2.0
      @1061   GENDRP42  2.0
      @1063   MINORP42  2.0
      @1065   PREVEN42  2.0
      @1067   REFFRL42  2.0
      @1069   ONGONG42  2.0
      @1071   PHNREG42  2.0
      @1073   OFFHOU42  2.0
      @1075   AFTHOU42  2.0
      @1077   TREATM42  2.0
      @1079   RESPCT42  2.0
      @1081   DECIDE42  2.0
      @1083   EXPLOP42  2.0
      @1085   PRVSPK42  2.0
      @1087   MDUNAB42  2.0
      @1089   MDUNRS42  2.0
      @1091   MDDLAY42  2.0
      @1093   MDDLRS42  2.0
      @1095   DNUNAB42  2.0
      @1097   DNUNRS42  2.0
      @1099   DNDLAY42  2.0
      @1101   DNDLRS42  2.0
      @1103   PMUNAB42  2.0
      @1105   PMUNRS42  2.0
      @1107   PMDLAY42  2.0
      @1109   PMDLRS42  2.0
      @1111   EMPST31   2.0
      @1113   EMPST42   2.0
      @1115   EMPST53   2.0
      @1117   RNDFLG31  2.0
      @1119   MORJOB31  2.0
      @1121   MORJOB42  2.0
      @1123   MORJOB53  2.0
      @1125   EVRWRK    2.0
      @1127   HRWG31X   6.2
      @1133   HRWG42X   6.2
      @1139   HRWG53X   6.2
      @1145   HRWGIM31  1.0
      @1146   HRWGIM42  1.0
      @1147   HRWGIM53  1.0
      @1148   HRHOW31   2.0
      @1150   HRHOW42   2.0
      @1152   HRHOW53   2.0
      @1154   DIFFWG31  2.0
      @1156   DIFFWG42  2.0
      @1158   DIFFWG53  2.0
      @1160   NHRWG31   6.2
      @1166   NHRWG42   6.2
      @1172   NHRWG53   6.2
      @1178   HOUR31    3.0
      @1181   HOUR42    3.0
      @1184   HOUR53    3.0
      @1187   TEMPJB31  2.0
      @1189   TEMPJB42  2.0
      @1191   TEMPJB53  2.0
      @1193   SSNLJB31  2.0
      @1195   SSNLJB42  2.0
      @1197   SSNLJB53  2.0
      @1199   SELFCM31  2.0
      @1201   SELFCM42  2.0
      @1203   SELFCM53  2.0
      @1205   DISVW31X  2.0
      @1207   DISVW42X  2.0
      @1209   DISVW53X  2.0
      @1211   CHOIC31   2.0
      @1213   CHOIC42   2.0
      @1215   CHOIC53   2.0
      @1217   INDCAT31  2.0
      @1219   INDCAT42  2.0
      @1221   INDCAT53  2.0
      @1223   NUMEMP31  3.0
      @1226   NUMEMP42  3.0
      @1229   NUMEMP53  3.0
      @1232   MORE31    2.0
      @1234   MORE42    2.0
      @1236   MORE53    2.0
      @1238   UNION31   2.0
      @1240   UNION42   2.0
      @1242   UNION53   2.0
      @1244   NWK31     2.0
      @1246   NWK42     2.0
      @1248   NWK53     2.0
      @1250   CHGJ3142  2.0
      @1252   CHGJ4253  2.0
      @1254   YCHJ3142  2.0
      @1256   YCHJ4253  2.0
      @1258   STJBMM31  2.0
      @1260   STJBYY31  4.0
      @1264   STJBMM42  2.0
      @1266   STJBYY42  4.0
      @1270   STJBMM53  2.0
      @1272   STJBYY53  4.0
      @1276   EVRETIRE  2.0
      @1278   OCCCAT31  2.0
      @1280   OCCCAT42  2.0
      @1282   OCCCAT53  2.0
      @1284   PAYVAC31  2.0
      @1286   PAYVAC42  2.0
      @1288   PAYVAC53  2.0
      @1290   SICPAY31  2.0
      @1292   SICPAY42  2.0
      @1294   SICPAY53  2.0
      @1296   PAYDR31   2.0
      @1298   PAYDR42   2.0
      @1300   PAYDR53   2.0
      @1302   RETPLN31  2.0
      @1304   RETPLN42  2.0
      @1306   RETPLN53  2.0
      @1308   BSNTY31   2.0
      @1310   BSNTY42   2.0
      @1312   BSNTY53   2.0
      @1314   JOBORG31  2.0
      @1316   JOBORG42  2.0
      @1318   JOBORG53  2.0
      @1320   HELD31X   2.0
      @1322   HELD42X   2.0
      @1324   HELD53X   2.0
      @1326   OFFER31X  2.0
      @1328   OFFER42X  2.0
      @1330   OFFER53X  2.0
      @1332   OFREMP31  2.0
      @1334   OFREMP42  2.0
      @1336   OFREMP53  2.0
      @1338   EMPST31H  2.0
      @1340   EMPST42H  2.0
      @1342   EMPST53H  2.0
      @1344   SLFCM31H  2.0
      @1346   SLFCM42H  2.0
      @1348   SLFCM53H  2.0
      @1350   NMEMP31H  3.0
      @1353   NMEMP42H  3.0
      @1356   NMEMP53H  3.0
      @1359   MORE31H   2.0
      @1361   MORE42H   2.0
      @1363   MORE53H   2.0
      @1365   INDCT31H  2.0
      @1367   INDCT42H  2.0
      @1369   INDCT53H  2.0
      @1371   OCCCT31H  2.0
      @1373   OCCCT42H  2.0
      @1375   OCCCT53H  2.0
      @1377   HOUR31H   3.0
      @1380   HOUR42H   3.0
      @1383   HOUR53H   3.0
      @1386   JBORG31H  2.0
      @1388   JBORG42H  2.0
      @1390   JBORG53H  2.0
      @1392   UNION31H  2.0
      @1394   UNION42H  2.0
      @1396   UNION53H  2.0
      @1398   BSNTY31H  2.0
      @1400   BSNTY42H  2.0
      @1402   BSNTY53H  2.0
      @1404   HRWG31H   6.2
      @1410   HRWG42H   6.2
      @1416   HRWG53H   6.2
      @1422   CMJHLD31  2.0
      @1424   CMJHLD42  2.0
      @1426   CMJHLD53  2.0
      @1428   OFFER31H  2.0
      @1430   OFFER42H  2.0
      @1432   OFFER53H  2.0
      @1434   OFEMP31H  2.0
      @1436   OFEMP42H  2.0
      @1438   OFEMP53H  2.0
      @1440   PYVAC31H  2.0
      @1442   PYVAC42H  2.0
      @1444   PYVAC53H  2.0
      @1446   SCPAY31H  2.0
      @1448   SCPAY42H  2.0
      @1450   SCPAY53H  2.0
      @1452   PAYDR31H  2.0
      @1454   PAYDR42H  2.0
      @1456   PAYDR53H  2.0
      @1458   RTPLN31H  2.0
      @1460   RTPLN42H  2.0
      @1462   RTPLN53H  2.0
      @1464   FILEDR17  2.0
      @1466   WILFIL17  2.0
      @1468   FLSTAT17  2.0
      @1470   FILER17   2.0
      @1472   JTINRU17  2.0
      @1474   JNTPID17  3.0
      @1477   TAXFRM17  2.0
      @1479   FOODST17  2.0
      @1481   FOODMN17  2.0
      @1483   FOODVL17  4.0
      @1487   TTLP17X   6.0
      @1493   FAMINC17  6.0
      @1499   POVCAT17  1.0
      @1500   POVLEV17  11.6
      @1511   WAGEP17X  6.0
      @1517   WAGIMP17  1.0
      @1518   BUSNP17X  6.0
      @1524   BUSIMP17  1.0
      @1525   UNEMP17X  4.0
      @1529   UNEIMP17  1.0
      @1530   WCMPP17X  5.0
      @1535   WCPIMP17  1.0
      @1536   INTRP17X  5.0
      @1541   INTIMP17  1.0
      @1542   DIVDP17X  6.0
      @1548   DIVIMP17  1.0
      @1549   SALEP17X  7.0
      @1556   SALIMP17  1.0
      @1557   PENSP17X  5.0
      @1562   PENIMP17  1.0
      @1563   SSECP17X  5.0
      @1568   SSCIMP17  1.0
      @1569   TRSTP17X  6.0
      @1575   TRTIMP17  1.0
      @1576   VETSP17X  5.0
      @1581   VETIMP17  1.0
      @1582   IRASP17X  6.0
      @1588   IRAIMP17  1.0
      @1589   ALIMP17X  5.0
      @1594   ALIIMP17  1.0
      @1595   CHLDP17X  5.0
      @1600   CHLIMP17  1.0
      @1601   CASHP17X  6.0
      @1607   CSHIMP17  1.0
      @1608   SSIP17X   5.0
      @1613   SSIIMP17  1.0
      @1614   PUBP17X   5.0
      @1619   PUBIMP17  1.0
      @1620   OTHRP17X  6.0
      @1626   OTHIMP17  1.0
      @1627   HIEUIDX  $7.0
      @1634   TRIJA17X  2.0
      @1636   TRIFE17X  2.0
      @1638   TRIMA17X  2.0
      @1640   TRIAP17X  2.0
      @1642   TRIMY17X  2.0
      @1644   TRIJU17X  2.0
      @1646   TRIJL17X  2.0
      @1648   TRIAU17X  2.0
      @1650   TRISE17X  2.0
      @1652   TRIOC17X  2.0
      @1654   TRINO17X  2.0
      @1656   TRIDE17X  2.0
      @1658   MCRJA17   2.0
      @1660   MCRFE17   2.0
      @1662   MCRMA17   2.0
      @1664   MCRAP17   2.0
      @1666   MCRMY17   2.0
      @1668   MCRJU17   2.0
      @1670   MCRJL17   2.0
      @1672   MCRAU17   2.0
      @1674   MCRSE17   2.0
      @1676   MCROC17   2.0
      @1678   MCRNO17   2.0
      @1680   MCRDE17   2.0
      @1682   MCRJA17X  2.0
      @1684   MCRFE17X  2.0
      @1686   MCRMA17X  2.0
      @1688   MCRAP17X  2.0
      @1690   MCRMY17X  2.0
      @1692   MCRJU17X  2.0
      @1694   MCRJL17X  2.0
      @1696   MCRAU17X  2.0
      @1698   MCRSE17X  2.0
      @1700   MCROC17X  2.0
      @1702   MCRNO17X  2.0
      @1704   MCRDE17X  2.0
      @1706   MCDJA17   2.0
      @1708   MCDFE17   2.0
      @1710   MCDMA17   2.0
      @1712   MCDAP17   2.0
      @1714   MCDMY17   2.0
      @1716   MCDJU17   2.0
      @1718   MCDJL17   2.0
      @1720   MCDAU17   2.0
      @1722   MCDSE17   2.0
      @1724   MCDOC17   2.0
      @1726   MCDNO17   2.0
      @1728   MCDDE17   2.0
      @1730   MCDJA17X  2.0
      @1732   MCDFE17X  2.0
      @1734   MCDMA17X  2.0
      @1736   MCDAP17X  2.0
      @1738   MCDMY17X  2.0
      @1740   MCDJU17X  2.0
      @1742   MCDJL17X  2.0
      @1744   MCDAU17X  2.0
      @1746   MCDSE17X  2.0
      @1748   MCDOC17X  2.0
      @1750   MCDNO17X  2.0
      @1752   MCDDE17X  2.0
      @1754   OPAJA17   2.0
      @1756   OPAFE17   2.0
      @1758   OPAMA17   2.0
      @1760   OPAAP17   2.0
      @1762   OPAMY17   2.0
      @1764   OPAJU17   2.0
      @1766   OPAJL17   2.0
      @1768   OPAAU17   2.0
      @1770   OPASE17   2.0
      @1772   OPAOC17   2.0
      @1774   OPANO17   2.0
      @1776   OPADE17   2.0
      @1778   OPBJA17   2.0
      @1780   OPBFE17   2.0
      @1782   OPBMA17   2.0
      @1784   OPBAP17   2.0
      @1786   OPBMY17   2.0
      @1788   OPBJU17   2.0
      @1790   OPBJL17   2.0
      @1792   OPBAU17   2.0
      @1794   OPBSE17   2.0
      @1796   OPBOC17   2.0
      @1798   OPBNO17   2.0
      @1800   OPBDE17   2.0
      @1802   PUBJA17X  2.0
      @1804   PUBFE17X  2.0
      @1806   PUBMA17X  2.0
      @1808   PUBAP17X  2.0
      @1810   PUBMY17X  2.0
      @1812   PUBJU17X  2.0
      @1814   PUBJL17X  2.0
      @1816   PUBAU17X  2.0
      @1818   PUBSE17X  2.0
      @1820   PUBOC17X  2.0
      @1822   PUBNO17X  2.0
      @1824   PUBDE17X  2.0
      @1826   PEGJA17   2.0
      @1828   PEGFE17   2.0
      @1830   PEGMA17   2.0
      @1832   PEGAP17   2.0
      @1834   PEGMY17   2.0
      @1836   PEGJU17   2.0
      @1838   PEGJL17   2.0
      @1840   PEGAU17   2.0
      @1842   PEGSE17   2.0
      @1844   PEGOC17   2.0
      @1846   PEGNO17   2.0
      @1848   PEGDE17   2.0
      @1850   PDKJA17   2.0
      @1852   PDKFE17   2.0
      @1854   PDKMA17   2.0
      @1856   PDKAP17   2.0
      @1858   PDKMY17   2.0
      @1860   PDKJU17   2.0
      @1862   PDKJL17   2.0
      @1864   PDKAU17   2.0
      @1866   PDKSE17   2.0
      @1868   PDKOC17   2.0
      @1870   PDKNO17   2.0
      @1872   PDKDE17   2.0
      @1874   PNGJA17   2.0
      @1876   PNGFE17   2.0
      @1878   PNGMA17   2.0
      @1880   PNGAP17   2.0
      @1882   PNGMY17   2.0
      @1884   PNGJU17   2.0
      @1886   PNGJL17   2.0
      @1888   PNGAU17   2.0
      @1890   PNGSE17   2.0
      @1892   PNGOC17   2.0
      @1894   PNGNO17   2.0
      @1896   PNGDE17   2.0
      @1898   POGJA17   2.0
      @1900   POGFE17   2.0
      @1902   POGMA17   2.0
      @1904   POGAP17   2.0
      @1906   POGMY17   2.0
      @1908   POGJU17   2.0
      @1910   POGJL17   2.0
      @1912   POGAU17   2.0
      @1914   POGSE17   2.0
      @1916   POGOC17   2.0
      @1918   POGNO17   2.0
      @1920   POGDE17   2.0
      @1922   PRSJA17   2.0
      @1924   PRSFE17   2.0
      @1926   PRSMA17   2.0
      @1928   PRSAP17   2.0
      @1930   PRSMY17   2.0
      @1932   PRSJU17   2.0
      @1934   PRSJL17   2.0
      @1936   PRSAU17   2.0
      @1938   PRSSE17   2.0
      @1940   PRSOC17   2.0
      @1942   PRSNO17   2.0
      @1944   PRSDE17   2.0
      @1946   POUJA17   2.0
      @1948   POUFE17   2.0
      @1950   POUMA17   2.0
      @1952   POUAP17   2.0
      @1954   POUMY17   2.0
      @1956   POUJU17   2.0
      @1958   POUJL17   2.0
      @1960   POUAU17   2.0
      @1962   POUSE17   2.0
      @1964   POUOC17   2.0
      @1966   POUNO17   2.0
      @1968   POUDE17   2.0
      @1970   PRXJA17   2.0
      @1972   PRXFE17   2.0
      @1974   PRXMA17   2.0
      @1976   PRXAP17   2.0
      @1978   PRXMY17   2.0
      @1980   PRXJU17   2.0
      @1982   PRXJL17   2.0
      @1984   PRXAU17   2.0
      @1986   PRXSE17   2.0
      @1988   PRXOC17   2.0
      @1990   PRXNO17   2.0
      @1992   PRXDE17   2.0
      @1994   PRIJA17   2.0
      @1996   PRIFE17   2.0
      @1998   PRIMA17   2.0
      @2000   PRIAP17   2.0
      @2002   PRIMY17   2.0
      @2004   PRIJU17   2.0
      @2006   PRIJL17   2.0
      @2008   PRIAU17   2.0
      @2010   PRISE17   2.0
      @2012   PRIOC17   2.0
      @2014   PRINO17   2.0
      @2016   PRIDE17   2.0
      @2018   HPEJA17   2.0
      @2020   HPEFE17   2.0
      @2022   HPEMA17   2.0
      @2024   HPEAP17   2.0
      @2026   HPEMY17   2.0
      @2028   HPEJU17   2.0
      @2030   HPEJL17   2.0
      @2032   HPEAU17   2.0
      @2034   HPESE17   2.0
      @2036   HPEOC17   2.0
      @2038   HPENO17   2.0
      @2040   HPEDE17   2.0
      @2042   HPDJA17   2.0
      @2044   HPDFE17   2.0
      @2046   HPDMA17   2.0
      @2048   HPDAP17   2.0
      @2050   HPDMY17   2.0
      @2052   HPDJU17   2.0
      @2054   HPDJL17   2.0
      @2056   HPDAU17   2.0
      @2058   HPDSE17   2.0
      @2060   HPDOC17   2.0
      @2062   HPDNO17   2.0
      @2064   HPDDE17   2.0
      @2066   HPNJA17   2.0
      @2068   HPNFE17   2.0
      @2070   HPNMA17   2.0
      @2072   HPNAP17   2.0
      @2074   HPNMY17   2.0
      @2076   HPNJU17   2.0
      @2078   HPNJL17   2.0
      @2080   HPNAU17   2.0
      @2082   HPNSE17   2.0
      @2084   HPNOC17   2.0
      @2086   HPNNO17   2.0
      @2088   HPNDE17   2.0
      @2090   HPOJA17   2.0
      @2092   HPOFE17   2.0
      @2094   HPOMA17   2.0
      @2096   HPOAP17   2.0
      @2098   HPOMY17   2.0
      @2100   HPOJU17   2.0
      @2102   HPOJL17   2.0
      @2104   HPOAU17   2.0
      @2106   HPOSE17   2.0
      @2108   HPOOC17   2.0
      @2110   HPONO17   2.0
      @2112   HPODE17   2.0
      @2114   HPSJA17   2.0
      @2116   HPSFE17   2.0
      @2118   HPSMA17   2.0
      @2120   HPSAP17   2.0
      @2122   HPSMY17   2.0
      @2124   HPSJU17   2.0
      @2126   HPSJL17   2.0
      @2128   HPSAU17   2.0
      @2130   HPSSE17   2.0
      @2132   HPSOC17   2.0
      @2134   HPSNO17   2.0
      @2136   HPSDE17   2.0
      @2138   HPXJA17   2.0
      @2140   HPXFE17   2.0
      @2142   HPXMA17   2.0
      @2144   HPXAP17   2.0
      @2146   HPXMY17   2.0
      @2148   HPXJU17   2.0
      @2150   HPXJL17   2.0
      @2152   HPXAU17   2.0
      @2154   HPXSE17   2.0
      @2156   HPXOC17   2.0
      @2158   HPXNO17   2.0
      @2160   HPXDE17   2.0
      @2162   HPRJA17   2.0
      @2164   HPRFE17   2.0
      @2166   HPRMA17   2.0
      @2168   HPRAP17   2.0
      @2170   HPRMY17   2.0
      @2172   HPRJU17   2.0
      @2174   HPRJL17   2.0
      @2176   HPRAU17   2.0
      @2178   HPRSE17   2.0
      @2180   HPROC17   2.0
      @2182   HPRNO17   2.0
      @2184   HPRDE17   2.0
      @2186   INSJA17X  2.0
      @2188   INSFE17X  2.0
      @2190   INSMA17X  2.0
      @2192   INSAP17X  2.0
      @2194   INSMY17X  2.0
      @2196   INSJU17X  2.0
      @2198   INSJL17X  2.0
      @2200   INSAU17X  2.0
      @2202   INSSE17X  2.0
      @2204   INSOC17X  2.0
      @2206   INSNO17X  2.0
      @2208   INSDE17X  2.0
      @2210   PRVEV17   1.0
      @2211   TRIEV17   1.0
      @2212   MCREV17   1.0
      @2213   MCDEV17   1.0
      @2214   OPAEV17   1.0
      @2215   OPBEV17   1.0
      @2216   UNINS17   1.0
      @2217   INSCOV17  1.0
      @2218   INSURC17  1.0
      @2219   TRIST31X  2.0
      @2221   TRIST42X  2.0
      @2223   TRIST17X  2.0
      @2225   TRIPR31X  2.0
      @2227   TRIPR42X  2.0
      @2229   TRIPR17X  2.0
      @2231   TRIEX31X  2.0
      @2233   TRIEX42X  2.0
      @2235   TRIEX17X  2.0
      @2237   TRILI31X  2.0
      @2239   TRILI42X  2.0
      @2241   TRILI17X  2.0
      @2243   TRICH31X  2.0
      @2245   TRICH42X  2.0
      @2247   TRICH17X  2.0
      @2249   MCRPD31   2.0
      @2251   MCRPD42   2.0
      @2253   MCRPD17   2.0
      @2255   MCRPD31X  2.0
      @2257   MCRPD42X  2.0
      @2259   MCRPD17X  2.0
      @2261   MCRPB31   2.0
      @2263   MCRPB42   2.0
      @2265   MCRPB17   2.0
      @2267   MCRPHO31  2.0
      @2269   MCRPHO42  2.0
      @2271   MCRPHO17  2.0
      @2273   MCDHMO31  2.0
      @2275   MCDHMO42  2.0
      @2277   MCDHMO17  2.0
      @2279   MCDMC31   2.0
      @2281   MCDMC42   2.0
      @2283   MCDMC17   2.0
      @2285   PRVHMO31  2.0
      @2287   PRVHMO42  2.0
      @2289   PRVHMO17  2.0
      @2291   FSAGT31   2.0
      @2293   HASFSA31  2.0
      @2295   FSAAMT31  8.2
      @2303   PROBPY42  2.0
      @2305   CRFMPY42  2.0
      @2307   PYUNBL42  2.0
      @2309   PREVCOVR  2.0
      @2311   COVRMM    2.0
      @2313   COVRYY    4.0
      @2317   WASESTB   2.0
      @2319   WASMCARE  2.0
      @2321   WASMCAID  2.0
      @2323   WASCHAMP  2.0
      @2325   WASVA     2.0
      @2327   WASPRIV   2.0
      @2329   WASOTGOV  2.0
      @2331   WASAFDC   2.0
      @2333   WASSSI    2.0
      @2335   WASSTAT1  2.0
      @2337   WASSTAT2  2.0
      @2339   WASSTAT3  2.0
      @2341   WASSTAT4  2.0
      @2343   WASOTHER  2.0
      @2345   NOINSBEF  2.0
      @2347   NOINSTM   2.0
      @2349   NOINUNIT  2.0
      @2351   MORECOVR  2.0
      @2353   INSENDMM  2.0
      @2355   INSENDYY  4.0
      @2359   TRICR31X  2.0
      @2361   TRICR42X  2.0
      @2363   TRICR53X  2.0
      @2365   TRICR17X  2.0
      @2367   TRIAT31X  2.0
      @2369   TRIAT42X  2.0
      @2371   TRIAT53X  2.0
      @2373   TRIAT17X  2.0
      @2375   MCAID31   2.0
      @2377   MCAID42   2.0
      @2379   MCAID53   2.0
      @2381   MCAID17   2.0
      @2383   MCAID31X  2.0
      @2385   MCAID42X  2.0
      @2387   MCAID53X  2.0
      @2389   MCAID17X  2.0
      @2391   MCARE31   2.0
      @2393   MCARE42   2.0
      @2395   MCARE53   2.0
      @2397   MCARE17   2.0
      @2399   MCARE31X  2.0
      @2401   MCARE42X  2.0
      @2403   MCARE53X  2.0
      @2405   MCARE17X  2.0
      @2407   MCDAT31X  2.0
      @2409   MCDAT42X  2.0
      @2411   MCDAT53X  2.0
      @2413   MCDAT17X  2.0
      @2415   OTPAAT31  2.0
      @2417   OTPAAT42  2.0
      @2419   OTPAAT53  2.0
      @2421   OTPAAT17  2.0
      @2423   OTPBAT31  2.0
      @2425   OTPBAT42  2.0
      @2427   OTPBAT53  2.0
      @2429   OTPBAT17  2.0
      @2431   OTPUBA31  2.0
      @2433   OTPUBA42  2.0
      @2435   OTPUBA53  2.0
      @2437   OTPUBA17  2.0
      @2439   OTPUBB31  2.0
      @2441   OTPUBB42  2.0
      @2443   OTPUBB53  2.0
      @2445   OTPUBB17  2.0
      @2447   PRIDK31   2.0
      @2449   PRIDK42   2.0
      @2451   PRIDK53   2.0
      @2453   PRIDK17   2.0
      @2455   PRIEU31   2.0
      @2457   PRIEU42   2.0
      @2459   PRIEU53   2.0
      @2461   PRIEU17   2.0
      @2463   PRING31   2.0
      @2465   PRING42   2.0
      @2467   PRING53   2.0
      @2469   PRING17   2.0
      @2471   PRIOG31   2.0
      @2473   PRIOG42   2.0
      @2475   PRIOG53   2.0
      @2477   PRIOG17   2.0
      @2479   PRIS31    2.0
      @2481   PRIS42    2.0
      @2483   PRIS53    2.0
      @2485   PRIS17    2.0
      @2487   PROUT31   2.0
      @2489   PROUT42   2.0
      @2491   PROUT53   2.0
      @2493   PROUT17   2.0
      @2495   PRSTX31   2.0
      @2497   PRSTX42   2.0
      @2499   PRSTX53   2.0
      @2501   PRSTX17   2.0
      @2503   PRIV31    2.0
      @2505   PRIV42    2.0
      @2507   PRIV53    2.0
      @2509   PRIV17    2.0
      @2511   PRIVAT31  2.0
      @2513   PRIVAT42  2.0
      @2515   PRIVAT53  2.0
      @2517   PRIVAT17  2.0
      @2519   PUB31X    2.0
      @2521   PUB42X    2.0
      @2523   PUB53X    2.0
      @2525   PUB17X    2.0
      @2527   PUBAT31X  2.0
      @2529   PUBAT42X  2.0
      @2531   PUBAT53X  2.0
      @2533   PUBAT17X  2.0
      @2535   INS31X    2.0
      @2537   INS42X    2.0
      @2539   INS53X    2.0
      @2541   INS17X    2.0
      @2543   INSAT31X  2.0
      @2545   INSAT42X  2.0
      @2547   INSAT53X  2.0
      @2549   INSAT17X  2.0
      @2551   DENTIN31  2.0
      @2553   DENTIN42  2.0
      @2555   DENTIN53  2.0
      @2557   DNTINS31  2.0
      @2559   DNTINS17  2.0
      @2561   PMEDIN31  2.0
      @2563   PMEDIN42  2.0
      @2565   PMEDIN53  2.0
      @2567   PMDINS31  2.0
      @2569   PMDINS17  2.0
      @2571   PMEDUP31  2.0
      @2573   PMEDUP42  2.0
      @2575   PMEDUP53  2.0
      @2577   PMEDPY31  2.0
      @2579   PMEDPY42  2.0
      @2581   PMEDPY53  2.0
      @2583   TOTTCH17  7.0
      @2590   TOTEXP17  6.0
      @2596   TOTSLF17  6.0
      @2602   TOTMCR17  6.0
      @2608   TOTMCD17  6.0
      @2614   TOTPRV17  6.0
      @2620   TOTVA17   6.0
      @2626   TOTTRI17  5.0
      @2631   TOTOFD17  5.0
      @2636   TOTSTL17  6.0
      @2642   TOTWCP17  6.0
      @2648   TOTOPR17  5.0
      @2653   TOTOPU17  5.0
      @2658   TOTOSR17  6.0
      @2664   TOTPTR17  6.0
      @2670   TOTOTH17  6.0
      @2676   OBTOTV17  3.0
      @2679   OBVTCH17  7.0
      @2686   OBVEXP17  6.0
      @2692   OBVSLF17  5.0
      @2697   OBVMCR17  6.0
      @2703   OBVMCD17  6.0
      @2709   OBVPRV17  6.0
      @2715   OBVVA17   5.0
      @2720   OBVTRI17  5.0
      @2725   OBVOFD17  4.0
      @2729   OBVSTL17  5.0
      @2734   OBVWCP17  5.0
      @2739   OBVOPR17  5.0
      @2744   OBVOPU17  5.0
      @2749   OBVOSR17  5.0
      @2754   OBVPTR17  6.0
      @2760   OBVOTH17  5.0
      @2765   OBDRV17   3.0
      @2768   OBDTCH17  6.0
      @2774   OBDEXP17  6.0
      @2780   OBDSLF17  5.0
      @2785   OBDMCR17  6.0
      @2791   OBDMCD17  6.0
      @2797   OBDPRV17  6.0
      @2803   OBDVA17   5.0
      @2808   OBDTRI17  5.0
      @2813   OBDOFD17  4.0
      @2817   OBDSTL17  5.0
      @2822   OBDWCP17  5.0
      @2827   OBDOPR17  5.0
      @2832   OBDOPU17  5.0
      @2837   OBDOSR17  5.0
      @2842   OBDPTR17  6.0
      @2848   OBDOTH17  5.0
      @2853   OPTOTV17  3.0
      @2856   OPTTCH17  7.0
      @2863   OPTEXP17  6.0
      @2869   OPTSLF17  5.0
      @2874   OPTMCR17  5.0
      @2879   OPTMCD17  5.0
      @2884   OPTPRV17  6.0
      @2890   OPTVA17   5.0
      @2895   OPTTRI17  5.0
      @2900   OPTOFD17  3.0
      @2903   OPTSTL17  4.0
      @2907   OPTWCP17  6.0
      @2913   OPTOPR17  5.0
      @2918   OPTOPU17  4.0
      @2922   OPTOSR17  6.0
      @2928   OPTPTR17  6.0
      @2934   OPTOTH17  6.0
      @2940   OPFTCH17  7.0
      @2947   OPFEXP17  6.0
      @2953   OPFSLF17  5.0
      @2958   OPFMCR17  5.0
      @2963   OPFMCD17  5.0
      @2968   OPFPRV17  6.0
      @2974   OPFVA17   5.0
      @2979   OPFTRI17  5.0
      @2984   OPFOFD17  3.0
      @2987   OPFSTL17  4.0
      @2991   OPFWCP17  6.0
      @2997   OPFOPR17  5.0
      @3002   OPFOPU17  4.0
      @3006   OPFOSR17  6.0
      @3012   OPFPTR17  6.0
      @3018   OPFOTH17  6.0
      @3024   OPDEXP17  5.0
      @3029   OPDTCH17  6.0
      @3035   OPDSLF17  4.0
      @3039   OPDMCR17  5.0
      @3044   OPDMCD17  4.0
      @3048   OPDPRV17  5.0
      @3053   OPDVA17   4.0
      @3057   OPDTRI17  4.0
      @3061   OPDOFD17  1.0
      @3062   OPDSTL17  3.0
      @3065   OPDWCP17  4.0
      @3069   OPDOPR17  5.0
      @3074   OPDOPU17  4.0
      @3078   OPDOSR17  5.0
      @3083   OPDPTR17  5.0
      @3088   OPDOTH17  5.0
      @3093   OPDRV17   2.0
      @3095   OPVTCH17  7.0
      @3102   OPVEXP17  6.0
      @3108   OPVSLF17  5.0
      @3113   OPVMCR17  5.0
      @3118   OPVMCD17  5.0
      @3123   OPVPRV17  5.0
      @3128   OPVVA17   5.0
      @3133   OPVTRI17  5.0
      @3138   OPVOFD17  3.0
      @3141   OPVSTL17  4.0
      @3145   OPVWCP17  6.0
      @3151   OPVOPR17  5.0
      @3156   OPVOPU17  3.0
      @3159   OPVOSR17  6.0
      @3165   OPVPTR17  5.0
      @3170   OPVOTH17  6.0
      @3176   OPSEXP17  5.0
      @3181   OPSTCH17  6.0
      @3187   OPSSLF17  4.0
      @3191   OPSMCR17  4.0
      @3195   OPSMCD17  4.0
      @3199   OPSPRV17  5.0
      @3204   OPSVA17   4.0
      @3208   OPSTRI17  4.0
      @3212   OPSOFD17  1.0
      @3213   OPSSTL17  3.0
      @3216   OPSWCP17  4.0
      @3220   OPSOPR17  5.0
      @3225   OPSOPU17  4.0
      @3229   OPSOSR17  5.0
      @3234   OPSPTR17  5.0
      @3239   OPSOTH17  5.0
      @3244   ERTOT17   2.0
      @3246   ERTTCH17  6.0
      @3252   ERTEXP17  5.0
      @3257   ERTSLF17  4.0
      @3261   ERTMCR17  5.0
      @3266   ERTMCD17  5.0
      @3271   ERTPRV17  5.0
      @3276   ERTVA17   5.0
      @3281   ERTTRI17  4.0
      @3285   ERTOFD17  4.0
      @3289   ERTSTL17  4.0
      @3293   ERTWCP17  5.0
      @3298   ERTOPR17  5.0
      @3303   ERTOPU17  4.0
      @3307   ERTOSR17  5.0
      @3312   ERTPTR17  5.0
      @3317   ERTOTH17  5.0
      @3322   ERFTCH17  6.0
      @3328   ERFEXP17  5.0
      @3333   ERFSLF17  4.0
      @3337   ERFMCR17  5.0
      @3342   ERFMCD17  5.0
      @3347   ERFPRV17  5.0
      @3352   ERFVA17   5.0
      @3357   ERFTRI17  4.0
      @3361   ERFOFD17  4.0
      @3365   ERFSTL17  4.0
      @3369   ERFWCP17  5.0
      @3374   ERFOPR17  4.0
      @3378   ERFOPU17  4.0
      @3382   ERFOSR17  5.0
      @3387   ERFPTR17  5.0
      @3392   ERFOTH17  5.0
      @3397   ERDEXP17  5.0
      @3402   ERDTCH17  5.0
      @3407   ERDSLF17  4.0
      @3411   ERDMCR17  4.0
      @3415   ERDMCD17  5.0
      @3420   ERDPRV17  4.0
      @3424   ERDVA17   4.0
      @3428   ERDTRI17  4.0
      @3432   ERDOFD17  1.0
      @3433   ERDSTL17  3.0
      @3436   ERDWCP17  4.0
      @3440   ERDOPR17  4.0
      @3444   ERDOPU17  3.0
      @3447   ERDOSR17  4.0
      @3451   ERDPTR17  4.0
      @3455   ERDOTH17  4.0
      @3459   IPDIS17   2.0
      @3461   IPTEXP17  6.0
      @3467   IPTTCH17  7.0
      @3474   IPTSLF17  5.0
      @3479   IPTMCR17  6.0
      @3485   IPTMCD17  6.0
      @3491   IPTPRV17  6.0
      @3497   IPTVA17   6.0
      @3503   IPTTRI17  5.0
      @3508   IPTOFD17  4.0
      @3512   IPTSTL17  5.0
      @3517   IPTWCP17  5.0
      @3522   IPTOPR17  5.0
      @3527   IPTOPU17  5.0
      @3532   IPTOSR17  5.0
      @3537   IPTPTR17  6.0
      @3543   IPTOTH17  6.0
      @3549   IPFEXP17  6.0
      @3555   IPFTCH17  7.0
      @3562   IPFSLF17  5.0
      @3567   IPFMCR17  6.0
      @3573   IPFMCD17  6.0
      @3579   IPFPRV17  6.0
      @3585   IPFVA17   6.0
      @3591   IPFTRI17  5.0
      @3596   IPFOFD17  4.0
      @3600   IPFSTL17  5.0
      @3605   IPFWCP17  5.0
      @3610   IPFOPR17  5.0
      @3615   IPFOPU17  5.0
      @3620   IPFOSR17  5.0
      @3625   IPFPTR17  6.0
      @3631   IPFOTH17  5.0
      @3636   IPDEXP17  5.0
      @3641   IPDTCH17  6.0
      @3647   IPDSLF17  4.0
      @3651   IPDMCR17  5.0
      @3656   IPDMCD17  5.0
      @3661   IPDPRV17  5.0
      @3666   IPDVA17   5.0
      @3671   IPDTRI17  4.0
      @3675   IPDOFD17  3.0
      @3678   IPDSTL17  3.0
      @3681   IPDWCP17  5.0
      @3686   IPDOPR17  4.0
      @3690   IPDOPU17  4.0
      @3694   IPDOSR17  5.0
      @3699   IPDPTR17  5.0
      @3704   IPDOTH17  5.0
      @3709   IPNGTD17  3.0
      @3712   DVTOT17   2.0
      @3714   DVTTCH17  5.0
      @3719   DVTEXP17  5.0
      @3724   DVTSLF17  5.0
      @3729   DVTMCR17  4.0
      @3733   DVTMCD17  5.0
      @3738   DVTPRV17  5.0
      @3743   DVTVA17   4.0
      @3747   DVTTRI17  4.0
      @3751   DVTOFD17  3.0
      @3754   DVTSTL17  4.0
      @3758   DVTWCP17  3.0
      @3761   DVTOPR17  4.0
      @3765   DVTOPU17  4.0
      @3769   DVTOSR17  4.0
      @3773   DVTPTR17  5.0
      @3778   DVTOTH17  4.0
      @3782   HHTOTD17  3.0
      @3785   HHAGD17   3.0
      @3788   HHATCH17  6.0
      @3794   HHAEXP17  6.0
      @3800   HHASLF17  6.0
      @3806   HHAMCR17  5.0
      @3811   HHAMCD17  6.0
      @3817   HHAPRV17  5.0
      @3822   HHAVA17   5.0
      @3827   HHATRI17  4.0
      @3831   HHAOFD17  4.0
      @3835   HHASTL17  6.0
      @3841   HHAWCP17  1.0
      @3842   HHAOPR17  5.0
      @3847   HHAOPU17  5.0
      @3852   HHAOSR17  4.0
      @3856   HHAPTR17  5.0
      @3861   HHAOTH17  6.0
      @3867   HHINDD17  3.0
      @3870   HHNTCH17  6.0
      @3876   HHNEXP17  6.0
      @3882   HHNSLF17  6.0
      @3888   HHNMCD17  5.0
      @3893   HHNMCR17  4.0
      @3897   HHNPRV17  4.0
      @3901   HHNVA17   4.0
      @3905   HHNTRI17  1.0
      @3906   HHNOFD17  1.0
      @3907   HHNSTL17  4.0
      @3911   HHNWCP17  1.0
      @3912   HHNOPR17  5.0
      @3917   HHNOPU17  1.0
      @3918   HHNOSR17  4.0
      @3922   HHNPTR17  4.0
      @3926   HHNOTH17  5.0
      @3931   HHINFD17  3.0
      @3934   VISEXP17  4.0
      @3938   VISTCH17  4.0
      @3942   VISSLF17  4.0
      @3946   VISMCR17  3.0
      @3949   VISMCD17  4.0
      @3953   VISPRV17  4.0
      @3957   VISVA17   4.0
      @3961   VISTRI17  3.0
      @3964   VISOFD17  3.0
      @3967   VISSTL17  3.0
      @3970   VISWCP17  1.0
      @3971   VISOPR17  3.0
      @3974   VISOPU17  3.0
      @3977   VISOSR17  3.0
      @3980   VISPTR17  4.0
      @3984   VISOTH17  3.0
      @3987   OTHTCH17  6.0
      @3993   OTHEXP17  5.0
      @3998   OTHSLF17  5.0
      @4003   OTHMCR17  5.0
      @4008   OTHMCD17  5.0
      @4013   OTHPRV17  5.0
      @4018   OTHVA17   4.0
      @4022   OTHTRI17  4.0
      @4026   OTHOFD17  3.0
      @4029   OTHSTL17  2.0
      @4031   OTHWCP17  4.0
      @4035   OTHOPR17  4.0
      @4039   OTHOPU17  4.0
      @4043   OTHOSR17  4.0
      @4047   OTHPTR17  5.0
      @4052   OTHOTH17  4.0
      @4056   RXTOT17   3.0
      @4059   RXEXP17   6.0
      @4065   RXSLF17   5.0
      @4070   RXMCR17   6.0
      @4076   RXMCD17   5.0
      @4081   RXPRV17   6.0
      @4087   RXVA17    6.0
      @4093   RXTRI17   5.0
      @4098   RXOFD17   5.0
      @4103   RXSTL17   5.0
      @4108   RXWCP17   5.0
      @4113   RXOPR17   5.0
      @4118   RXOPU17   5.0
      @4123   RXOSR17   4.0
      @4127   RXPTR17   6.0
      @4133   RXOTH17   5.0
      @4138   PERWT17F  13.6
      @4151   FAMWT17F  12.6
      @4163   FAMWT17C  12.6
      @4175   SAQWT17F  13.6
      @4188   DIABW17F  12.6
      @4200   CSAQW17F  12.6
      @4212   VARSTR    4.0
      @4216   VARPSU    1.0
;
*Permanently formats dataset columns;
FORMAT DUID     DUID.
       PID      PID.
       DUPERSID $DUPERSI.
       PANEL    PANEL.
       FAMID31  $FMID31F.
       FAMID42  $FMID42F.
       FAMID53  $FMID53F.
       FAMID17  $FMID17F.
       FAMIDYR  $FAMIDYR.
       CPSFAMID $CPSFAMI.
       FCSZ1231 FCSZ123F.
       FCRP1231 FCRP123F.
       RULETR31 $RULT31F.
       RULETR42 $RULT42F.
       RULETR53 $RULT53F.
       RULETR17 $RULT17F.
       RUSIZE31 RUSIZ31F.
       RUSIZE42 RUSIZ42F.
       RUSIZE53 RUSIZ53F.
       RUSIZE17 RUSIZ17F.
       RUCLAS31 RUCLS31F.
       RUCLAS42 RUCLS42F.
       RUCLAS53 RUCLS53F.
       RUCLAS17 RUCLS17F.
       FAMSZE31 FAMSZ31F.
       FAMSZE42 FAMSZ42F.
       FAMSZE53 FAMSZ53F.
       FAMSZE17 FMSZE17F.
       FMRS1231 FMR1231F.
       FAMS1231 FAM1231F.
       FAMSZEYR FAMSZEYR.
       FAMRFPYR FAMRFPYR.
       REGION31 REGIN31F.
       REGION42 REGIN42F.
       REGION53 REGIN53F.
       REGION17 REGIN17F.
       REFPRS31 RFPR31F.
       REFPRS42 RFPR42F.
       REFPRS53 RFPR53F.
       REFPRS17 RFPR17F.
       RESP31   RESP31F.
       RESP42   RESP42F.
       RESP53   RESP53F.
       RESP17   RESP17F.
       PROXY31  PROXY31F.
       PROXY42  PROXY42F.
       PROXY53  PROXY53F.
       PROXY17  PROXY17F.
       INTVLANG INTVLANG.
       BEGRFM31 BGRFM53F.
       BEGRFY31 BGRFY31F.
       ENDRFM31 ENRFM31F.
       ENDRFY31 ENRFY31F.
       BEGRFM42 BGRFM42F.
       BEGRFY42 BGRFY42F.
       ENDRFM42 ENDRM42F.
       ENDRFY42 ENRFY42F.
       BEGRFM53 BEGRD53F.
       BEGRFY53 BEGRY53F.
       ENDRFM53 ENRFM53F.
       ENDRFY53 ENRFY53F.
       ENDRFM17 ENRFM17F.
       ENDRFY17 ENRFY17F.
       KEYNESS  KEYNESS.
       INSCOP31 INSCP31F.
       INSCOP42 INSCP42F.
       INSCOP53 INSCP53F.
       INSCOP17 INSCP17F.
       INSC1231 INS1231F.
       INSCOPE  INSCOPE.
       ELGRND31 ELGRD31F.
       ELGRND42 ELGRD42F.
       ELGRND53 ELGRD53F.
       ELGRND17 ELGRD17F.
       PSTATS31 PSTAT31F.
       PSTATS42 PSTAT42F.
       PSTATS53 PSTAT53F.
       RURSLT31 $RURS31F.
       RURSLT42 $RURS42F.
       RURSLT53 $RURS53F.
       AGE31X   AGE31X.
       AGE42X   AGE42X.
       AGE53X   AGE53X.
       AGE17X   AGE17F.
       AGELAST  AGELAST.
       DOBMM    DOBMM.
       DOBYY    DOBYY.
       SEX      $SEX.
       RACEV1X  RACEV1X.
       RACEV2X  RACE2VX.
       RACEAX   RACEAX.
       RACEBX   RACEBX.
       RACEWX   RACEWX.
       RACETHX  RACETHX.
       HISPANX  HISPANX.
       HISPNCAT HISPCATE.
       MARRY31X MARRY31X.
       MARRY42X MARRY42X.
       MARRY53X MARRY53X.
       MARRY17X MARRY17X.
       SPOUID31 SPID31F.
       SPOUID42 SPID42F.
       SPOUID53 SPID53F.
       SPOUID17 SPID17F.
       SPOUIN31 SPOUN31F.
       SPOUIN42 SPOUI42F.
       SPOUIN53 SPOUI53F.
       SPOUIN17 SPOUN17F.
       EDUCYR   EDUCYR.
       HIDEG    HIDEG.
       FTSTU31X FTSTU31X.
       FTSTU42X FTSTU42X.
       FTSTU53X FTSTU53X.
       FTSTU17X FTSTU17F.
       ACTDTY31 ACTDT31F.
       ACTDTY42 ACTDT42F.
       ACTDTY53 ACTDT53F.
       HONRDC31 HNRDC31F.
       HONRDC42 HNRDC42F.
       HONRDC53 HNRDC53F.
       REFRL31X REFRL31X.
       REFRL42X REFRL42X.
       REFRL53X REFRL53X.
       REFRL17X REFRL17X.
       OTHLANG  OTHLANG.
       LANGSPK  LANGSPK.
       HWELLSPE HWELLSPE.
       BORNUSA  BORNUSA.
       YRSINUS  YRSINUS.
       MOPID31X MOPID31X.
       MOPID42X MOPID42X.
       MOPID53X MOPID53X.
       DAPID31X DAPID31X.
       DAPID42X DAPID42X.
       DAPID53X DAPID53X.
       RTHLTH31 RTHLT31F.
       RTHLTH42 RTHLT42F.
       RTHLTH53 RTHLT53F.
       MNHLTH31 MNHLT31F.
       MNHLTH42 MNHLT42F.
       MNHLTH53 MNHLT53F.
       HIBPDX   HIBPDXF.
       HIBPAGED HIBPAGED.
       BPMLDX   BPMLDXF.
       CHDDX    CHDDXF.
       CHDAGED  CHDAGED.
       ANGIDX   ANGIDXF.
       ANGIAGED ANGIAGED.
       MIDX     MIDXF.
       MIAGED   MIAGED.
       OHRTDX   OHRTDXF.
       OHRTAGED OHRTAGED.
       STRKDX   STRKDXF.
       STRKAGED STRKAGED.
       EMPHDX   EMPHDXF.
       EMPHAGED EMPHAGED.
       CHBRON31 CHBRN31F.
       CHOLDX   CHOLDXF.
       CHOLAGED CHOLAGED.
       CANCERDX CNCERDXF.
       CABLADDR CABLDDRF.
       CABREAST CABRESTF.
       CACERVIX CACRVIXF.
       CACOLON  CACOLONF.
       CALUNG   CALUNGF.
       CALYMPH  CALYMPHF.
       CAMELANO CAMELANF.
       CAOTHER  CAOTHERF.
       CAPROSTA CAPROSTF.
       CASKINNM CASKNNMF.
       CASKINDK CASKNDKF.
       CAUTERUS CAUTRUSF.
       DIABDX   DIABDXF.
       DIABAGED DIABAGED.
       JTPAIN31 JTPAI31F.
       ARTHDX   ARTHDXF.
       ARTHTYPE ARTHTYPF.
       ARTHAGED ARTHAGED.
       ASTHDX   ASTHDXF.
       ASTHAGED ASTHAGED.
       ASSTIL31 ASSTI31F.
       ASATAK31 ASATK31F.
       ASTHEP31 ASTEP31F.
       ADHDADDX ADHDDXF.
       ADHDAGED ADHDAGED.
       IADLHP31 IDLHP31F.
       ADLHLP31 ADLHP31F.
       AIDHLP31 AIDHP31F.
       WLKLIM31 WLKLM31F.
       LFTDIF31 LFTDF31F.
       STPDIF31 STPDF31F.
       WLKDIF31 WLKDF31F.
       MILDIF31 MILDF31F.
       STNDIF31 STNDF31F.
       BENDIF31 BENDF31F.
       RCHDIF31 RCHDF31F.
       FNGRDF31 FNGDF31F.
       ACTLIM31 ACLM31F.
       WRKLIM31 WRKLM31F.
       HSELIM31 HSELM31F.
       SCHLIM31 SCHLM31F.
       UNABLE31 UNABL31F.
       SOCLIM31 SOCLM31F.
       COGLIM31 COGLM31F.
       DFHEAR42 DHEAR42F.
       DEAF42   DEAF42F.
       DFSEE42  DFSEE42F.
       BLIND42  BLIND42F.
       DFCOG42  DFCOG42F.
       DFWLKC42 DFWLK42F.
       DFDRSB42 DDRSB42F.
       DFERND42 DERND42F.
       HEARAD42 HERAD42F.
       WRGLAS42 WRGLS42F.
       ANYLMI17 ANYLM17F.
       CHPMED42 CHPMD42F.
       CHPMHB42 CHPHB42F.
       CHPMCN42 CHPMC42F.
       CHSERV42 CHSRV42F.
       CHSRHB42 CHRHB42F.
       CHSRCN42 CHSCN42F.
       CHLIMI42 CHLIM42F.
       CHLIHB42 CHLHB42F.
       CHLICO42 CHLIC42F.
       CHTHER42 CHTHR42F.
       CHTHHB42 CHTHB42F.
       CHTHCO42 CHTHC42F.
       CHCOUN42 CHCON42F.
       CHEMPB42 CHMPB42F.
       CSHCN42  CSHC42F.
       MOMPRO42 MOMPR42F.
       DADPRO42 DADPR42F.
       UNHAP42  UNHAP42F.
       SCHLBH42 SCLBH42F.
       HAVFUN42 HVFUN42F.
       ADUPRO42 ADLPR42F.
       NERVAF42 NRVAF42F.
       SIBPRO42 SIBPR42F.
       KIDPRO42 KIDPR42F.
       SPRPRO42 SPRPR42F.
       SCHPRO42 SCHPR42F.
       HOMEBH42 HOMBH42F.
       TRBLE42  TRBLE42F.
       CHILCR42 CHLCR42F.
       CHILWW42 CHILW42F.
       CHRTCR42 CHRTC42F.
       CHRTWW42 CHRTW42F.
       CHAPPT42 CHAPT42F.
       CHNDCR42 CNDCR42F.
       CHENEC42 CHNCR42F.
       CHLIST42 CHLST42F.
       CHEXPL42 CHEXP42F.
       CHRESP42 CHRSP42F.
       CHPRTM42 CHPTM42F.
       CHHECR42 CHHCR42F.
       CHSPEC42 CHSPC42F.
       CHEYRE42 CHPRE42F.
       MESHGT42 MSHGT42F.
       WHNHGT42 WNHGT42F.
       MESWGT42 MSWGT42F.
       WHNWGT42 WNWGT42F.
       CHBMIX42 CHBMI42F.
       MESVIS42 MSVIS42F.
       MESBPR42 MESBP42F.
       WHNBPR42 WHNBP42F.
       DENTAL42 DENTL42F.
       WHNDEN42 WHNDN42F.
       EATHLT42 ETHLT42F.
       WHNEAT42 WHNET42F.
       PHYSCL42 PHSCL42F.
       WHNPHY42 WHNPH42F.
       SAFEST42 SAFST42F.
       WHNSAF42 WHNSF42F.
       BOOST42  BOOST42F.
       WHNBST42 WHNBS42F.
       LAPBLT42 LPBLT42F.
       WHNLAP42 WHNLP42F.
       HELMET42 HLMET42F.
       WHNHEL42 WHNHL42F.
       NOSMOK42 NSMOK42F.
       WHNSMK42 WHNSM42F.
       TIMALN42 TMALN42F.
       LSTETH53 LSTTH53F.
       PHYEXE53 PHYEX53F.
       OFTSMK53 OFSMK53F.
       SAQELIG  SAQELIG.
       ADPROX42 ADPRX42F.
       ADGENH42 ADGEN42F.
       ADDAYA42 ADDAY42F.
       ADCLIM42 ADCLM42F.
       ADACLS42 ADACL42F.
       ADWKLM42 ADWKL42F.
       ADEMLS42 ADEML42F.
       ADMWCF42 ADMCF42F.
       ADPAIN42 ADPAI42F.
       ADPCFL42 ADPCF42F.
       ADENGY42 ADENG42F.
       ADPRST42 ADPST42F.
       ADSOCA42 ADSOC42F.
       ADNERV42 ADNRV42F.
       ADHOPE42 ADHPE42F.
       ADREST42 ADRES42F.
       ADSAD42  ADSAD42F.
       ADEFRT42 ADFRT42F.
       ADWRTH42 ADWTH42F.
       K6SUM42  K6SUM42F.
       ADINTR42 ADNTR42F.
       ADDPRS42 ADPRS42F.
       PHQ242   PHQ242F.
       ADINSA42 ADINS42F.
       ADINSB42 ADNSB42F.
       ADRISK42 ADRSK42F.
       ADOVER42 ADOVR42F.
       ADILCR42 ADILC42F.
       ADILWW42 ADILW42F.
       ADRTCR42 ADRCR42F.
       ADRTWW42 ADRTW42F.
       ADAPPT42 ADAPT42F.
       ADHECR42 ADHEC42F.
       ADINST42 ADINT42F.
       ADEZUN42 ADEZU42F.
       ADTLHW42 ADTLH42F.
       ADFFRM42 ADFRM42F.
       ADFHLP42 ADFHP42F.
       ADEXPL42 ADEXP42F.
       ADLIST42 ADLST42F.
       ADRESP42 ADRSP42F.
       ADPRTM42 ADPTM42F.
       ADSMOK42 ADSMO42F.
       ADNSMK42 ADSMK42F.
       ADSPCL42 ADSPL42F.
       ADSNSP42 ADSSP42F.
       ADCMPM42 ADCMM42F.
       ADCMPY42 ADCMY42F.
       ADLANG42 ADLNG42F.
       DSDIA53  DSDIA53F.
       DSA1C53  DSA1C53F.
       DSFT1853 DFT1853F.
       DSFT1753 DSF1753F.
       DSFT1653 DSF1653F.
       DSFB1653 DFB1653F.
       DSFTNV53 DFTNV53F.
       DSEY1853 DSY1853F.
       DSEY1753 DSY1753F.
       DSEY1653 DSY1653F.
       DSEB1653 DSB1653F.
       DSEYNV53 DSEYN53F.
       DSCH1853 DCH1853F.
       DSCH1753 DCH1753F.
       DSCH1653 DCH1653F.
       DSCB1653 DCB1653F.
       DSCHNV53 DCHNV53F.
       DSFL1853 DFL1853F.
       DSFL1753 DFL1753F.
       DSFL1653 DFL1653F.
       DSVB1653 DVB1653F.
       DSFLNV53 DFLNV53F.
       DSKIDN53 DSKID53F.
       DSEYPR53 DSEYP53F.
       DSDIET53 DSDIT53F.
       DSMED53  DSMED53F.
       DSINSU53 DSINS53F.
       DSCPCP53 DCPCP53F.
       DSCNPC53 DCNPC53F.
       DSCPHN53 DCPHN53F.
       DSCINT53 DCINT53F.
       DSCGRP53 DCGRP53F.
       DSCONF53 DCONF53F.
       DSPRX53  DSPRX53F.
       CCNRDI31 CNRDI31F.
       CDIAG31  CDIAG31F.
       CTRTMT31 CTRTM31F.
       CLSTRT31 CLSTR31F.
       CBCK31   CBCK31F.
       CBCKYR31 CBKYR31F.
       CFTRT31  CFTRT31F.
       CWRKP31  CWRKP31F.
       CTMOFF31 CTMOF31F.
       CWYCNG31 CYCNG31F.
       CEXTM31  CEXTM31F.
       CEXTDI31 CEXTD31F.
       CEXTRT31 CEXTR31F.
       CEXTLT31 CEXTL31F.
       CEXTMT31 CEXMT31F.
       CNPTLD31 CPTLD31F.
       CNGFLX31 CGFLX31F.
       CPROM31  CPROM31F.
       CERET31  CERET31F.
       CPTASK31 CPTSK31F.
       CMTASK31 CMTSK31F.
       CLPROD31 CLPRD31F.
       CFRET31  CFRET31F.
       CLHINS31 CLHIN31F.
       CCLHIN31 CCLHI31F.
       CSLHIN31 CSLHI31F.
       CFMEM31  CFMEM31F.
       CFMSPS31 CFMSP31F.
       CFMCHD31 CFMCH31F.
       CFMSIB31 CFMSB31F.
       CFMPAR31 CFMPA31F.
       CFMREL31 CFMRL31F.
       CFMFND31 CFMFD31F.
       CFMOTR31 CFMOT31F.
       CFMTOF31 CFMTO31F.
       CFM2MT31 CFM2M31F.
       CINCOV31 CINCV31F.
       CINPRV31 CINPR31F.
       CINMDC31 CINMD31F.
       CINMDG31 CINMG31F.
       CINMDA31 CINMA31F.
       CINMLT31 CINML31F.
       CINIHS31 CIIHS31F.
       CINSHP31 CINSH31F.
       CINOGP31 CINOG31F.
       CINSSP31 CINSS31F.
       CINNCV31 CINNC31F.
       CINNOC31 CINOC31F.
       CINADQ31 CINAD31F.
       CINCMP31 CINCP31F.
       CINDIF31 CINDF31F.
       CINAFD31 CINAF31F.
       CNCMED31 CNCMD31F.
       CNCTRP31 CNCTR31F.
       CNCLOD31 CNCLD31F.
       CNCCHD31 CNCCH31F.
       CNCHME31 CNCHM31F.
       CNCNON31 CNCNO31F.
       CNCNTS31 CNCNT31F.
       CFNDBT31 CFDBT31F.
       CFNAMT31 CFAMT31F.
       CFNVAC31 CFVAC31F.
       CFNPUR31 CFPUR31F.
       CFNSPD31 CFSPD31F.
       CFNSAV31 CFSAV31F.
       CFNLIV31 CFLIV31F.
       CFNOTH31 CFOTH31F.
       CFNUNB31 CFUNB31F.
       CFNBNK31 CFBNK31F.
       CFNPMT31 CFPMT31F.
       CFNSTB31 CFSTB31F.
       CFNINC31 CFINC31F.
       CMCFUP31 CMFUP31F.
       CMCEFF31 CMEFF31F.
       CMCPSY31 CMPSY31F.
       CMCSTY31 CMSTY31F.
       CMCOST31 CCOST31F.
       CMCTRT31 CCTRT31F.
       CDLPRS31 CDLPR31F.
       CDLVST31 CDLVT31F.
       CDLTRT31 CDLTR31F.
       CDLFUP31 CDFUP31F.
       CDLMNT31 CDLMN31F.
       CDLOTH31 CDOTH31F.
       CMCNEC31 CMNEC31F.
       CMNAFF31 CNAFF31F.
       CMNINS31 CNINS31F.
       CMNACC31 CNACC31F.
       CMNOFF31 CNOFF31F.
       CMNTIM31 CNTIM31F.
       CMNPLC31 CNPLC31F.
       CMNCRE31 CNCRE31F.
       CMNLNG31 CNLNG31F.
       CEFACT31 CEACT31F.
       CEFLCT31 CFLCT31F.
       CEFOG31  CEFOG31F.
       CEFMTL31 CFMTL31F.
       CEFUND31 CFUND31F.
       CEFBCK31 CFBCK31F.
       CEFSTG31 CFSTG31F.
       CEFCOP31 CFCOP31F.
       CEFPOS31 CFPOS31F.
       CEFHLT31 CFHLT31F.
       CEFPHL31 CFPHL31F.
       CEFPAC31 CFPAC31F.
       CEFPIN31 CFPIN31F.
       CEFFTG31 CFFTG31F.
       CEFQLF31 CFQLF31F.
       CEFMHL31 CFMHL31F.
       CEFRLT31 CFRLT31F.
       CEFMPR31 CFMPR31F.
       DDNWRK17 DNWRK17F.
       OTHDYS17 OTHDS17F.
       OTHNDD17 OTHND17F.
       ACCELI42 ACELI42F.
       HAVEUS42 HVEUS42F.
       YNOUSC42 YNUSC42F.
       NOREAS42 NORES42F.
       SELDSI42 SELDS42F.
       NEWARE42 NEWAR42F.
       DKWHRU42 DKWHR42F.
       USCNOT42 USCNO42F.
       PERSLA42 PERLA42F.
       DIFFPL42 DIFPL42F.
       INSRPL42 INSRP42F.
       MYSELF42 MYSLF42F.
       CARECO42 CARCO42F.
       NOHINS42 NOHIN42F.
       OTHINS42 OTHIN42F.
       JOBRSN42 JBRSN42F.
       NEWDOC42 NWDOC42F.
       DOCELS42 DOCLS42F.
       NOLIKE42 NLIKE42F.
       HEALTH42 HLTH42F.
       KNOWDR42 KNODR42F.
       NOGODR42 NGODR42F.
       TRANS42  TRANS42F.
       CLINIC42 CLNIC42F.
       OTHREA42 OTHRE42F.
       PROVTY42 PRVTY42F.
       PLCTYP42 PLTYP42F.
       TMTKUS42 TMTKU42F.
       TYPEPE42 TYPEP42F.
       LOCATN42 LOCAT42F.
       HSPLAP42 HSPLA42F.
       WHITPR42 WHTPR42F.
       BLCKPR42 BLKPR42F.
       ASIANP42 ASANP42F.
       NATAMP42 NATAM42F.
       PACISP42 PACIS42F.
       OTHRCP42 OTHRP42F.
       GENDRP42 GENDP42F.
       MINORP42 MINRP42F.
       PREVEN42 PREVN42F.
       REFFRL42 REFRL42F.
       ONGONG42 ONGON42F.
       PHNREG42 PHNRG42F.
       OFFHOU42 OFFHO42F.
       AFTHOU42 AFTHO42F.
       TREATM42 TREAT42F.
       RESPCT42 RSPCT42F.
       DECIDE42 DCIDE42F.
       EXPLOP42 EXPLP42F.
       PRVSPK42 PRVSP42F.
       MDUNAB42 MDUNA42F.
       MDUNRS42 MDUNR42F.
       MDDLAY42 MDLAY42F.
       MDDLRS42 MDLRS42F.
       DNUNAB42 DNUNA42F.
       DNUNRS42 DNUNR42F.
       DNDLAY42 DNDLY42F.
       DNDLRS42 DNDLR42F.
       PMUNAB42 PMUNA42F.
       PMUNRS42 PMUNR42F.
       PMDLAY42 PMDLY42F.
       PMDLRS42 PMDLR42F.
       EMPST31  EMPST31F.
       EMPST42  EMPST42F.
       EMPST53  EMPST53F.
       RNDFLG31 RDFLG31F.
       MORJOB31 MORJB31F.
       MORJOB42 MORJB42F.
       MORJOB53 MORJB53F.
       EVRWRK   EVRWRK.
       HRWG31X  HRWG31X.
       HRWG42X  HRWG42X.
       HRWG53X  HRWG53X.
       HRWGIM31 HRWIM31F.
       HRWGIM42 HRWIM42F.
       HRWGIM53 HRWIM53F.
       HRHOW31  HRHOW31F.
       HRHOW42  HRHOW42F.
       HRHOW53  HRHOW53F.
       DIFFWG31 DIFWG31F.
       DIFFWG42 DIFWG42F.
       DIFFWG53 DIFWG53F.
       NHRWG31  NHRWG31F.
       NHRWG42  NHRWG42F.
       NHRWG53  NHRWG53F.
       HOUR31   HOUR31F.
       HOUR42   HOUR42F.
       HOUR53   HOUR53F.
       TEMPJB31 TMPJB31F.
       TEMPJB42 TMPJB42F.
       TEMPJB53 TMPJB53F.
       SSNLJB31 SSNJB31F.
       SSNLJB42 SSNJB42F.
       SSNLJB53 SSNJB53F.
       SELFCM31 SLFCM31F.
       SELFCM42 SLFCM42F.
       SELFCM53 SLFCM53F.
       DISVW31X DISVW31X.
       DISVW42X DISVW42X.
       DISVW53X DISVW53X.
       CHOIC31  CHOIC31F.
       CHOIC42  CHOIC42F.
       CHOIC53  CHOIC53F.
       INDCAT31 INCAT31F.
       INDCAT42 INCAT42F.
       INDCAT53 INCAT53F.
       NUMEMP31 NMEMP31F.
       NUMEMP42 NMEMP42F.
       NUMEMP53 NMEMP53F.
       MORE31   MORE31F.
       MORE42   MORE42F.
       MORE53   MORE53F.
       UNION31  UNION31F.
       UNION42  UNION42F.
       UNION53  UNION53F.
       NWK31    NWK31F.
       NWK42    NWK42F.
       NWK53    NWK53F.
       CHGJ3142 CHJ3142F.
       CHGJ4253 CHJ4253F.
       YCHJ3142 YCJ3142F.
       YCHJ4253 YCJ4253F.
       STJBMM31 STJBM31F.
       STJBYY31 STJBY31F.
       STJBMM42 STJBM42F.
       STJBYY42 STJBY42F.
       STJBMM53 STJBM53F.
       STJBYY53 STJBY53F.
       EVRETIRE EVRETIRE.
       OCCCAT31 OCCAT31F.
       OCCCAT42 OCCAT42F.
       OCCCAT53 OCCAT53F.
       PAYVAC31 PAYVC31F.
       PAYVAC42 PAYVC42F.
       PAYVAC53 PAYVC53F.
       SICPAY31 SCPAY31F.
       SICPAY42 SCPAY42F.
       SICPAY53 SCPAY53F.
       PAYDR31  PAYDR31F.
       PAYDR42  PAYDR42F.
       PAYDR53  PAYDR53F.
       RETPLN31 RTPLN31F.
       RETPLN42 RTPLN42F.
       RETPLN53 RTPLN53F.
       BSNTY31  BSNTY31F.
       BSNTY42  BSNTY42F.
       BSNTY53  BSNTY53F.
       JOBORG31 JBORG31F.
       JOBORG42 JBORG42F.
       JOBORG53 JBORG53F.
       HELD31X  HELD31X.
       HELD42X  HELD42X.
       HELD53X  HELD53X.
       OFFER31X OFFER31X.
       OFFER42X OFFER42X.
       OFFER53X OFFER53X.
       OFREMP31 OFREP31F.
       OFREMP42 OFREP42F.
       OFREMP53 OFREP53F.
       EMPST31H EMPST31H.
       EMPST42H EMPST42H.
       EMPST53H EMPST53H.
       SLFCM31H SLFCM31H.
       SLFCM42H SLFCM42H.
       SLFCM53H SLFCM53H.
       NMEMP31H NMEMP31H.
       NMEMP42H NMEMP42H.
       NMEMP53H NMEMP53H.
       MORE31H  MORE31H.
       MORE42H  MORE42H.
       MORE53H  MORE53H.
       INDCT31H INDCT31H.
       INDCT42H INDCT42H.
       INDCT53H INDCT53H.
       OCCCT31H OCCCT31H.
       OCCCT42H OCCCT42H.
       OCCCT53H OCCCT53H.
       HOUR31H  HOUR31H.
       HOUR42H  HOUR42H.
       HOUR53H  HOUR53H.
       JBORG31H JBORG31H.
       JBORG42H JBORG42H.
       JBORG53H JBORG53H.
       UNION31H UNION31H.
       UNION42H UNION42H.
       UNION53H UNION53H.
       BSNTY31H BSNTY31H.
       BSNTY42H BSNTY42H.
       BSNTY53H BSNTY53H.
       HRWG31H  HRWG31H.
       HRWG42H  HRWG42H.
       HRWG53H  HRWG53H.
       CMJHLD31 CMJHD31F.
       CMJHLD42 CMJHD42F.
       CMJHLD53 CMJHD53F.
       OFFER31H OFFER31H.
       OFFER42H OFFER42H.
       OFFER53H OFFER53H.
       OFEMP31H OFEMP31H.
       OFEMP42H OFEMP42H.
       OFEMP53H OFEMP53H.
       PYVAC31H PYVAC31H.
       PYVAC42H PYVAC42H.
       PYVAC53H PYVAC53H.
       SCPAY31H SCPAY31H.
       SCPAY42H SCPAY42H.
       SCPAY53H SCPAY53H.
       PAYDR31H PAYDR31H.
       PAYDR42H PAYDR42H.
       PAYDR53H PAYDR53H.
       RTPLN31H RTPLN31H.
       RTPLN42H RTPLN42H.
       RTPLN53H RTPLN53H.
       FILEDR17 FILED17F.
       WILFIL17 WLFIL17F.
       FLSTAT17 FSTAT17F.
       FILER17  FILER17F.
       JTINRU17 JTNRU17F.
       JNTPID17 JNTP17F.
       TAXFRM17 TXFRM17F.
       FOODST17 FOOST17F.
       FOODMN17 FOODM17F.
       FOODVL17 FOODV17F.
       TTLP17X  TTLP17X.
       FAMINC17 FAMIN17F.
       POVCAT17 PVCAT17F.
       POVLEV17 PVLEV17F.
       WAGEP17X WAGEP17X.
       WAGIMP17 WAGIP17F.
       BUSNP17X BUSNP17X.
       BUSIMP17 BUSIM17F.
       UNEMP17X UNEMP17X.
       UNEIMP17 UNEIM17F.
       WCMPP17X WCMPP17X.
       WCPIMP17 WCPIM17F.
       INTRP17X INTRP17X.
       INTIMP17 INTIM17F.
       DIVDP17X DIVDP17X.
       DIVIMP17 DIVIM17F.
       SALEP17X SALEP17X.
       SALIMP17 SALIM17F.
       PENSP17X PENSP17X.
       PENIMP17 PENIM17F.
       SSECP17X SSECP17X.
       SSCIMP17 SSCIN17F.
       TRSTP17X TRSTP17X.
       TRTIMP17 TRTIM17F.
       VETSP17X VETSP17X.
       VETIMP17 VETIM17F.
       IRASP17X IRASP17X.
       IRAIMP17 IRAIM17F.
       ALIMP17X ALIMP17X.
       ALIIMP17 ALIIM17F.
       CHLDP17X CHLDP17X.
       CHLIMP17 CHLIM17F.
       CASHP17X CASHP17X.
       CSHIMP17 CSHIM17F.
       SSIP17X  SSIP17X.
       SSIIMP17 SSIIM17F.
       PUBP17X  PUBP17X.
       PUBIMP17 PUBIM17F.
       OTHRP17X OTHRP17X.
       OTHIMP17 OTHIM17F.
       HIEUIDX  $HIEUIDX.
       TRIJA17X TRIJA17X.
       TRIFE17X TRIFE17X.
       TRIMA17X TRIMA17X.
       TRIAP17X TRIAP17X.
       TRIMY17X TRIMY17X.
       TRIJU17X TRIJU17X.
       TRIJL17X TRIJL17X.
       TRIAU17X TRIAU17X.
       TRISE17X TRISE17X.
       TRIOC17X TRIOC17X.
       TRINO17X TRINO17X.
       TRIDE17X TRIDE17X.
       MCRJA17  MCRJA17F.
       MCRFE17  MCRFE17F.
       MCRMA17  MCRMA17F.
       MCRAP17  MCRAP17F.
       MCRMY17  MCRMY17F.
       MCRJU17  MCRJU17F.
       MCRJL17  MCRJL17F.
       MCRAU17  MCRAU17F.
       MCRSE17  MCRSE17F.
       MCROC17  MCROC17F.
       MCRNO17  MCRNO17F.
       MCRDE17  MCRDE17F.
       MCRJA17X MCRJA17X.
       MCRFE17X MCRFE17X.
       MCRMA17X MCRMA17X.
       MCRAP17X MCRAP17X.
       MCRMY17X MCRMY17X.
       MCRJU17X MCRJU17X.
       MCRJL17X MCRJL17X.
       MCRAU17X MCRAU17X.
       MCRSE17X MCRSE17X.
       MCROC17X MCROC17X.
       MCRNO17X MCRNO17X.
       MCRDE17X MCRDE17X.
       MCDJA17  MCDJA17F.
       MCDFE17  MCDFE17F.
       MCDMA17  MCDMA17F.
       MCDAP17  MCDAP17F.
       MCDMY17  MCDMY17F.
       MCDJU17  MCDJU17F.
       MCDJL17  MCDJL17F.
       MCDAU17  MCDAU17F.
       MCDSE17  MCDSE17F.
       MCDOC17  MCDOC17F.
       MCDNO17  MCDNO17F.
       MCDDE17  MCDDE17F.
       MCDJA17X MCDJA17X.
       MCDFE17X MCDFE17X.
       MCDMA17X MCDMA17X.
       MCDAP17X MCDAP17X.
       MCDMY17X MCDMY17X.
       MCDJU17X MCDJU17X.
       MCDJL17X MCDJL17X.
       MCDAU17X MCDAU17X.
       MCDSE17X MCDSE17X.
       MCDOC17X MCDOC17X.
       MCDNO17X MCDNO17X.
       MCDDE17X MCDDE17X.
       OPAJA17  OPAJA17F.
       OPAFE17  OPAFE17F.
       OPAMA17  OPAMA17F.
       OPAAP17  OPAAP17F.
       OPAMY17  OPAMY17F.
       OPAJU17  OPAJU17F.
       OPAJL17  OPAJL17F.
       OPAAU17  OPAAU17F.
       OPASE17  OPASE17F.
       OPAOC17  OPAOC17F.
       OPANO17  OPANO17F.
       OPADE17  OPADE17F.
       OPBJA17  OPBJA17F.
       OPBFE17  OPBFE17F.
       OPBMA17  OPBMA17F.
       OPBAP17  OPBAP17F.
       OPBMY17  OPBMY17F.
       OPBJU17  OPBJU17F.
       OPBJL17  OPBJL17F.
       OPBAU17  OPBAU17F.
       OPBSE17  OPBSE17F.
       OPBOC17  OPBOC17F.
       OPBNO17  OPBNO17F.
       OPBDE17  OPBDE17F.
       PUBJA17X PUBJA17X.
       PUBFE17X PUBFE17X.
       PUBMA17X PUBMA17X.
       PUBAP17X PUBAP17X.
       PUBMY17X PUBMY17X.
       PUBJU17X PUBJU17X.
       PUBJL17X PUBJL17X.
       PUBAU17X PUBAU17X.
       PUBSE17X PUBSE17X.
       PUBOC17X PUBOC17X.
       PUBNO17X PUBNO17X.
       PUBDE17X PUBDE17X.
       PEGJA17  PEGJA17F.
       PEGFE17  PEGFE17F.
       PEGMA17  PEGMA17F.
       PEGAP17  PEGAP17F.
       PEGMY17  PEGMY17F.
       PEGJU17  PEGJU17F.
       PEGJL17  PEGJL17F.
       PEGAU17  PEGAU17F.
       PEGSE17  PEGSE17F.
       PEGOC17  PEGOC17F.
       PEGNO17  PEGNO17F.
       PEGDE17  PEGDE17F.
       PDKJA17  PDKJA17F.
       PDKFE17  PDKFE17F.
       PDKMA17  PDKMA17F.
       PDKAP17  PDKAP17F.
       PDKMY17  PDKMY17F.
       PDKJU17  PDKJU17F.
       PDKJL17  PDKJL17F.
       PDKAU17  PDKAU17F.
       PDKSE17  PDKSE17F.
       PDKOC17  PDKOC17F.
       PDKNO17  PDKNO17F.
       PDKDE17  PDKDE17F.
       PNGJA17  PNGJA17F.
       PNGFE17  PNGFE17F.
       PNGMA17  PNGMA17F.
       PNGAP17  PNGAP17F.
       PNGMY17  PNGMY17F.
       PNGJU17  PNGJU17F.
       PNGJL17  PNGJL17F.
       PNGAU17  PNGAU17F.
       PNGSE17  PNGSE17F.
       PNGOC17  PNGOC17F.
       PNGNO17  PNGNO17F.
       PNGDE17  PNGDE17F.
       POGJA17  POGJA17F.
       POGFE17  POGFE17F.
       POGMA17  POGMA17F.
       POGAP17  POGAP17F.
       POGMY17  POGMY17F.
       POGJU17  POGJU17F.
       POGJL17  POGJL17F.
       POGAU17  POGAU17F.
       POGSE17  POGSE17F.
       POGOC17  POGOC17F.
       POGNO17  POGNO17F.
       POGDE17  POGDE17F.
       PRSJA17  PRSJA17F.
       PRSFE17  PRSFE17F.
       PRSMA17  PRSMA17F.
       PRSAP17  PRSAP17F.
       PRSMY17  PRSMY17F.
       PRSJU17  PRSJU17F.
       PRSJL17  PRSJL17F.
       PRSAU17  PRSAU17F.
       PRSSE17  PRSSE17F.
       PRSOC17  PRSOC17F.
       PRSNO17  PRSNO17F.
       PRSDE17  PRSDE17F.
       POUJA17  POUJA17F.
       POUFE17  POUFE17F.
       POUMA17  POUMA17F.
       POUAP17  POUAP17F.
       POUMY17  POUMY17F.
       POUJU17  POUJU17F.
       POUJL17  POUJL17F.
       POUAU17  POUAU17F.
       POUSE17  POUSE17F.
       POUOC17  POUOC17F.
       POUNO17  POUNO17F.
       POUDE17  POUDE17F.
       PRXJA17  PRXJA17F.
       PRXFE17  PRXFE17F.
       PRXMA17  PRXMA17F.
       PRXAP17  PRXAP17F.
       PRXMY17  PRXMY17F.
       PRXJU17  PRXJU17F.
       PRXJL17  PRXJL17F.
       PRXAU17  PRXAU17F.
       PRXSE17  PRXSE17F.
       PRXOC17  PRXOC17F.
       PRXNO17  PRXNO17F.
       PRXDE17  PRXDE17F.
       PRIJA17  PRIJA17F.
       PRIFE17  PRIFE17F.
       PRIMA17  PRIMA17F.
       PRIAP17  PRIAP17F.
       PRIMY17  PRIMY17F.
       PRIJU17  PRIJU17F.
       PRIJL17  PRIJL17F.
       PRIAU17  PRIAU17F.
       PRISE17  PRISE17F.
       PRIOC17  PRIOC17F.
       PRINO17  PRINO17F.
       PRIDE17  PRIDE17F.
       HPEJA17  HPEJA17F.
       HPEFE17  HPEFE17F.
       HPEMA17  HPEMA17F.
       HPEAP17  HPEAP17F.
       HPEMY17  HPEMY17F.
       HPEJU17  HPEJU17F.
       HPEJL17  HPEJL17F.
       HPEAU17  HPEAU17F.
       HPESE17  HPESE17F.
       HPEOC17  HPEOC17F.
       HPENO17  HPENO17F.
       HPEDE17  HPEDE17F.
       HPDJA17  HPDJA17F.
       HPDFE17  HPDFE17F.
       HPDMA17  HPDMA17F.
       HPDAP17  HPDAP17F.
       HPDMY17  HPDMY17F.
       HPDJU17  HPDJU17F.
       HPDJL17  HPDJL17F.
       HPDAU17  HPDAU17F.
       HPDSE17  HPDSE17F.
       HPDOC17  HPDOC17F.
       HPDNO17  HPDNO17F.
       HPDDE17  HPDDE17F.
       HPNJA17  HPNJA17F.
       HPNFE17  HPNFE17F.
       HPNMA17  HPNMA17F.
       HPNAP17  HPNAP17F.
       HPNMY17  HPNMY17F.
       HPNJU17  HPNJU17F.
       HPNJL17  HPNJL17F.
       HPNAU17  HPNAU17F.
       HPNSE17  HPNSE17F.
       HPNOC17  HPNOC17F.
       HPNNO17  HPNNO17F.
       HPNDE17  HPNDE17F.
       HPOJA17  HPOJA17F.
       HPOFE17  HPOFE17F.
       HPOMA17  HPOMA17F.
       HPOAP17  HPOAP17F.
       HPOMY17  HPOMY17F.
       HPOJU17  HPOJU17F.
       HPOJL17  HPOJL17F.
       HPOAU17  HPOAU17F.
       HPOSE17  HPOSE17F.
       HPOOC17  HPOOC17F.
       HPONO17  HPONO17F.
       HPODE17  HPODE17F.
       HPSJA17  HPSJA17F.
       HPSFE17  HPSFE17F.
       HPSMA17  HPSMA17F.
       HPSAP17  HPSAP17F.
       HPSMY17  HPSMY17F.
       HPSJU17  HPSJU17F.
       HPSJL17  HPSJL17F.
       HPSAU17  HPSAU17F.
       HPSSE17  HPSSE17F.
       HPSOC17  HPSOC17F.
       HPSNO17  HPSNO17F.
       HPSDE17  HPSDE17F.
       HPXJA17  HPXJA17F.
       HPXFE17  HPXFE17F.
       HPXMA17  HPXMA17F.
       HPXAP17  HPXAP17F.
       HPXMY17  HPXMY17F.
       HPXJU17  HPXJU17F.
       HPXJL17  HPXJL17F.
       HPXAU17  HPXAU17F.
       HPXSE17  HPXSE17F.
       HPXOC17  HPXOC17F.
       HPXNO17  HPXNO17F.
       HPXDE17  HPXDE17F.
       HPRJA17  HPRJA17F.
       HPRFE17  HPRFE17F.
       HPRMA17  HPRMA17F.
       HPRAP17  HPRAP17F.
       HPRMY17  HPRMY17F.
       HPRJU17  HPRJU17F.
       HPRJL17  HPRJL17F.
       HPRAU17  HPRAU17F.
       HPRSE17  HPRSE17F.
       HPROC17  HPROC17F.
       HPRNO17  HPRNO17F.
       HPRDE17  HPRDE17F.
       INSJA17X INSJA17X.
       INSFE17X INSFE17X.
       INSMA17X INSMA17X.
       INSAP17X INSAP17X.
       INSMY17X INSMY17X.
       INSJU17X INSJU17X.
       INSJL17X INSJL17X.
       INSAU17X INSAU17X.
       INSSE17X INSSE17X.
       INSOC17X INSOC17X.
       INSNO17X INSNO17X.
       INSDE17X INSDE17X.
       PRVEV17  PRVEV17F.
       TRIEV17  TRIEV17F.
       MCREV17  MCREV17F.
       MCDEV17  MCDEV17F.
       OPAEV17  OPAEV17F.
       OPBEV17  OPBEV17F.
       UNINS17  UNINS17F.
       INSCOV17 INSCV17F.
       INSURC17 INSUC17F.
       TRIST31X TRIST31X.
       TRIST42X TRIST42X.
       TRIST17X TRIST17F.
       TRIPR31X TRIPR31X.
       TRIPR42X TRIPR42X.
       TRIPR17X TRIPR17X.
       TRIEX31X TRIEX31X.
       TRIEX42X TRIEX42X.
       TRIEX17X TRIEX17X.
       TRILI31X TRILI31X.
       TRILI42X TRILI42X.
       TRILI17X TRILI17X.
       TRICH31X TRICH31X.
       TRICH42X TRICH42X.
       TRICH17X TRICH17X.
       MCRPD31  MCRPD31F.
       MCRPD42  MCRPD42F.
       MCRPD17  MCRPD17F.
       MCRPD31X MCRPD31X.
       MCRPD42X MCRPD42X.
       MCRPD17X MCRPD17X.
       MCRPB31  MCRPB31F.
       MCRPB42  MCRPB42F.
       MCRPB17  MCRPB17F.
       MCRPHO31 MCRPH31F.
       MCRPHO42 MCRPH42F.
       MCRPHO17 MCRPH17F.
       MCDHMO31 MCDHM31F.
       MCDHMO42 MCDHM42F.
       MCDHMO17 MCDHM17F.
       MCDMC31  MCDMC31F.
       MCDMC42  MCDMC42F.
       MCDMC17  MCDMC17F.
       PRVHMO31 PRVHM31F.
       PRVHMO42 PRVHM42F.
       PRVHMO17 PRVHM17F.
       FSAGT31  FSAGT31F.
       HASFSA31 HSFSA31F.
       FSAAMT31 FSAMT31F.
       PROBPY42 PROBP42F.
       CRFMPY42 CRFPY42F.
       PYUNBL42 PYUNB42F.
       PREVCOVR PREVCOVR.
       COVRMM   COVRMM.
       COVRYY   COVRYY.
       WASESTB  WESESTB.
       WASMCARE WASMCARE.
       WASMCAID WASMCAID.
       WASCHAMP WASCHAMP.
       WASVA    WASVA.
       WASPRIV  WASPRIV.
       WASOTGOV WASOTGOV.
       WASAFDC  WASAFDC.
       WASSSI   WASSSI.
       WASSTAT1 WASTAT1F.
       WASSTAT2 WASTAT2F.
       WASSTAT3 WASSTT3F.
       WASSTAT4 WASSTT4F.
       WASOTHER WASOTHER.
       NOINSBEF NOINSBEF.
       NOINSTM  NOINSTM.
       NOINUNIT NOINUNIT.
       MORECOVR MORECOVR.
       INSENDMM INSENDMM.
       INSENDYY INSENDYY.
       TRICR31X TRICR31X.
       TRICR42X TRICR42X.
       TRICR53X TRICR53X.
       TRICR17X TRICR17X.
       TRIAT31X TRIAT31X.
       TRIAT42X TRIAT42X.
       TRIAT53X TRIAT53X.
       TRIAT17X TRIAT17X.
       MCAID31  MCAID31F.
       MCAID42  MCAID42F.
       MCAID53  MCAID53F.
       MCAID17  MCAID17F.
       MCAID31X MCAID31X.
       MCAID42X MCAID42X.
       MCAID53X MCAID53X.
       MCAID17X MCAID17X.
       MCARE31  MCARE31F.
       MCARE42  MCARE42F.
       MCARE53  MCARE53F.
       MCARE17  MCARE17F.
       MCARE31X MCARE31X.
       MCARE42X MCARE42X.
       MCARE53X MCARE53X.
       MCARE17X MCARE17X.
       MCDAT31X MCDAT31X.
       MCDAT42X MCDAT42X.
       MCDAT53X MCDAT53X.
       MCDAT17X MCDAT17X.
       OTPAAT31 OTPAT31F.
       OTPAAT42 OTPAT42F.
       OTPAAT53 OTPAT53F.
       OTPAAT17 OTPAT17F.
       OTPBAT31 OTPBT31F.
       OTPBAT42 OTPBT42F.
       OTPBAT53 OTPBT53F.
       OTPBAT17 OTPBT17F.
       OTPUBA31 OTPUB31F.
       OTPUBA42 OTPUB42F.
       OTPUBA53 OTPUB53F.
       OTPUBA17 OTPBA17F.
       OTPUBB31 OTPBB31F.
       OTPUBB42 OTPBB42F.
       OTPUBB53 OTPBB53F.
       OTPUBB17 OTPBB17F.
       PRIDK31  PRIDK31F.
       PRIDK42  PRIDK42F.
       PRIDK53  PRIDK53F.
       PRIDK17  PRIDK17F.
       PRIEU31  PRIEU31F.
       PRIEU42  PRIEU42F.
       PRIEU53  PRIEU53F.
       PRIEU17  PRIEU17F.
       PRING31  PRING31F.
       PRING42  PRING42F.
       PRING53  PRING53F.
       PRING17  PRING17F.
       PRIOG31  PRIOG31F.
       PRIOG42  PRIOG42F.
       PRIOG53  PRIOG53F.
       PRIOG17  PRIOG17F.
       PRIS31   PRIS31F.
       PRIS42   PRIS42F.
       PRIS53   PRIS53F.
       PRIS17   PRIS17F.
       PROUT31  PROUT31F.
       PROUT42  PROUT42F.
       PROUT53  PROUT53F.
       PROUT17  PROUT17F.
       PRSTX31  PRSTX31F.
       PRSTX42  PRSTX42F.
       PRSTX53  PRSTX53F.
       PRSTX17  PRSTX17F.
       PRIV31   PRIV31F.
       PRIV42   PRIV42F.
       PRIV53   PRIV53F.
       PRIV17   PRIV17F.
       PRIVAT31 PRIVT31F.
       PRIVAT42 PRIVT42F.
       PRIVAT53 PRIVT53F.
       PRIVAT17 PRIVT17F.
       PUB31X   PUB31X.
       PUB42X   PUB42X.
       PUB53X   PUB53X.
       PUB17X   PUB17X.
       PUBAT31X PUBAT31X.
       PUBAT42X PUBAT42X.
       PUBAT53X PUBAT53X.
       PUBAT17X PUBAT17X.
       INS31X   INS31X.
       INS42X   INS42X.
       INS53X   INS53X.
       INS17X   INS17X.
       INSAT31X INSAT31X.
       INSAT42X INSAT42X.
       INSAT53X INSAT53X.
       INSAT17X INSAT17X.
       DENTIN31 DINS31F.
       DENTIN42 DIN42F.
       DENTIN53 DINS53F.
       DNTINS31 DTINS31F.
       DNTINS17 DTINS17F.
       PMEDIN31 PMEDI31F.
       PMEDIN42 PMEDI42F.
       PMEDIN53 PMEDI53F.
       PMDINS31 PMINS31F.
       PMDINS17 PMINS17F.
       PMEDUP31 PMDUP31F.
       PMEDUP42 PMDUP42F.
       PMEDUP53 PMDUP53F.
       PMEDPY31 PMDPY31F.
       PMEDPY42 PMDPY42F.
       PMEDPY53 PMDPY53F.
       TOTTCH17 TOTCH17F.
       TOTEXP17 TOEXP17F.
       TOTSLF17 TOSLF17F.
       TOTMCR17 TOMCR17F.
       TOTMCD17 TOMCD17F.
       TOTPRV17 TOPRV17F.
       TOTVA17  TOTVA17F.
       TOTTRI17 TOTRI17F.
       TOTOFD17 TOOFD17F.
       TOTSTL17 TOSTL17F.
       TOTWCP17 TOWCP17F.
       TOTOPR17 TOOPR17F.
       TOTOPU17 TOOPU17F.
       TOTOSR17 TOOSR17F.
       TOTPTR17 TOPTR17F.
       TOTOTH17 TOOTH17F.
       OBTOTV17 OBTOT17F.
       OBVTCH17 OVTCH17F.
       OBVEXP17 OVEXP17F.
       OBVSLF17 OVSLF17F.
       OBVMCR17 OVMCR17F.
       OBVMCD17 OVMCD17F.
       OBVPRV17 OVPRV17F.
       OBVVA17  OBVVA17F.
       OBVTRI17 OVTRI17F.
       OBVOFD17 OVOFD17F.
       OBVSTL17 OVSTL17F.
       OBVWCP17 OVWCP17F.
       OBVOPR17 OVOPR17F.
       OBVOPU17 OVOPU17F.
       OBVOSR17 OVOSR17F.
       OBVPTR17 OVPTR17F.
       OBVOTH17 OVOTH17F.
       OBDRV17  OBDRV17F.
       OBDTCH17 ODTCH17F.
       OBDEXP17 ODEXP17F.
       OBDSLF17 ODSLF17F.
       OBDMCR17 ODMCR17F.
       OBDMCD17 ODMCD17F.
       OBDPRV17 ODPRV17F.
       OBDVA17  OBDVA17F.
       OBDTRI17 ODTRI17F.
       OBDOFD17 ODOFD17F.
       OBDSTL17 ODSTL17F.
       OBDWCP17 ODWCP17F.
       OBDOPR17 ODOPR17F.
       OBDOPU17 ODOPU17F.
       OBDOSR17 ODOSR17F.
       OBDPTR17 ODPTR17F.
       OBDOTH17 ODOTH17F.
       OPTOTV17 OPTOT17F.
       OPTTCH17 PTTCH17F.
       OPTEXP17 PTEXP17F.
       OPTSLF17 PTSLF17F.
       OPTMCR17 PTMCR17F.
       OPTMCD17 PTMCD17F.
       OPTPRV17 PTPRV17F.
       OPTVA17  OPTVA17F.
       OPTTRI17 PTTRI17F.
       OPTOFD17 PTOFD17F.
       OPTSTL17 PTSTL17F.
       OPTWCP17 PTWCP17F.
       OPTOPR17 PTOPR17F.
       OPTOPU17 PTOPU17F.
       OPTOSR17 PTOSR17F.
       OPTPTR17 PTPTR17F.
       OPTOTH17 PTOTH17F.
       OPFTCH17 PFTCH17F.
       OPFEXP17 PFEXP17F.
       OPFSLF17 PFSLF17F.
       OPFMCR17 PFMCR17F.
       OPFMCD17 PFMCD17F.
       OPFPRV17 PFPRV17F.
       OPFVA17  OPFVA17F.
       OPFTRI17 PFTRI17F.
       OPFOFD17 PFOFD17F.
       OPFSTL17 PFSTL17F.
       OPFWCP17 PFWCP17F.
       OPFOPR17 PFOPR17F.
       OPFOPU17 PFOPU17F.
       OPFOSR17 PFOSR17F.
       OPFPTR17 PFPTR17F.
       OPFOTH17 PFOTH17F.
       OPDEXP17 PDEXP17F.
       OPDTCH17 PDTCH17F.
       OPDSLF17 PDSLF17F.
       OPDMCR17 PDMCR17F.
       OPDMCD17 PDMCD17F.
       OPDPRV17 PDPRV17F.
       OPDVA17  PDVA17F.
       OPDTRI17 PDTRI17F.
       OPDOFD17 PDOFD17F.
       OPDSTL17 PDSTL17F.
       OPDWCP17 PDWCP17F.
       OPDOPR17 PDOPR17F.
       OPDOPU17 PDOPU17F.
       OPDOSR17 PDOSR17F.
       OPDPTR17 PDPTR17F.
       OPDOTH17 PDOTH17F.
       OPDRV17  OPDRV17F.
       OPVTCH17 PVTCH17F.
       OPVEXP17 PVEXP17F.
       OPVSLF17 PVSLF17F.
       OPVMCR17 PVMCR17F.
       OPVMCD17 PVMCD17F.
       OPVPRV17 PVPRV17F.
       OPVVA17  OPVVA17F.
       OPVTRI17 PVTRI17F.
       OPVOFD17 PVOFD17F.
       OPVSTL17 PVSTL17F.
       OPVWCP17 PVWCP17F.
       OPVOPR17 PVOPR17F.
       OPVOPU17 PVOPU17F.
       OPVOSR17 PVOSR17F.
       OPVPTR17 PVPTR17F.
       OPVOTH17 PVOTH17F.
       OPSEXP17 PSEXP17F.
       OPSTCH17 PSTCH17F.
       OPSSLF17 PSSLF17F.
       OPSMCR17 PSMCR17F.
       OPSMCD17 PSMCD17F.
       OPSPRV17 PSPRV17F.
       OPSVA17  OPSVA17F.
       OPSTRI17 PSTRI17F.
       OPSOFD17 PSOFD17F.
       OPSSTL17 PSSTL17F.
       OPSWCP17 PSWCP17F.
       OPSOPR17 PSOPR17F.
       OPSOPU17 PSOPU17F.
       OPSOSR17 PSOSR17F.
       OPSPTR17 PSPTR17F.
       OPSOTH17 PSOTH17F.
       ERTOT17  ERTOT17F.
       ERTTCH17 ETTCH17F.
       ERTEXP17 ETEXP17F.
       ERTSLF17 ETSLF17F.
       ERTMCR17 ETMCR17F.
       ERTMCD17 ETMCD17F.
       ERTPRV17 ETPRV17F.
       ERTVA17  ERTVA17F.
       ERTTRI17 ETTRI17F.
       ERTOFD17 ETOFD17F.
       ERTSTL17 ETSTL17F.
       ERTWCP17 ETWCP17F.
       ERTOPR17 ETOPR17F.
       ERTOPU17 ETOPU17F.
       ERTOSR17 EROSR17F.
       ERTPTR17 ETPTR17F.
       ERTOTH17 ETOTH17F.
       ERFTCH17 EFTCH17F.
       ERFEXP17 EFEXP17F.
       ERFSLF17 EFSLF17F.
       ERFMCR17 EFMCR17F.
       ERFMCD17 EFMCD17F.
       ERFPRV17 EFPRV17F.
       ERFVA17  ERFVA17F.
       ERFTRI17 EFTRI17F.
       ERFOFD17 EROFD17F.
       ERFSTL17 EFSTL17F.
       ERFWCP17 EFWCP17F.
       ERFOPR17 EFOPR17F.
       ERFOPU17 EPOPU17F.
       ERFOSR17 EFOSR17F.
       ERFPTR17 EFPTR17F.
       ERFOTH17 EFOTH17F.
       ERDEXP17 EDEXP17F.
       ERDTCH17 EDTCH17F.
       ERDSLF17 EDSLF17F.
       ERDMCR17 EDMCR17F.
       ERDMCD17 EDMCD17F.
       ERDPRV17 EDPRV17F.
       ERDVA17  ERDVA17F.
       ERDTRI17 EDTRI17F.
       ERDOFD17 EDOFD17F.
       ERDSTL17 EDSTL17F.
       ERDWCP17 EDWCP17F.
       ERDOPR17 EDOPR17F.
       ERDOPU17 EDOPU17F.
       ERDOSR17 EDOSR17F.
       ERDPTR17 EDPTR17F.
       ERDOTH17 EDOTH17F.
       IPDIS17  IPDIS17F.
       IPTEXP17 ITEXP17F.
       IPTTCH17 ITTCH17F.
       IPTSLF17 ITSLF17F.
       IPTMCR17 ITMCR17F.
       IPTMCD17 ITMCD17F.
       IPTPRV17 ITPRV17F.
       IPTVA17  IPTVA17F.
       IPTTRI17 ITTRI17F.
       IPTOFD17 ITOFD17F.
       IPTSTL17 ITSTL17F.
       IPTWCP17 ITWCP17F.
       IPTOPR17 ITOPR17F.
       IPTOPU17 ITOPU17F.
       IPTOSR17 ITOSR17F.
       IPTPTR17 ITPTR17F.
       IPTOTH17 ITOTH17F.
       IPFEXP17 IFEXP17F.
       IPFTCH17 IFTCH17F.
       IPFSLF17 IFSLF17F.
       IPFMCR17 IFMCR17F.
       IPFMCD17 IFMCD17F.
       IPFPRV17 IFPRV17F.
       IPFVA17  IPFVA17F.
       IPFTRI17 IFTRI17F.
       IPFOFD17 IFOFD17F.
       IPFSTL17 IFSTL17F.
       IPFWCP17 IFWCP17F.
       IPFOPR17 IFOPR17F.
       IPFOPU17 IFOPU17F.
       IPFOSR17 IFOSR17F.
       IPFPTR17 IFPTR17F.
       IPFOTH17 IFOTH17F.
       IPDEXP17 IDEXP17F.
       IPDTCH17 IDTCH17F.
       IPDSLF17 IDSLF17F.
       IPDMCR17 IDMCR17F.
       IPDMCD17 IDMCD17F.
       IPDPRV17 IDPRV17F.
       IPDVA17  IPDVS17F.
       IPDTRI17 IDTRI17F.
       IPDOFD17 IDOFD17F.
       IPDSTL17 IPSTL17F.
       IPDWCP17 IDWCP17F.
       IPDOPR17 IDOPR17F.
       IPDOPU17 IDOPU17F.
       IPDOSR17 IDOSR17F.
       IPDPTR17 IDPTR17F.
       IPDOTH17 IDOTH17F.
       IPNGTD17 INGTD17F.
       DVTOT17  DVTOT17F.
       DVTTCH17 DTTCH17F.
       DVTEXP17 DTEXP17F.
       DVTSLF17 DTSLF17F.
       DVTMCR17 DTMCR17F.
       DVTMCD17 DTMCD17F.
       DVTPRV17 DTPRV17F.
       DVTVA17  DVTVA17F.
       DVTTRI17 DTTRI17F.
       DVTOFD17 DTOFD17F.
       DVTSTL17 DTSTL17F.
       DVTWCP17 DTWCP17F.
       DVTOPR17 DTOPR17F.
       DVTOPU17 DTOPU17F.
       DVTOSR17 DTOSR17F.
       DVTPTR17 DTPTR17F.
       DVTOTH17 OTOTH17F.
       HHTOTD17 HTOTD17F.
       HHAGD17  HHAGD17F.
       HHATCH17 HATCH17F.
       HHAEXP17 HAEXP17F.
       HHASLF17 HASLF17F.
       HHAMCR17 HAMCR17F.
       HHAMCD17 HAMCD17F.
       HHAPRV17 HAPRV17F.
       HHAVA17  HHAVA17F.
       HHATRI17 HATRI17F.
       HHAOFD17 HAOFD17F.
       HHASTL17 HASTL17F.
       HHAWCP17 HAWCP17F.
       HHAOPR17 HAOPR17F.
       HHAOPU17 HAOPU17F.
       HHAOSR17 HAOSR17F.
       HHAPTR17 HAPTR17F.
       HHAOTH17 HAOTH17F.
       HHINDD17 HHIND17F.
       HHNTCH17 HNTCH17F.
       HHNEXP17 HNEXP17F.
       HHNSLF17 HNSLF17F.
       HHNMCD17 HNMCD17F.
       HHNMCR17 HNMCR17F.
       HHNPRV17 HNPRV17F.
       HHNVA17  HHNVA17F.
       HHNTRI17 HNTRI17F.
       HHNOFD17 HNOFD17F.
       HHNSTL17 HNSTL17F.
       HHNWCP17 HNWCP17F.
       HHNOPR17 HNOPR17F.
       HHNOPU17 HNOPU17F.
       HHNOSR17 HNOSR17F.
       HHNPTR17 HNPTR17F.
       HHNOTH17 HNOTH17F.
       HHINFD17 HHINF17F.
       VISEXP17 VSEXP17F.
       VISTCH17 VSTCH17F.
       VISSLF17 VSSLF17F.
       VISMCR17 VSMCR17F.
       VISMCD17 VSMCD17F.
       VISPRV17 OSPRV17F.
       VISVA17  VISVA17F.
       VISTRI17 VSTRI17F.
       VISOFD17 VSOFD17F.
       VISSTL17 VSSTL17F.
       VISWCP17 VSWCP17F.
       VISOPR17 VXOPR17F.
       VISOPU17 VSOPU17F.
       VISOSR17 VSOSR17F.
       VISPTR17 VSPTR17F.
       VISOTH17 VSOTH17F.
       OTHTCH17 OHTCH17F.
       OTHEXP17 OHEXP17F.
       OTHSLF17 OHSLF17F.
       OTHMCR17 OHMCR17F.
       OTHMCD17 OHMCD17F.
       OTHPRV17 OHPRV17F.
       OTHVA17  OTHVA17F.
       OTHTRI17 OHTRI17F.
       OTHOFD17 OHOFD17F.
       OTHSTL17 OHSTL17F.
       OTHWCP17 OHWCP17F.
       OTHOPR17 OHOPR17F.
       OTHOPU17 OHOPU17F.
       OTHOSR17 OHOSR17F.
       OTHPTR17 OTHPT17F.
       OTHOTH17 OTHOT17F.
       RXTOT17  RXTOT17F.
       RXEXP17  RXEXP17F.
       RXSLF17  RXSLF17F.
       RXMCR17  RXMCR17F.
       RXMCD17  RXMCD17F.
       RXPRV17  RXPRV17F.
       RXVA17   RXVA17F.
       RXTRI17  RXTRI17F.
       RXOFD17  RXOFD17F.
       RXSTL17  RXSTL17F.
       RXWCP17  RXWCP17F.
       RXOPR17  RXOPR17F.
       RXOPU17  RXOPU17F.
       RXOSR17  RXOSR17F.
       RXPTR17  RXPTR17F.
       RXOTH17  RXOTH17F.
       PERWT17F PERWT17F.
       FAMWT17F FAMWT17F.
       FAMWT17C FAMWT17C.
       SAQWT17F SAQWT17F.
       DIABW17F DIABW17F.
       CSAQW17F CSAQW17F.
       VARSTR   VARSTR.
       VARPSU   VARPSU.
;
*Adds labels to dataset columns to make more user friendly;
LABEL DUID    ='DWELLING UNIT ID'
      PID     ='PERSON NUMBER'
      DUPERSID='PERSON ID (DUID + PID)'
      PANEL   ='PANEL NUMBER'
      FAMID31 ='FAMILY ID (STUDENT MERGED IN) - R3/1'
      FAMID42 ='FAMILY ID (STUDENT MERGED IN) - R4/2'
      FAMID53 ='FAMILY ID (STUDENT MERGED IN) - R5/3'
      FAMID17 ='FAMILY ID (STUDENT MERGED IN) - 12/31/17'
      FAMIDYR ='ANNUAL FAMILY IDENTIFIER'
      CPSFAMID='CPSFAMID'
      FCSZ1231='FAM SIZE RESPONDING 12/31 CPS FAMILY'
      FCRP1231='REF PERSON OF 12/31 CPS FAMILY'
      RULETR31='RU LETTER - R3/1'
      RULETR42='RU LETTER - R4/2'
      RULETR53='RU LETTER - R5/3'
      RULETR17='RU LETTER AS OF 12/31/17'
      RUSIZE31='RU SIZE - R3/1'
      RUSIZE42='RU SIZE - R4/2'
      RUSIZE53='RU SIZE - R5/3'
      RUSIZE17='RU SIZE AS OF 12/31/17'
      RUCLAS31='RU FIELDED AS:STANDARD/NEW/STUDENT-R3/1'
      RUCLAS42='RU FIELDED AS:STANDARD/NEW/STUDENT-R4/2'
      RUCLAS53='RU FIELDED AS:STANDARD/NEW/STUDENT-R5/3'
      RUCLAS17='RU FIELDED AS:STANDARD/NEW/STUD-12/31/17'
      FAMSZE31='RU SIZE INCLUDING STUDENTS - R3/1'
      FAMSZE42='RU SIZE INCLUDING STUDENTS - R4/2'
      FAMSZE53='RU SIZE INCLUDING STUDENTS - R5/3'
      FAMSZE17='RU SIZE INCLUDING STUDENT AS OF 12/31/17'
      FMRS1231='MEMBER OF RESPONDING 12/31 FAMILY'
      FAMS1231='FAMILY SIZE OF RESPONDING 12/31 FAMILY'
      FAMSZEYR='SIZE OF RESPONDING ANNUALIZED FAMILY'
      FAMRFPYR='REFERENCE PERSON OF ANNUALIZED FAMILY'
      REGION31='CENSUS REGION - R3/1'
      REGION42='CENSUS REGION - R4/2'
      REGION53='CENSUS REGION - R5/3'
      REGION17='CENSUS REGION AS OF 12/31/17'
      REFPRS31='REFERENCE PERSON AT - R3/1'
      REFPRS42='REFERENCE PERSON AT - R4/2'
      REFPRS53='REFERENCE PERSON AT - R5/3'
      REFPRS17='REFERENCE PERSON AS OF 12/31/17'
      RESP31  ='1ST RESPONDENT INDICATOR FOR R3/1'
      RESP42  ='1ST RESPONDENT INDICATOR FOR R4/2'
      RESP53  ='1ST RESPONDENT INDICATOR FOR R5/3'
      RESP17  ='1ST RESPONDENT INDICATOR AS OF 12/31/17'
      PROXY31 ='WAS RESPONDENT A PROXY IN R3/1'
      PROXY42 ='WAS RESPONDENT A PROXY IN R4/2'
      PROXY53 ='WAS RESPONDENT A PROXY IN R5/3'
      PROXY17 ='WAS RESPONDENT A PROXY AS OF 12/31/17'
      INTVLANG='LANGUAGE INTERVIEW WAS COMPLETED'
      BEGRFM31='R3/1 REFERENCE PERIOD BEGIN DATE: MONTH'
      BEGRFY31='R3/1 REFERENCE PERIOD BEGIN DATE: YEAR'
      ENDRFM31='R3/1 REFERENCE PERIOD END DATE: MONTH'
      ENDRFY31='R3/1 REFERENCE PERIOD END DATE: YEAR'
      BEGRFM42='R4/2 REFERENCE PERIOD BEGIN DATE: MONTH'
      BEGRFY42='R4/2 REFERENCE PERIOD BEGIN DATE: YEAR'
      ENDRFM42='R4/2 REFERENCE PERIOD END DATE: MONTH'
      ENDRFY42='R4/2 REFERENCE PERIOD END DATE: YEAR'
      BEGRFM53='R5/3 REFERENCE PERIOD BEGIN DATE: MONTH'
      BEGRFY53='R5/3 REFERENCE PERIOD BEGIN DATE: YEAR'
      ENDRFM53='R5/3 REFERENCE PERIOD END DATE: MONTH'
      ENDRFY53='R5/3 REFERENCE PERIOD END DATE: YEAR'
      ENDRFM17='2017 REFERENCE PERIOD END DATE: MONTH'
      ENDRFY17='2017 REFERENCE PERIOD END DATE: YEAR'
      KEYNESS ='PERSON KEY STATUS'
      INSCOP31='INSCOPE - R3/1'
      INSCOP42='INSCOPE - R4/2'
      INSCOP53='INSCOPE - R5/3'
      INSCOP17='INSCOPE - R5/3 START THROUGH 12/31/17'
      INSC1231='INSCOPE STATUS ON 12/31/17'
      INSCOPE ='WAS PERSON EVER INSCOPE IN 2017'
      ELGRND31='ELIGIBILITY - R3/1'
      ELGRND42='ELIGIBILITY - R4/2'
      ELGRND53='ELIGIBILITY - R5/3'
      ELGRND17='ELIGIBILITY STATUS AS OF 12/31/17'
      PSTATS31='PERSON DISPOSITION STATUS - R3/1'
      PSTATS42='PERSON DISPOSITION STATUS - R4/2'
      PSTATS53='PERSON DISPOSITION STATUS - R5/3'
      RURSLT31='RU RESULT - R3/1'
      RURSLT42='RU RESULT - R4/2'
      RURSLT53='RU RESULT - R5/3'
      AGE31X  ='AGE - R3/1 (EDITED/IMPUTED)'
      AGE42X  ='AGE - R4/2 (EDITED/IMPUTED)'
      AGE53X  ='AGE - R5/3 (EDITED/IMPUTED)'
      AGE17X  ='AGE AS OF 12/31/17 (EDITED/IMPUTED)'
      AGELAST ='PERSON S AGE LAST TIME ELIGIBLE'
      DOBMM   ='DATE OF BIRTH: MONTH'
      DOBYY   ='DATE OF BIRTH: YEAR'
      SEX     ='SEX'
      RACEV1X ='RACE (EDITED/IMPUTED)'
      RACEV2X ='RACE (EDITED/IMPUTED)'
      RACEAX  ='ASIAN AMONG RACES RPTD (EDITED/IMPUTED)'
      RACEBX  ='BLACK AMONG RACES RPTD (EDITED/IMPUTED)'
      RACEWX  ='WHITE AMONG RACES RPTD (EDITED/IMPUTED)'
      RACETHX ='RACE/ETHNICITY (EDITED/IMPUTED)'
      HISPANX ='HISPANIC ETHNICITY (EDITED/IMPUTED)'
      HISPNCAT='HISPANIC ETHNICITY (EDITED/IMPUTED)'
      MARRY31X='MARITAL STATUS - R3/1 (EDITED/IMPUTED)'
      MARRY42X='MARITAL STATUS - R4/2 (EDITED/IMPUTED)'
      MARRY53X='MARITAL STATUS - R5/3 (EDITED/IMPUTED)'
      MARRY17X='MARITAL STATUS-12/31/17 (EDITED/IMPUTED)'
      SPOUID31='SPOUSE ID - R3/1'
      SPOUID42='SPOUSE ID - R4/2'
      SPOUID53='SPOUSE ID - R5/3'
      SPOUID17='SPOUSE ID - 12/31/17'
      SPOUIN31='MARITAL STATUS W/SPOUSE PRESENT-R3/1'
      SPOUIN42='MARITAL STATUS W/SPOUSE PRESENT-R4/2'
      SPOUIN53='MARITAL STATUS W/SPOUSE PRESENT-R5/3'
      SPOUIN17='MARITAL STATUS W/SPOUSE PRESENT-12/31/17'
      EDUCYR  ='YEARS OF EDUC WHEN FIRST ENTERED MEPS'
      HIDEG   ='HIGHEST DEGREE WHEN FIRST ENTERED MEPS'
      FTSTU31X='STUDENT STATUS IF AGES 17-23 - R3/1'
      FTSTU42X='STUDENT STATUS IF AGES 17-23 - R4/2'
      FTSTU53X='STUDENT STATUS IF AGES 17-23 - R5/3'
      FTSTU17X='STUDENT STATUS IF AGES 17-23 - 12/31/17'
      ACTDTY31='MILITARY FULL-TIME ACTIVE DUTY - R3/1'
      ACTDTY42='MILITARY FULL-TIME ACTIVE DUTY - R4/2'
      ACTDTY53='MILITARY FULL-TIME ACTIVE DUTY - R5/3'
      HONRDC31='HONORABLY DISCHARGED FROM MILITARY'
      HONRDC42='HONORABLY DISCHARGED FROM MILITARY'
      HONRDC53='HONORABLY DISCHARGED FROM MILITARY'
      REFRL31X='RELATION TO REF PERS R3/1 (EDIT/IMP)'
      REFRL42X='RELATION TO REF PERS R4/2 (EDIT/IMP)'
      REFRL53X='RELATION TO REF PERS R5/3 (EDIT/IMP)'
      REFRL17X='RELATION TO REF PERS 12/31/17 (EDIT/IMP)'
      OTHLANG ='IN FAMILY WITH SOMEONE SPKNG OTHER LANG'
      LANGSPK ='LANGUAGE SPOKEN AT HOME OTHER THAN ENGL'
      HWELLSPE='HOW WELL PERSON SPEAKS ENGLISH'
      BORNUSA ='PERSON BORN IN THE US'
      YRSINUS ='YEARS PERSON LIVED IN THE US'
      MOPID31X='PID OF PERSON S MOM - RD 3/1'
      MOPID42X='PID OF PERSON S MOM - RD 4/2'
      MOPID53X='PID OF PERSON S MOM - RD 5/3'
      DAPID31X='PID OF PERSON S DAD - RD 3/1'
      DAPID42X='PID OF PERSON S DAD - RD 4/2'
      DAPID53X='PID OF PERSON S DAD - RD 5/3'
      RTHLTH31='PERCEIVED HEALTH STATUS - RD 3/1'
      RTHLTH42='PERCEIVED HEALTH STATUS - RD 4/2'
      RTHLTH53='PERCEIVED HEALTH STATUS - RD 5/3'
      MNHLTH31='PERCEIVED MENTAL HEALTH STATUS - RD 3/1'
      MNHLTH42='PERCEIVED MENTAL HEALTH STATUS - RD 4/2'
      MNHLTH53='PERCEIVED MENTAL HEALTH STATUS - RD 5/3'
      HIBPDX  ='HIGH BLOOD PRESSURE DIAG (>17)'
      HIBPAGED='AGE OF DIAGNOSIS-HIGH BLOOD PRESSURE'
      BPMLDX  ='MULT DIAG HIGH BLOOD PRESS (>17)'
      CHDDX   ='CORONARY HRT DISEASE DIAG (>17)'
      CHDAGED ='AGE OF DIAGNOSIS-CORONARY HEART DISEASE'
      ANGIDX  ='ANGINA DIAGNOSIS (>17)'
      ANGIAGED='AGE OF DIAGNOSIS-ANGINA'
      MIDX    ='HEART ATTACK (MI) DIAG (>17)'
      MIAGED  ='AGE OF DIAGNOSIS-HEART ATTACK(MI)'
      OHRTDX  ='OTHER HEART DISEASE DIAG (>17)'
      OHRTAGED='AGE OF DIAGNOSIS-OTHER HEART DISEASE'
      STRKDX  ='STROKE DIAGNOSIS (>17)'
      STRKAGED='AGE OF DIAGNOSIS-STROKE'
      EMPHDX  ='EMPHYSEMA DIAGNOSIS (>17)'
      EMPHAGED='AGE OF DIAGNOSIS-EMPHYSEMA'
      CHBRON31='CHRONC BRONCHITS LAST 12 MTHS (>17)-R3/1'
      CHOLDX  ='HIGH CHOLESTEROL DIAGNOSIS (>17)'
      CHOLAGED='AGE OF DIAGNOSIS-HIGH CHOLESTEROL'
      CANCERDX='CANCER DIAGNOSIS (>17)'
      CABLADDR='CANCER DIAGNOSED - BLADDER (>17)'
      CABREAST='CANCER DIAGNOSED - BREAST (>17)'
      CACERVIX='CANCER DIAGNOSED - CERVIX (>17)'
      CACOLON ='CANCER DIAGNOSED - COLON (>17)'
      CALUNG  ='CANCER DIAGNOSED - LUNG (>17)'
      CALYMPH ='CANCER DIAGNOSED - LYMPHOMA (>17)'
      CAMELANO='CANCER DIAGNOSED - MELANOMA (>17)'
      CAOTHER ='CANCER DIAGNOSED - OTHER (>17)'
      CAPROSTA='CANCER DIAGNOSED - PROSTATE (>17)'
      CASKINNM='CANCER DIAGNOSED - SKIN-NONMELANO (>17)'
      CASKINDK='CANCER DIAGNOSED-SKIN-UNKNOWN TYPE (>17)'
      CAUTERUS='CANCER DIAGNOSED - UTERUS (>17)'
      DIABDX  ='DIABETES DIAGNOSIS (>17)'
      DIABAGED='AGE OF DIAGNOSIS-DIABETES'
      JTPAIN31='JOINT PAIN LAST 12 MONTHS (>17) - RD 3/1'
      ARTHDX  ='ARTHRITIS DIAGNOSIS (>17)'
      ARTHTYPE='TYPE OF ARTHRITIS DIAGNOSED (>17)'
      ARTHAGED='AGE OF DIAGNOSIS-ARTHRITIS'
      ASTHDX  ='ASTHMA DIAGNOSIS'
      ASTHAGED='AGE OF DIAGNOSIS-ASTHMA'
      ASSTIL31='DOES PERSON STILL HAVE ASTHMA-RD3/1'
      ASATAK31='ASTHMA ATTACK LAST 12 MOS - RD3/1'
      ASTHEP31='WHEN WAS LAST EPISODE OF ASTHMA - RD 3/1'
      ADHDADDX='ADHDADD DIAGNOSIS (5-17)'
      ADHDAGED='AGE OF DIAGNOSIS-ADHD/ADD'
      IADLHP31='IADL SCREENER - RD 3/1'
      ADLHLP31='ADL SCREENER - RD 3/1'
      AIDHLP31='USED ASSISTIVE DEVICES - RD 3/1'
      WLKLIM31='LIMITATION IN PHYSICAL FUNCTIONING-RD3/1'
      LFTDIF31='DIFFICULTY LIFTING 10 POUNDS - RD 3/1'
      STPDIF31='DIFFICULTY WALKING UP 10 STEPS - RD 3/1'
      WLKDIF31='DIFFICULTY WALKING 3 BLOCKS - RD 3/1'
      MILDIF31='DIFFICULTY WALKING A MILE - RD 3/1'
      STNDIF31='DIFFICULTY STANDING 20 MINUTES - RD 3/1'
      BENDIF31='DIFFICULTY BENDING/STOOPING - RD 3/1'
      RCHDIF31='DIFFICULTY REACHING OVERHEAD - RD 3/1'
      FNGRDF31='DIFFICULTY USING FINGERS TO GRASP-RD 3/1'
      ACTLIM31='ANY LIMITATION WORK/HOUSEWRK/SCHL-RD 3/1'
      WRKLIM31='WORK LIMITATION - RD 3/1'
      HSELIM31='HOUSEWORK LIMITATION - RD 3/1'
      SCHLIM31='SCHOOL LIMITATION - RD 3/1'
      UNABLE31='COMPLETELY UNABLE TO DO ACTIVITY-RD 3/1'
      SOCLIM31='SOCIAL LIMITATIONS - RD 3/1'
      COGLIM31='COGNITIVE LIMITATIONS - RD 3/1'
      DFHEAR42='SERIOUS DIFFICULTY HEARING-RD 4/2'
      DEAF42  ='PERSON IS DEAF - RD 4/2'
      DFSEE42 ='SERIOUS DIFFICULTY SEE W/GLASSES-RD 4/2'
      BLIND42 ='PERSON IS BLIND - RD 4/2'
      DFCOG42 ='SERIOUS COGNITIVE DIFFICULTIES-RD 4/2'
      DFWLKC42='SERIOUS DIFCULTY WLK/CLIMB STAIRS-RD 4/2'
      DFDRSB42='DIFFICULTY DRESSING/BATHING-RD 4/2'
      DFERND42='DIFFICULTY DOING ERRANDS ALONE-RD 4/2'
      HEARAD42='PERSON WEARS HEARING AID - RD 4/2'
      WRGLAS42='WEARS EYEGLASSES OR CONTACTS - RD 4/2'
      ANYLMI17='ANY LIMITATION IN P21R3,4/P22R1,2'
      CHPMED42='CSHCN:CHILD NEEDS PRESCRB MED(0-17)-R4/2'
      CHPMHB42='CSHCN:PMED FOR HLTH/BEHV COND(0-17)-R4/2'
      CHPMCN42='CSHCN:PMED COND LAST 12+ MOS (0-17)-R4/2'
      CHSERV42='CSHCN:CHLD NEEDS MED&OTH SERV(0-17)-R4/2'
      CHSRHB42='CSHCN:SERV FOR HLTH/BEHV COND(0-17)-R4/2'
      CHSRCN42='CSHCN:SERV COND LAST 12+ MOS (0-17)-R4/2'
      CHLIMI42='CSHCN:LIMITED IN ANY WAY (0-17)-R4/2'
      CHLIHB42='CSHCN:LIMT FOR HLTH/BEHV COND(0-17)-R4/2'
      CHLICO42='CSHCN:LIMIT COND LAST 12+MOS (0-17)-R4/2'
      CHTHER42='CSHCN:CHLD NEEDS SPEC THERAPY(0-17)-R4/2'
      CHTHHB42='CSHCN:SPEC THER FOR HLTH+COND(0-17)-R4/2'
      CHTHCO42='CSHCN:THER COND LAST 12+ MOS (0-17)-R4/2'
      CHCOUN42='CSHCN:CHILD NEEDS COUNSELING (0-17)-R4/2'
      CHEMPB42='CSHCN:COUNS PROB LAST 12+MOS (0-17)-R4/2'
      CSHCN42 ='CSHCN:CHILD W/SPEC HC NEEDS (0-17)-R4/2'
      MOMPRO42='PROBLEM GETTING ALONG W/MOM (5-17)-R4/2'
      DADPRO42='PROBLEM GETTING ALONG W/DAD (5-17)-R4/2'
      UNHAP42 ='PROBLEM FEELING UNHAPPY/SAD (5-17)-R4/2'
      SCHLBH42='PROBLEM BEHAVIOR AT SCHOOL (5-17)-R4/2'
      HAVFUN42='PROBLEM HAVING FUN (5-17) - R4/2'
      ADUPRO42='PRBLM GETTING ALONG W/ADULTS (5-17)-R4/2'
      NERVAF42='PRBLM FEELING NERVOUS/AFRAID (5-17)-R4/2'
      SIBPRO42='PRBLM GETTING ALONG W/SIBS (5-17)-R4/2'
      KIDPRO42='PRBLM GETTING ALONG W/KIDS (5-17)-R4/2'
      SPRPRO42='PROBLEM W/SPORTS/HOBBIES (5-17)-R4/2'
      SCHPRO42='PROBLEM WITH SCHOOLWORK (5-17)-R4/2'
      HOMEBH42='PROBLEM W/BEHAVIOR AT HOME (5-17)-R4/2'
      TRBLE42 ='PRBLM STAY OUT OF TROUBLE (5-17)-R4/2'
      CHILCR42='CAHPS:12MOS:ILL/INJ NEED CARE(0-17)-R4/2'
      CHILWW42='CAHPS:12MOS:ILL CARE WHN WNTD(0-17)-R4/2'
      CHRTCR42='CAHPS:12MOS:MAKE ROUT CARE APT(0-17)R4/2'
      CHRTWW42='CAHPS:12MOS:ROUT APT WHN WNTD(0-17)-R4/2'
      CHAPPT42='CAHPS:12MOS:# OF OFF/CLIN APTS(0-17)R4/2'
      CHNDCR42='CAHPS:12MOS:NEED ANY CARE/TRT(0-17)-R4/2'
      CHENEC42='CAHPS:12MOS:EASY GET NEC CARE (0-17)R4/2'
      CHLIST42='CAHPS:12MOS:CHLD DR LSN TO YOU(0-17)R4/2'
      CHEXPL42='CAHPS:12MOS:CHLD DR EXPL THNG(0-17)R4/2'
      CHRESP42='CAHPS:12MOS:CHLD S DR SHW RESP(0-17)R4/2'
      CHPRTM42='CAHPS:12MOS:CHILD DR ENGH TIME(0-17)R4/2'
      CHHECR42='CAHPS:12MOS:RATE CHLD HLT CARE(0-17)R4/2'
      CHSPEC42='CAHPS:12MOS:CHLD NEEDED SPEC(0-17)R4/2'
      CHEYRE42='CAHPS:12MOS:ESY W/RFR TO SPEC(0-17)-R4/2'
      MESHGT42='DOCTOR EVER MEASURED HEIGHT (0-17)-R4/2'
      WHNHGT42='WHEN DOCTOR MEASURED HEIGHT (0-17)-R4/2'
      MESWGT42='DOCTOR EVER MEASURED WEIGHT (0-17)-R4/2'
      WHNWGT42='WHEN DOCTOR MEASURED WEIGHT (0-17)-R4/2'
      CHBMIX42='CHILD S BODY MASS INDEX (6-17)-R4/2'
      MESVIS42='DOCTOR CHECKED CHILD S VISION (3-6)-R4/2'
      MESBPR42='DR CHECKED BLOOD PRESSURE (2-17)-R4/2'
      WHNBPR42='WHEN DR CHECKED BLOOD PRESS (2-17)-R4/2'
      DENTAL42='DR ADVISE REG DENTAL CHECKUP (2-17)-R4/2'
      WHNDEN42='WHEN DR ADVISE DENT CHECKUP (2-17)-R4/2'
      EATHLT42='DR ADVISE EAT HEALTHY (2-17)-R4/2'
      WHNEAT42='WHEN DR ADVISE EAT HEALTHY (2-17)-R4/2'
      PHYSCL42='DR ADVISE EXERCISE (2-17)-R4/2'
      WHNPHY42='WHEN DR ADVISE EXERCISE (2-17)-R4/2'
      SAFEST42='DR ADVISE CHLD SAFETY SEAT (WT<=40)-R4/2'
      WHNSAF42='WHEN DR ADVISE SAFETY SEAT (WT<=40)-R4/2'
      BOOST42 ='DR ADVISE BOOSTER SEAT (40<WT<=80)-R4/2'
      WHNBST42='WHN DR ADVISE BOOST SEAT(40<WT<=80)-R4/2'
      LAPBLT42='DR ADVISE LAP/SHOULDER BELT (80<WT)-R4/2'
      WHNLAP42='WHN DR ADVISE LAP/SHLDR BLT (80<WT)-R4/2'
      HELMET42='DR ADVISE BIKE HELMET (2-17)-R4/2'
      WHNHEL42='WHEN DR ADVISE BIKE HELMET (2-17)-R4/2'
      NOSMOK42='DR ADVISE SMKG IN HOME IS BAD(0-17)-R4/2'
      WHNSMK42='WHN DR ADVIS SMKG IN HOME BAD(0-17)-R4/2'
      TIMALN42='DOCTOR SPEND ANY TIME ALONE (12-17)-R4/2'
      LSTETH53='LOST ALL UPPR AND LOWR TEETH (>17)-RD5/3'
      PHYEXE53='MOD/VIG PHYS EXEC 5X WK (>17) - RD 5/3'
      OFTSMK53='HOW OFTN SMOKE CIGARETTES (>17) - RD 5/3'
      SAQELIG ='ELIGIBILITY STATUS FOR SAQ'
      ADPROX42='SAQ: RELATIONSHIP OF PROXY TO ADULT'
      ADGENH42='SAQ: HEALTH IN GENERAL VR_12'
      ADDAYA42='SAQ: HLTH LIMITS MOD ACTIVITIES VR_12'
      ADCLIM42='SAQ: HLTH LIMITS CLIMBING STAIRS VR_12'
      ADACLS42='SAQ 4WKS:ACCMP LESS B/C PHY PRBS VR_12'
      ADWKLM42='SAQ 4WKS:WORK LIMT B/C PHY PROBS VR_12'
      ADEMLS42='SAQ 4WKS:ACCMP LESS B/C MNT PRBS VR_12'
      ADMWCF42='SAQ 4WKS:WORK LIMT B/C MNT PROBS VR_12'
      ADPAIN42='SAQ 4WKS:PAIN LIMITS NORMAL WORK VR_12'
      ADPCFL42='SAQ 4WKS: FELT CALM/PEACEFUL VR_12'
      ADENGY42='SAQ 4WKS: HAD A LOT OF ENERGY VR_12'
      ADPRST42='SAQ 4WKS: FELT DOWNHEARTED/DEPR VR_12'
      ADSOCA42='SAQ 4WKS: HLTH STOPPED SOC ACTIV VR_12'
      ADNERV42='SAQ 30 DAYS: HOW OFTEN FELT NERVOUS'
      ADHOPE42='SAQ 30 DAYS: HOW OFTEN FELT HOPELESS'
      ADREST42='SAQ 30 DAYS: HOW OFTEN FELT RESTLESS'
      ADSAD42 ='SAQ 30 DAYS: HOW OFTEN FELT SAD'
      ADEFRT42='SAQ 30 DAYS: HOW OFTN EVRYTHNG AN EFFORT'
      ADWRTH42='SAQ 30 DAYS: HOW OFTEN FELT WORTHLESS'
      K6SUM42 ='SAQ 30 DAYS: OVERALL RATING OF FEELINGS'
      ADINTR42='SAQ 2 WKS: LITTLE INTEREST IN THINGS'
      ADDPRS42='SAQ 2 WKS: FELT DOWN/DEPRESSED/HOPELESS'
      PHQ242  ='SAQ 2 WKS: OVERALL RATING OF FEELINGS'
      ADINSA42='SAQ: DO NOT NEED HEALTH INSURANCE'
      ADINSB42='SAQ: HEALTH INSURANCE NOT WORTH COST'
      ADRISK42='SAQ: MORE LIKELY TO TAKE RISKS'
      ADOVER42='SAQ: CAN OVERCOME ILLS WITHOUT MED HELP'
      ADILCR42='SAQ 12MOS: ILL/INJURY NEEDING IMMED CARE'
      ADILWW42='SAQ 12 MOS: GOT CARE WHEN NEEDED ILL/INJ'
      ADRTCR42='SAQ 12 MOS: MADE APPT ROUTINE MED CARE'
      ADRTWW42='SAQ 12 MOS: GOT MED APPT WHEN WANTED'
      ADAPPT42='SAQ 12 MOS: # VISITS TO MED OFF FOR CARE'
      ADHECR42='SAQ 12 MOS: RATING OF HEALTH CARE'
      ADINST42='SAQ 12 MOS: DR GAVE SPCIFC INSTRCTNS'
      ADEZUN42='SAQ 12 MOS: DR GIVEN INSTR. EZ UNDRSTD'
      ADTLHW42='SAQ 12 MOS: DR ASKED R DESC HOW FOLLOW'
      ADFFRM42='SAQ 12 MOS: HAD TO FILL OUT/SIGN FORMS'
      ADFHLP42='SAQ 12 MOS: OFFRD HELP FILLING OUT FORMS'
      ADEXPL42='SAQ 12 MOS: DOC EXPLAINED SO UNDERSTOOD'
      ADLIST42='SAQ 12 MOS: DOCTOR LISTENED TO YOU'
      ADRESP42='SAQ 12 MOS: DR SHOWED RESPECT'
      ADPRTM42='SAQ 12 MOS: DR SPENT ENUF TIME WITH YOU'
      ADSMOK42='SAQ: CURRENTLY SMOKE'
      ADNSMK42='SAQ 12MOS: DR ADVISED TO QUIT SMOKING'
      ADSPCL42='SAQ 12 MOS: NEEDED TO SEE SPECIALIST'
      ADSNSP42='SAQ 12MOS: HOW ESY TO SEE SPECIALIST'
      ADCMPM42='SAQ: DATE COMPLETED - MONTH'
      ADCMPY42='SAQ: DATE COMPLETED - YEAR'
      ADLANG42='SAQ: LANGUAGE OF SAQ INTERVIEW'
      DSDIA53 ='DCS: DIABETES DIAGNOSIS BY HEALTH PROF'
      DSA1C53 ='DCS: TIMES TESTED FOR A-ONE-C IN 2017'
      DSFT1853='DCS: HAD FEET CHECKED DURING 2018'
      DSFT1753='DCS: HAD FEET CHECKED DURING 2017'
      DSFT1653='DCS: HAD FEET CHECKED DURING 2016'
      DSFB1653='DCS: HAD FEET CHECKED BEFORE 2016'
      DSFTNV53='DCS: NEVER HAD FEET CHECKED'
      DSEY1853='DCS: DILATED EYE EXAM IN 2018'
      DSEY1753='DCS: DILATED EYE EXAM IN 2017'
      DSEY1653='DCS: DILATED EYE EXAM IN 2016'
      DSEB1653='DCS: DILATED EYE EXAM BEFORE 2016'
      DSEYNV53='DCS: NEVER HAD DILATED EYE EXAM'
      DSCH1853='DCS: BLOOD CHOLESTEROL CHECKED IN 2018'
      DSCH1753='DCS: BLOOD CHOLESTEROL CHECKED IN 2017'
      DSCH1653='DCS: BLOOD CHOLESTEROL CHECKED IN 2016'
      DSCB1653='DCS: BLOOD CHOLESTEROL CHECKED BEF 2016'
      DSCHNV53='DCS: NEVER HAD BLOOD CHOLESTEROL CHECKED'
      DSFL1853='DCS: GOT FLU VACCINATION IN 2018'
      DSFL1753='DCS: GOT FLU VACCINATION IN 2017'
      DSFL1653='DCS: GOT FLU VACCINATION IN 2016'
      DSVB1653='DCS: GOT FLU VACCINATION BEFORE 2016'
      DSFLNV53='DCS: NEVER GOT FLU VACCINATION'
      DSKIDN53='DCS: HAS DIABETES CAUSED KIDNEY PROBLEMS'
      DSEYPR53='DCS: HAS DIABETES CAUSED EYE PROBS'
      DSDIET53='DCS: TREAT DIABETES W/DIET MODIFICATION'
      DSMED53 ='DCS: TREAT DIABETES W/MEDS BY MOUTH'
      DSINSU53='DCS: TREAT DIABETES W/INSULIN INJECTIONS'
      DSCPCP53='DCS: LEARNED CARE FROM PRIMARY CARE PROV'
      DSCNPC53='DCS: LEARNED CARE FROM OTHER PROVIDER'
      DSCPHN53='DCS: LEARN CARE FROM PHONE CALL W/PROV'
      DSCINT53='DCS: LEARNED CARE FROM READING INTERNET'
      DSCGRP53='DCS: LEARNED CARE BY TAKING GROUP CLASS'
      DSCONF53='DCS: CONFIDENT TAKING CARE OF DIABETES'
      DSPRX53 ='DCS: WAS RESPONDENT A PROXY'
      CCNRDI31='CSAQ: CANCER DIAGNOSIS BY HEALTH PROF'
      CDIAG31 ='CSAQ: CANCER DIAGNOSIS BEFORE AGE 18'
      CTRTMT31='CSAQ: CURRENTLY TREATED FOR CANCER'
      CLSTRT31='CSAQ: LAST CANCER TREATMENT'
      CBCK31  ='CSAQ: CANCER BACK TOLD BY HEALTH PROF'
      CBCKYR31='CSAQ: YEAR TOLD CANCER BACK'
      CFTRT31 ='CSAQ: FIRST TIME TREATED FOR CANCER'
      CWRKP31 ='CSAQ: WORK FOR PAY SINCE DIAGNOSED'
      CTMOFF31='CSAQ: TAKE TIME OFF SINCE DIAGNOSED'
      CWYCNG31='CSAQ: WHY MAKE WORK CHANGES'
      CEXTM31 ='CSAQ: TAKE PAID TIME OFF'
      CEXTDI31='CSAQ: PAID TIME OFF AT DIAGNOSIS'
      CEXTRT31='CSAQ: PAID TIME OFF DURING TREATMENT'
      CEXTLT31='CSAQ: PAID TIME OFF <1 YEAR AFT TRTMNT'
      CEXTMT31='CSAQ: PAID TIME OFF >=1 YEAR AFT TRTMNT'
      CNPTLD31='CSAQ: CHNGE PART TIME OR LESS DEMAND JOB'
      CNGFLX31='CSAQ: FLEXIBLE WORK SCHEDULE'
      CPROM31 ='CSAQ: DID NOT PURSUE PROMOTION'
      CERET31 ='CSAQ: EARLY RETIREMENT'
      CPTASK31='CSAQ: INTERFERE WITH PHYSICAL TASKS'
      CMTASK31='CSAQ: INTERFERE WITH MENTAL TASKS'
      CLPROD31='CSAQ: FEEL LESS PRODUCTIVE'
      CFRET31 ='CSAQ: MIGHT BE FORCED TO RETIRE'
      CLHINS31='CSAQ: STAY AT JOB-WORRY LOSE HLTH INS'
      CCLHIN31='CSAQ: CONCERNED LOSING HLTH INS TO CNCR'
      CSLHIN31='CSAQ: FMEM STAY AT JOB-WORRY LOSE INS'
      CFMEM31 ='CSAQ: FMEM PROVIDE CARE'
      CFMSPS31='CSAQ: FMEM SPOUSE PROVIDED CARE'
      CFMCHD31='CSAQ: FMEM CHILD PROVIDED CARE'
      CFMSIB31='CSAQ: FMEM SIBLING PROVIDED CARE'
      CFMPAR31='CSAQ: FMEM PARENT PROVIDED CARE'
      CFMREL31='CSAQ: FMEM OTH RELATIVE PROVIDED CARE'
      CFMFND31='CSAQ: FMEM FRIEND PROVIDED CARE'
      CFMOTR31='CSAQ: FMEM OTHER PROVIDED CARE'
      CFMTOF31='CSAQ: FMEM TAKE EXTENDED TIME OFF'
      CFM2MT31='CSAQ: FMEM TAKE EXTND TIM OFF >= 2 MNTH'
      CINCOV31='CSAQ: COVERED BY HEALTH INSURANCE'
      CINPRV31='CSAQ: COVERED BY PRIVATE HLTH INS'
      CINMDC31='CSAQ: COVERED BY MEDICARE HLTH INS'
      CINMDG31='CSAQ: COVERED BY MEDI-GAP HLTH INS'
      CINMDA31='CSAQ: COVERED BY MEDICAID HLTH INS'
      CINMLT31='CSAQ: COVERED BY MILITARY HLTH INS'
      CINIHS31='CSAQ: COVERED BY I.H.S. HLTH INS'
      CINSHP31='CSAQ: COVERED BY STATE HLTH INS'
      CINOGP31='CSAQ: COVERED BY OTH GOVT HLTH INS'
      CINSSP31='CSAQ: COVERED BY SINGLE SERV HLTH INS'
      CINNCV31='CSAQ: COVERED BY NO HLTH INS'
      CINNOC31='CSAQ: HLTH INS REFUSED TO COVER CARE'
      CINADQ31='CSAQ: HLTH INS COVERAGE NOT ADEQUATE'
      CINCMP31='CSAQ: CURRENT HLTH INS COMPARE'
      CINDIF31='CSAQ: DIFFICULTY FINDING HLTH INS'
      CINAFD31='CSAQ: DIFFICULTY AFFORDING HLTH INS'
      CNCMED31='CSAQ: UNCOVERED MEDICAL EXPENSES'
      CNCTRP31='CSAQ: UNCOVERED TRANSPORTATION EXPENSES'
      CNCLOD31='CSAQ: UNCOVERED LODGING EXPENSES'
      CNCCHD31='CSAQ: UNCOVERED CHILD CARE EXPENSES'
      CNCHME31='CSAQ: UNCOVERED HOME CARE EXPENSES'
      CNCNON31='CSAQ: NO UNCOVERED EXPENSES'
      CNCNTS31='CSAQ: NOT SURE IF UNCOVERED EXPENSES'
      CFNDBT31='CSAQ: MONEY BORROWED OR IN DEBT'
      CFNAMT31='CSAQ: AMOUNT OF BORROWED OR IN DEBT'
      CFNVAC31='CSAQ: SACRIFICED LEISURE SPENDING'
      CFNPUR31='CSAQ: SACRIFICED BIG PURCHASES'
      CFNSPD31='CSAQ: SACRIFICED BASIC SPENDING'
      CFNSAV31='CSAQ: SACRIFICED SAVINGS'
      CFNLIV31='CSAQ: SACRIFICED LIVING SITUATION'
      CFNOTH31='CSAQ: SACRIFICED OTHER COST'
      CFNUNB31='CSAQ: UNABLE TO COVER MEDICAL BILLS'
      CFNBNK31='CSAQ: SELF OR FMEM FILE BANKRUPTCY'
      CFNPMT31='CSAQ: WORRY PAY MEDICAL BILLS'
      CFNSTB31='CSAQ: WORRY FAMILY FINANCIAL STABILITY'
      CFNINC31='CSAQ: WORRY INCOME STABILITY'
      CMCFUP31='CSAQ: DISCUSS REGULAR FOLL-UP CARE'
      CMCEFF31='CSAQ: DISCUSS SIDE EFFECTS'
      CMCPSY31='CSAQ: DISCUSS EMO/SOC NEEDS'
      CMCSTY31='CSAQ: DISCUSS LIFESTYLE OR HEALTH'
      CMCOST31='CSAQ: DISCUSS COSTS FOR CANCER CARE'
      CMCTRT31='CSAQ: DISCUSS CANCER TREATMENTS'
      CDLPRS31='CSAQ: DLY OR FOREGO PRESCRIPTION'
      CDLVST31='CSAQ: DLY OR FOREGO VISIT SPECIALIST'
      CDLTRT31='CSAQ: DLY OR FOREGO TREATMENT'
      CDLFUP31='CSAQ: DLY OR FOREGO FOLLOW UP CARE'
      CDLMNT31='CSAQ: DLY OR FOREGO MENTAL HEALTH SRVCS'
      CDLOTH31='CSAQ: DLY OR FOREGO OTHER'
      CMCNEC31='CSAQ: RECEIVED NECESSARY MEDICAL CARE'
      CMNAFF31='CSAQ: COULD NOT AFFORD CARE'
      CMNINS31='CSAQ: INS COMPANY DIDN T APPROVE OR PAY'
      CMNACC31='CSAQ: DOCTOR DID NOT ACCEPT INSURANCE'
      CMNOFF31='CSAQ: PROBLEMS GETTING TO DOCTOR OFFICE'
      CMNTIM31='CSAQ: NO TIME OFF FROM WORK'
      CMNPLC31='CSAQ: DIDN T KNOW WHERE TO GO'
      CMNCRE31='CSAQ: NO CHILD/ADULT CARE'
      CMNLNG31='CSAQ: NO TIME FOR CARE/TREATMENT'
      CEFACT31='CSAQ: ACTIVITIES LIMITED DUE TO CANCER'
      CEFLCT31='CSAQ: HOW LONG ACTIVITIES LIMITED'
      CEFOG31 ='CSAQ: IS LIMITATION ONGOING'
      CEFMTL31='CSAQ: MENTAL TASKS AFFECTED BY CANCER'
      CEFUND31='CSAQ: UNDSTNDING INSRNCE/MEDICAL BILL'
      CEFBCK31='CSAQ: WORRY CANCER COME BACK/GET WORSE'
      CEFSTG31='CSAQ: EXP-MADE A STRONGER PERSON'
      CEFCOP31='CSAQ: EXP-COPE BETTER W/ CHALLENGES'
      CEFPOS31='CSAQ: EXP-REASON FOR POSITIVE CHANGES'
      CEFHLT31='CSAQ: EXP-MADE HEALTHIER HABITS'
      CEFPHL31='CSAQ: RATE PHYSICAL HEALTH'
      CEFPAC31='CSAQ: RATE PHYSICAL ACTIVITY EXTENT'
      CEFPIN31='CSAQ: RATE AVERAGE PAIN IN 7 DAYS'
      CEFFTG31='CSAQ: RATE AVERAGE FATIGUE IN 7 DAYS'
      CEFQLF31='CSAQ: RATE QUALITY OF LIFE'
      CEFMHL31='CSAQ: RATE MENTAL HEALTH'
      CEFRLT31='CSAQ: RATE SOCIAL ACTIVITY/RELATIONSHIP'
      CEFMPR31='CSAQ: RATE EMOTIONAL PROBLEM IN 7 DAYS'
      DDNWRK17='# DAYS MISSED WORK DUE TO ILL/INJ 2017'
      OTHDYS17='MISS ANY WORK DAY TO CARE FOR OTH 2017'
      OTHNDD17='# DAY MISSED WORK TO CARE FOR OTH 2017'
      ACCELI42='PERS ELIGIBLE FOR ACCESS SUPPLEMENT-R4/2'
      HAVEUS42='AC05 DOES PERSON HAVE USC PROVIDER-R4/2'
      YNOUSC42='AC07 MAIN REAS PERS DOESNT HAVE USC-R4/2'
      NOREAS42='AC08 OTH REAS NO USC:NO OTH REASONS-R4/2'
      SELDSI42='AC08 OTH REAS NO USC:SELDM/NEV SICK-R4/2'
      NEWARE42='AC08 OTH REAS NO USC:RECENTLY MOVED-R4/2'
      DKWHRU42='AC08 OTH REAS NO USC:DK WHERE TO GO-R4/2'
      USCNOT42='AC08 OTH REAS NO USC: USC NOT AVAIL-R4/2'
      PERSLA42='AC08 OTH REAS NO USC: LANGUAGE-R4/2'
      DIFFPL42='AC08 OTH REAS NO USC:DIFFRNT PLACES-R4/2'
      INSRPL42='AC08 OTH REAS NO USC:JUST CHNGD INS-R4/2'
      MYSELF42='AC08 OTH REAS NO USC:NO DOC/TRT SLF-R4/2'
      CARECO42='AC08 OTH REAS NO USC:COST OF MED CR-R4/2'
      NOHINS42='AC08 OTH REAS NO USC:NO HLTH INSRNC-R4/2'
      OTHINS42='AC08 OTH REAS NO USC: INS RELATED-R4/2'
      JOBRSN42='AC08 OTH REAS NO USC: JOB RELATED-R4/2'
      NEWDOC42='AC08 OTH REAS NO USC: LOOKNG FOR DR-R4/2'
      DOCELS42='AC08 OTH REAS NO USC: DR ELSEWHERE-R4/2'
      NOLIKE42='AC08 OTH REAS NO USC: DONT LIKE DRS-R4/2'
      HEALTH42='AC08 OTH REAS NO USC: HLTH RELATED-R4/2'
      KNOWDR42='AC08 OTH REAS NO USC: KNOWS/IS A DR-R4/2'
      NOGODR42='AC08 OTH REAS NO USC: WONT GO TO DR-R4/2'
      TRANS42 ='AC08 OTH REAS NO USC: TRANSPRT/TIME-R4/2'
      CLINIC42='AC08 OTH REAS NO USC: HOSP/ER/CLNIC-R4/2'
      OTHREA42='AC08 OTH REAS NO USC: OTHER REASON-R4/2'
      PROVTY42='PROVIDER TYPE-R4/2'
      PLCTYP42='USC TYPE OF PLACE-R4/2'
      TMTKUS42='AC13 HOW LONG IT TAKES GET TO USC-R4/2'
      TYPEPE42='USC TYPE OF PROVIDER-R4/2'
      LOCATN42='USC LOCATION-R4/2'
      HSPLAP42='AC18 IS PROVIDER HISPANIC OR LATINO-R4/2'
      WHITPR42='AC19 IS PROVIDER WHITE-R4/2'
      BLCKPR42='AC19 IS PROVIDER BLACK/AFRICAN AMER-R4/2'
      ASIANP42='AC19 IS PROVIDER ASIAN-R4/2'
      NATAMP42='AC19 IS PROVIDER NATIVE AMERICAN-R4/2'
      PACISP42='AC19 IS PROVIDER OTH PACIFIC ISLNDR-R4/2'
      OTHRCP42='AC19 IS PROVIDER SOME OTHER RACE-R4/2'
      GENDRP42='AC20 IS PROVIDER MALE OR FEMALE-R4/2'
      MINORP42='AC22 GO TO USC FOR NEW HEALTH PROB-R4/2'
      PREVEN42='AC22 GO TO USC FOR PRVNTVE HLT CARE-R4/2'
      REFFRL42='AC22 GO TO USC FOR REFERRALS-R4/2'
      ONGONG42='AC22 GO TO USC FOR ONGOING HLTH PRB-R4/2'
      PHNREG42='AC23 HOW DIFF CONTACT USC BY PHONE-R4/2'
      OFFHOU42='AC24 USC HAS OFFCE HRS NGHTS/WKENDS-R4/2'
      AFTHOU42='AC25 HOW DIFF CONTACT USC AFT HOURS-R4/2'
      TREATM42='AC26 PROV ASK ABOUT OTH TREATMENTS-R4/2'
      RESPCT42='AC27 PROV SHOWS RESPECT FOR TRTMNTS-R4/2'
      DECIDE42='AC28 PROV ASKS PERS TO HELP DECIDE-R4/2'
      EXPLOP42='AC30 PROV EXPLNS OPTIONS TO PERS-R4/2'
      PRVSPK42='AC31 PROV SPEAKS PERSON S LANGUAGE-R4/2'
      MDUNAB42='UNABLE TO GET NECESSRY MEDICAL CARE-R4/2'
      MDUNRS42='AC34 RSN UNABLE GET NECSRY MED CARE-R4/2'
      MDDLAY42='DELAYED IN GETTING NECSRY MED CARE-R4/2'
      MDDLRS42='AC38 RSN DLAYD GETTING NEC MED CARE-R4/2'
      DNUNAB42='UNABLE TO GET NECESSARY DENTAL CARE-R4/2'
      DNUNRS42='AC42 RSN UNABLE GET NCSRY DENT CARE-R4/2'
      DNDLAY42='DELAYED IN GETTING NEC DENTAL CARE-R4/2'
      DNDLRS42='AC46 RSN DLAYD GETTNG NEC DENT CARE-R4/2'
      PMUNAB42='UNABLE TO GET NECESSARY PRES MED-R4/2'
      PMUNRS42='AC50 RSN UNABLE TO GET NEC PRES MED-R4/2'
      PMDLAY42='DELAYED IN GETTING NECSRY PRES MED-R4/2'
      PMDLRS42='AC54 RSN DLAYD GETTING NEC PRES MED-R4/2'
      EMPST31 ='EMPLOYMENT STATUS RD 3/1'
      EMPST42 ='EMPLOYMENT STATUS RD 4/2'
      EMPST53 ='EMPLOYMENT STATUS RD 5/3'
      RNDFLG31='DATA COLLECTION ROUND FOR RD 3/1 CMJ'
      MORJOB31='HAS MORE THAN ONE JOB RD 3/1 INT DATE'
      MORJOB42='HAS MORE THAN ONE JOB RD 4/2 INT DATE'
      MORJOB53='HAS MORE THAN ONE JOB RD 5/3 INT DATE'
      EVRWRK  ='EVER WRKD FOR PAY IN LIFE AS OF 12/31/17'
      HRWG31X ='HOURLY WAGE RD 3/1 CMJ (IMP)'
      HRWG42X ='HOURLY WAGE RD 4/2 CMJ (IMP)'
      HRWG53X ='HOURLY WAGE RD 5/3 CMJ (IMP)'
      HRWGIM31='HRWG31X IMPUTATION FLAG'
      HRWGIM42='HRWG42X IMPUTATION FLAG'
      HRWGIM53='HRWG53X IMPUTATION FLAG'
      HRHOW31 ='HOW HOURLY WAGE WAS CALCULATED RD 3/1'
      HRHOW42 ='HOW HOURLY WAGE WAS CALCULATED RD 4/2'
      HRHOW53 ='HOW HOURLY WAGE WAS CALCULATED RD 5/3'
      DIFFWG31='PERSONS WAGES DIFFERENT THIS RD31 AT CMJ'
      DIFFWG42='PERSONS WAGES DIFFERENT THIS RD42 AT CMJ'
      DIFFWG53='PERSONS WAGES DIFFERENT THIS RD53 AT CMJ'
      NHRWG31 ='UPDATED HRLY WAGE RD 3/1 CMJ (EDITED)'
      NHRWG42 ='UPDATED HRLY WAGE RD 4/2 CMJ (EDITED)'
      NHRWG53 ='UPDATED HRLY WAGE RD 5/3 CMJ (EDITED)'
      HOUR31  ='HOURS PER WEEK AT RD 3/1 CMJ'
      HOUR42  ='HOURS PER WEEK AT RD 4/2 CMJ'
      HOUR53  ='HOURS PER WEEK AT RD 5/3 CMJ'
      TEMPJB31='IS CMJ A TEMPORARY JOB RD 3/1'
      TEMPJB42='IS CMJ A TEMPORARY JOB RD 4/2'
      TEMPJB53='IS CMJ A TEMPORARY JOB RD 5/3'
      SSNLJB31='IS CMJ A SEASONAL JOB RD 3/1'
      SSNLJB42='IS CMJ A SEASONAL JOB RD 4/2'
      SSNLJB53='IS CMJ A SEASONAL JOB RD 5/3'
      SELFCM31='SELF-EMPLOYED AT RD 3/1 CMJ'
      SELFCM42='SELF-EMPLOYED AT RD 4/2 CMJ'
      SELFCM53='SELF-EMPLOYED AT RD 5/3 CMJ'
      DISVW31X='DISAVOWED HEALTH INS AT RD 3/1 CMJ (ED)'
      DISVW42X='DISAVOWED HEALTH INS AT RD 4/2 CMJ (ED)'
      DISVW53X='DISAVOWED HEALTH INS AT RD 5/3 CMJ (ED)'
      CHOIC31 ='CHOICE OF HEALTH PLANS AT RD 3/1 CMJ'
      CHOIC42 ='CHOICE OF HEALTH PLANS AT RD 4/2 CMJ'
      CHOIC53 ='CHOICE OF HEALTH PLANS AT RD 5/3 CMJ'
      INDCAT31='INDUSTRY GROUP RD 3/1 CMJ'
      INDCAT42='INDUSTRY GROUP RD 4/2 CMJ'
      INDCAT53='INDUSTRY GROUP RD 5/3 CMJ'
      NUMEMP31='NUMBER OF EMPLOYEES AT RD 3/1 CMJ'
      NUMEMP42='NUMBER OF EMPLOYEES AT RD 4/2 CMJ'
      NUMEMP53='NUMBER OF EMPLOYEES AT RD 5/3 CMJ'
      MORE31  ='RD 3/1 CMJ FIRM HAS MORE THAN 1 LOCAT'
      MORE42  ='RD 4/2 CMJ FIRM HAS MORE THAN 1 LOCAT'
      MORE53  ='RD 5/3 CMJ FIRM HAS MORE THAN 1 LOCAT'
      UNION31 ='UNION STATUS AT RD 3/1 CMJ'
      UNION42 ='UNION STATUS AT RD 4/2 CMJ'
      UNION53 ='UNION STATUS AT RD 5/3 CMJ'
      NWK31   ='REASON NOT WORKING DURING RD 3/1'
      NWK42   ='REASON NOT WORKING DURING RD 4/2'
      NWK53   ='REASON NOT WORKING DURING RD 5/3'
      CHGJ3142='CHANGED JOB BETWEEN RD 3/1 AND RD 4/2'
      CHGJ4253='CHANGED JOB BETWEEN RD 4/2 AND RD 5/3'
      YCHJ3142='WHY CHNGD JOB BETWEEN RD 3/1 AND RD 4/2'
      YCHJ4253='WHY CHNGD JOB BETWEEN RD 4/2 AND RD 5/3'
      STJBMM31='MONTH STARTED RD 3/1 CMJ'
      STJBYY31='YEAR STARTED RD 3/1 CMJ'
      STJBMM42='MONTH STARTED RD 4/2 CMJ'
      STJBYY42='YEAR STARTED RD 4/2 CMJ'
      STJBMM53='MONTH STARTED RD 5/3 CMJ'
      STJBYY53='YEAR STARTED RD 5/3 CMJ'
      EVRETIRE='PERSON HAS EVER RETIRED'
      OCCCAT31='OCCUPATION GROUP RD 3/1 CMJ'
      OCCCAT42='OCCUPATION GROUP RD 4/2 CMJ'
      OCCCAT53='OCCUPATION GROUP RD 5/3 CMJ'
      PAYVAC31='PAID VACATION AT RD 3/1 CMJ'
      PAYVAC42='PAID VACATION AT RD 4/2 CMJ'
      PAYVAC53='PAID VACATION AT RD 5/3 CMJ'
      SICPAY31='PAID SICK LEAVE AT RD 3/1 CMJ'
      SICPAY42='PAID SICK LEAVE AT RD 4/2 CMJ'
      SICPAY53='PAID SICK LEAVE AT RD 5/3 CMJ'
      PAYDR31 ='PAID LEAVE TO VISIT DR RD 3/1 CMJ'
      PAYDR42 ='PAID LEAVE TO VISIT DR RD 4/2 CMJ'
      PAYDR53 ='PAID LEAVE TO VISIT DR RD 5/3 CMJ'
      RETPLN31='PENSION PLAN AT RD 3/1 CMJ'
      RETPLN42='PENSION PLAN AT RD 4/2 CMJ'
      RETPLN53='PENSION PLAN AT RD 5/3 CMJ'
      BSNTY31 ='SOLE PROP, PARTNER, CORP, RD 3/1 CMJ'
      BSNTY42 ='SOLE PROP, PARTNER, CORP, RD 4/2 CMJ'
      BSNTY53 ='SOLE PROP, PARTNER, CORP, RD 5/3 CMJ'
      JOBORG31='PRIV (PROFIT,NONPROFIT) GOV RD 3/1 CMJ'
      JOBORG42='PRIV (PROFIT,NONPROFIT) GOV RD 4/2 CMJ'
      JOBORG53='PRIV (PROFIT,NONPROFIT) GOV RD 5/3 CMJ'
      HELD31X ='HEALTH INSUR HELD FROM RD 3/1 CMJ (ED)'
      HELD42X ='HEALTH INSUR HELD FROM RD 4/2 CMJ (ED)'
      HELD53X ='HEALTH INSUR HELD FROM RD 5/3 CMJ (ED)'
      OFFER31X='HEALTH INSUR OFFERED BY RD 3/1 CMJ (ED)'
      OFFER42X='HEALTH INSUR OFFERED BY RD 4/2 CMJ (ED)'
      OFFER53X='HEALTH INSUR OFFERED BY RD 5/3 CMJ (ED)'
      OFREMP31='EMPLOYER OFFERS HEALTH INS RD 3/1 CMJ'
      OFREMP42='EMPLOYER OFFERS HEALTH INS RD 4/2 CMJ'
      OFREMP53='EMPLOYER OFFERS HEALTH INS RD 5/3 CMJ'
      EMPST31H='EMPLOYMENT STATUS RD 3/1 (IMP)'
      EMPST42H='EMPLOYMENT STATUS RD 4/2 (IMP)'
      EMPST53H='EMPLOYMENT STATUS RD 5/3 (IMP)'
      SLFCM31H='SELF-EMPLOYED AT RD 3/1 CMJ (IMP)'
      SLFCM42H='SELF-EMPLOYED AT RD 4/2 CMJ (IMP)'
      SLFCM53H='SELF-EMPLOYED AT RD 5/3 CMJ (IMP)'
      NMEMP31H='NUMBER OF EMPLOYEES AT RD 3/1 CMJ (IMP)'
      NMEMP42H='NUMBER OF EMPLOYEES AT RD 4/2 CMJ (IMP)'
      NMEMP53H='NUMBER OF EMPLOYEES AT RD 5/3 CMJ (IMP)'
      MORE31H ='RD 3/1 CMJ FIRM MORE THAN 1 LOCAT (IMP)'
      MORE42H ='RD 4/2 CMJ FIRM MORE THAN 1 LOCAT (IMP)'
      MORE53H ='RD 5/3 CMJ FIRM MORE THAN 1 LOCAT (IMP)'
      INDCT31H='INDUSTRY GROUP RD 3/1 CMJ (IMP)'
      INDCT42H='INDUSTRY GROUP RD 4/2 CMJ (IMP)'
      INDCT53H='INDUSTRY GROUP RD 5/3 CMJ (IMP)'
      OCCCT31H='OCCUPATION GROUP RD 3/1 CMJ (IMP)'
      OCCCT42H='OCCUPATION GROUP RD 4/2 CMJ (IMP)'
      OCCCT53H='OCCUPATION GROUP RD 5/3 CMJ (IMP)'
      HOUR31H ='HOURS PER WEEK AT RD 3/1 CMJ (IMP)'
      HOUR42H ='HOURS PER WEEK AT RD 4/2 CMJ (IMP)'
      HOUR53H ='HOURS PER WEEK AT RD 5/3 CMJ (IMP)'
      JBORG31H='PRV, ST-LC GOV, FED GOV RD 3/1 CMJ (IMP)'
      JBORG42H='PRV, ST-LC GOV, FED GOV RD 4/2 CMJ (IMP)'
      JBORG53H='PRV, ST-LC GOV, FED GOV RD 5/3 CMJ (IMP)'
      UNION31H='UNION STATUS AT RD 3/1 CMJ (IMP)'
      UNION42H='UNION STATUS AT RD 4/2 CMJ (IMP)'
      UNION53H='UNION STATUS AT RD 5/3 CMJ (IMP)'
      BSNTY31H='SOL PROP, PRTNR, CORP, RD 3/1 CMJ (IMP)'
      BSNTY42H='SOL PROP, PRTNR, CORP, RD 4/2 CMJ (IMP)'
      BSNTY53H='SOL PROP, PRTNR, CORP, RD 5/3 CMJ (IMP)'
      HRWG31H ='HOURLY WAGE RD 3/1 CMJ (IMP)'
      HRWG42H ='HOURLY WAGE RD 4/2 CMJ (IMP)'
      HRWG53H ='HOURLY WAGE RD 5/3 CMJ (IMP)'
      CMJHLD31='HLTH INSUR HELD FROM RD 3/1 CMJ (PRPL)'
      CMJHLD42='HLTH INSUR HELD FROM RD 4/2 CMJ (PRPL)'
      CMJHLD53='HLTH INSUR HELD FROM RD 5/3 CMJ (PRPL)'
      OFFER31H='HEALTH INSUR OFFERED BY RD 3/1 CMJ (IMP)'
      OFFER42H='HEALTH INSUR OFFERED BY RD 4/2 CMJ (IMP)'
      OFFER53H='HEALTH INSUR OFFERED BY RD 5/3 CMJ (IMP)'
      OFEMP31H='EMP OFFERS HEALTH INS RD 3/1 CMJ (IMP)'
      OFEMP42H='EMP OFFERS HEALTH INS RD 4/2 CMJ (IMP)'
      OFEMP53H='EMP OFFERS HEALTH INS RD 5/3 CMJ (IMP)'
      PYVAC31H='PAID VACATION AT RD 3/1 CMJ (IMP)'
      PYVAC42H='PAID VACATION AT RD 4/2 CMJ (IMP)'
      PYVAC53H='PAID VACATION AT RD 5/3 CMJ (IMP)'
      SCPAY31H='PAID SICK LEAVE AT RD 3/1 CMJ (IMP)'
      SCPAY42H='PAID SICK LEAVE AT RD 4/2 CMJ (IMP)'
      SCPAY53H='PAID SICK LEAVE AT RD 5/3 CMJ (IMP)'
      PAYDR31H='PAID LEAVE TO VISIT DR RD 3/1 CMJ (IMP)'
      PAYDR42H='PAID LEAVE TO VISIT DR RD 4/2 CMJ (IMP)'
      PAYDR53H='PAID LEAVE TO VISIT DR RD 5/3 CMJ (IMP)'
      RTPLN31H='PENSION PLAN AT RD 3/1 CMJ (IMP)'
      RTPLN42H='PENSION PLAN AT RD 4/2 CMJ (IMP)'
      RTPLN53H='PENSION PLAN AT RD 5/3 CMJ (IMP)'
      FILEDR17='HAS PERSON FILED A FED INCOME TAX RETURN'
      WILFIL17='WILL PERSON FILE FED INCOME TAX RETURN'
      FLSTAT17='PERSON S FILING STATUS'
      FILER17 ='PRIMARY OR SECONDARY FILER'
      JTINRU17='JOINT FILER S MEMBERSHIP IN RU'
      JNTPID17='PID OF SECONDARY FILER'
      TAXFRM17='TAX FORM PERSON WILL FILE'
      FOODST17='DID ANYONE PURCHASE FOOD STAMPS'
      FOODMN17='NUMBER OF MONTHS FOOD STAMPS PURCHASED'
      FOODVL17='MONTHLY VALUE OF FOOD STAMPS'
      TTLP17X ='PERSON S TOTAL INCOME'
      FAMINC17='FAMILY S TOTAL INCOME'
      POVCAT17='FAMILY INC AS % OF POVERTY LINE - CATEGO'
      POVLEV17='FAMILY INC AS % OF POVERTY LINE - CONTIN'
      WAGEP17X='PERSON S WAGE INCOME'
      WAGIMP17='WAGE IMPUTATION FLAG'
      BUSNP17X='PERSON S BUSINESS INCOME'
      BUSIMP17='BUSINESS INCOME IMPUTATION FLAG'
      UNEMP17X='PERSON S UNEMPLOYMENT COMP INCOME'
      UNEIMP17='UNEMPLOYMENT IMPUTATION FLAG'
      WCMPP17X='PERSON S WORKERS  COMPENSATION'
      WCPIMP17='WORKERS  COMP IMPUTATION FLAG'
      INTRP17X='PERSON S INTEREST INCOME'
      INTIMP17='INTEREST INCOME IMPUTATION FLAG'
      DIVDP17X='PERSON S DIVIDEND INCOME'
      DIVIMP17='DIVIDEND INCOME IMPUTATION FLAG'
      SALEP17X='PERSON S SALES INCOME'
      SALIMP17='SALES INCOME IMPUTATION FLAG'
      PENSP17X='PERSON S PENSION INCOME'
      PENIMP17='PENSION INCOME IMPUTATION FLAG'
      SSECP17X='PERSON S SOCIAL SECURITY INCOME'
      SSCIMP17='SOCIAL SECURITY INCOME IMPUTATION FLAG'
      TRSTP17X='PERSON S TRUST/RENT INCOME'
      TRTIMP17='TRUST INCOME IMPUTATION FLAG'
      VETSP17X='PERSON S VETERAN S INCOME'
      VETIMP17='VETERAN S INCOME IMPUTATION FLAG'
      IRASP17X='PERSON S IRA INCOME'
      IRAIMP17='IRA INCOME IMPUTATION FLAG'
      ALIMP17X='PERSON S ALIMONY INCOME'
      ALIIMP17='ALIMONY INCOME IMPUTATION FLAG'
      CHLDP17X='PERSON S CHILD SUPPORT'
      CHLIMP17='CHILD SUPPORT IMPUTATION FLAG'
      CASHP17X='PERSON S OTHER REGULAR CASH CONTRIBUTION'
      CSHIMP17='CASH CONTRIBUTION IMPUTATION FLAG'
      SSIP17X ='PERSON S SSI'
      SSIIMP17='SSI IMPUTATION FLAG'
      PUBP17X ='PERSON S PUBLIC ASSISTANCE'
      PUBIMP17='PUBLIC ASSISTANCE IMPUTATION FLAG'
      OTHRP17X='PERSON S OTHER INCOME'
      OTHIMP17='OTHER INCOME IMPUTATION FLAG'
      HIEUIDX ='HIEU IDENTIFIER'
      TRIJA17X='COVERED BY TRICARE/CHAMPVA IN JAN17 (ED)'
      TRIFE17X='COVERED BY TRICARE/CHAMPVA IN FEB17 (ED)'
      TRIMA17X='COVERED BY TRICARE/CHAMPVA IN MAR17 (ED)'
      TRIAP17X='COVERED BY TRICARE/CHAMPVA IN APR17(ED)'
      TRIMY17X='COVERED BY TRICARE/CHAMPVA IN MAY17 (ED)'
      TRIJU17X='COVERED BY TRICARE/CHAMPVA IN JUN17 (ED)'
      TRIJL17X='COVERED BY TRICARE/CHAMPVA IN JUL17 (ED)'
      TRIAU17X='COVERED BY TRICARE/CHAMPVA IN AUG17 (ED)'
      TRISE17X='COVERED BY TRICARE/CHAMPVA IN SEP17 (ED)'
      TRIOC17X='COVERED BY TRICARE/CHAMPVA IN OCT17 (ED)'
      TRINO17X='COVERED BY TRICARE/CHAMPVA IN NOV17 (ED)'
      TRIDE17X='COVERED BY TRICARE/CHAMPVA IN DEC17 (ED)'
      MCRJA17 ='COVERED BY MEDICARE IN JAN17'
      MCRFE17 ='COVERED BY MEDICARE IN FEB17'
      MCRMA17 ='COVERED BY MEDICARE IN MAR17'
      MCRAP17 ='COVERED BY MEDICARE IN APR17'
      MCRMY17 ='COVERED BY MEDICARE IN MAY17'
      MCRJU17 ='COVERED BY MEDICARE IN JUN17'
      MCRJL17 ='COVERED BY MEDICARE IN JUL17'
      MCRAU17 ='COVERED BY MEDICARE IN AUG17'
      MCRSE17 ='COVERED BY MEDICARE IN SEP17'
      MCROC17 ='COVERED BY MEDICARE IN OCT17'
      MCRNO17 ='COVERED BY MEDICARE IN NOV17'
      MCRDE17 ='COVERED BY MEDICARE IN DEC17'
      MCRJA17X='COVERED BY MEDICARE IN JAN17 (ED)'
      MCRFE17X='COVERED BY MEDICARE IN FEB17 (ED)'
      MCRMA17X='COVERED BY MEDICARE IN MAR17 (ED)'
      MCRAP17X='COVERED BY MEDICARE IN APR17 (ED)'
      MCRMY17X='COVERED BY MEDICARE IN MAY17 (ED)'
      MCRJU17X='COVERED BY MEDICARE IN JUN17 (ED)'
      MCRJL17X='COVERED BY MEDICARE IN JUL17 (ED)'
      MCRAU17X='COVERED BY MEDICARE IN AUG17 (ED)'
      MCRSE17X='COVERED BY MEDICARE IN SEP17 (ED)'
      MCROC17X='COVERED BY MEDICARE IN OCT17 (ED)'
      MCRNO17X='COVERED BY MEDICARE IN NOV17 (ED)'
      MCRDE17X='COVERED BY MEDICARE IN DEC17 (ED)'
      MCDJA17 ='COV BY MEDICAID OR SCHIP IN JAN17'
      MCDFE17 ='COV BY MEDICAID OR SCHIP IN FEB17'
      MCDMA17 ='COV BY MEDICAID OR SCHIP IN MAR17'
      MCDAP17 ='COV BY MEDICAID OR SCHIP IN APR17'
      MCDMY17 ='COV BY MEDICAID OR SCHIP IN MAY17'
      MCDJU17 ='COV BY MEDICAID OR SCHIP IN JUN17'
      MCDJL17 ='COV BY MEDICAID OR SCHIP IN JUL17'
      MCDAU17 ='COV BY MEDICAID OR SCHIP IN AUG17'
      MCDSE17 ='COV BY MEDICAID OR SCHIP IN SEP17'
      MCDOC17 ='COV BY MEDICAID OR SCHIP IN OCT17'
      MCDNO17 ='COV BY MEDICAID OR SCHIP IN NOV17'
      MCDDE17 ='COV BY MEDICAID OR SCHIP IN DEC17'
      MCDJA17X='COV BY MEDICAID OR SCHIP IN JAN17 (ED)'
      MCDFE17X='COV BY MEDICAID OR SCHIP IN FEB17 (ED)'
      MCDMA17X='COV BY MEDICAID OR SCHIP IN MAR17 (ED)'
      MCDAP17X='COV BY MEDICAID OR SCHIP IN APR17 (ED)'
      MCDMY17X='COV BY MEDICAID OR SCHIP IN MAY17 (ED)'
      MCDJU17X='COV BY MEDICAID OR SCHIP IN JUN17 (ED)'
      MCDJL17X='COV BY MEDICAID OR SCHIP IN JUL17 (ED)'
      MCDAU17X='COV BY MEDICAID OR SCHIP IN AUG17 (ED)'
      MCDSE17X='COV BY MEDICAID OR SCHIP IN SEP17 (ED)'
      MCDOC17X='COV BY MEDICAID OR SCHIP IN OCT17 (ED)'
      MCDNO17X='COV BY MEDICAID OR SCHIP IN NOV17 (ED)'
      MCDDE17X='COV BY MEDICAID OR SCHIP IN DEC17 (ED)'
      OPAJA17 ='COV BY OTHER PUBLIC A INS IN JAN17'
      OPAFE17 ='COV BY OTHER PUBLIC A INS IN FEB17'
      OPAMA17 ='COV BY OTHER PUBLIC A INS IN MAR17'
      OPAAP17 ='COV BY OTHER PUBLIC A INS IN APR17'
      OPAMY17 ='COV BY OTHER PUBLIC A INS IN MAY17'
      OPAJU17 ='COV BY OTHER PUBLIC A INS IN JUN17'
      OPAJL17 ='COV BY OTHER PUBLIC A INS IN JUL17'
      OPAAU17 ='COV BY OTHER PUBLIC A INS IN AUG17'
      OPASE17 ='COV BY OTHER PUBLIC A INS IN SEP17'
      OPAOC17 ='COV BY OTHER PUBLIC A INS IN OCT17'
      OPANO17 ='COV BY OTHER PUBLIC A INS IN NOV17'
      OPADE17 ='COV BY OTHER PUBLIC A INS IN DEC17'
      OPBJA17 ='COV BY OTHER PUBLIC B INS IN JAN17'
      OPBFE17 ='COV BY OTHER PUBLIC B INS IN FEB17'
      OPBMA17 ='COV BY OTHER PUBLIC B INS IN MAR17'
      OPBAP17 ='COV BY OTHER PUBLIC B INS IN APR17'
      OPBMY17 ='COV BY OTHER PUBLIC B INS IN MAY17'
      OPBJU17 ='COV BY OTHER PUBLIC B INS IN JUN17'
      OPBJL17 ='COV BY OTHER PUBLIC B INS IN JUL17'
      OPBAU17 ='COV BY OTHER PUBLIC B INS IN AUG17'
      OPBSE17 ='COV BY OTHER PUBLIC B INS IN SEP17'
      OPBOC17 ='COV BY OTHER PUBLIC B INS IN OCT17'
      OPBNO17 ='COV BY OTHER PUBLIC B INS IN NOV17'
      OPBDE17 ='COV BY OTHER PUBLIC B INS IN DEC17'
      PUBJA17X='COVR BY ANY PUBLIC INS IN JAN17 (ED)'
      PUBFE17X='COVR BY ANY PUBLIC INS IN FEB17 (ED)'
      PUBMA17X='COVR BY ANY PUBLIC INS IN MAR17 (ED)'
      PUBAP17X='COVR BY ANY PUBLIC INS IN APR17 (ED)'
      PUBMY17X='COVR BY ANY PUBLIC INS IN MAY17 (ED)'
      PUBJU17X='COVR BY ANY PUBLIC INS IN JUN17 (ED)'
      PUBJL17X='COVR BY ANY PUBLIC INS IN JUL17 (ED)'
      PUBAU17X='COVR BY ANY PUBLIC INS IN AUG17 (ED)'
      PUBSE17X='COVR BY ANY PUBLIC INS IN SEP17 (ED)'
      PUBOC17X='COVR BY ANY PUBLIC INS IN OCT17 (ED)'
      PUBNO17X='COVR BY ANY PUBLIC INS IN NOV17 (ED)'
      PUBDE17X='COVR BY ANY PUBLIC INS IN DEC17 (ED)'
      PEGJA17 ='COVERED BY EMPL UNION INS IN JAN17'
      PEGFE17 ='COVERED BY EMPL UNION INS IN FEB17'
      PEGMA17 ='COVERED BY EMPL UNION INS IN MAR17'
      PEGAP17 ='COVERED BY EMPL UNION INS IN APR17'
      PEGMY17 ='COVERED BY EMPL UNION INS IN MAY17'
      PEGJU17 ='COVERED BY EMPL UNION INS IN JUN17'
      PEGJL17 ='COVERED BY EMPL UNION INS IN JUL17'
      PEGAU17 ='COVERED BY EMPL UNION INS IN AUG17'
      PEGSE17 ='COVERED BY EMPL UNION INS IN SEP17'
      PEGOC17 ='COVERED BY EMPL UNION INS IN OCT17'
      PEGNO17 ='COVERED BY EMPL UNION INS IN NOV17'
      PEGDE17 ='COVERED BY EMPL UNION INS IN DEC17'
      PDKJA17 ='COVR BY PRIV INS (SOURCE UNKNWN) JAN17'
      PDKFE17 ='COVR BY PRIV INS (SOURCE UNKNWN) FEB17'
      PDKMA17 ='COVR BY PRIV INS (SOURCE UNKNWN) MAR17'
      PDKAP17 ='COVR BY PRIV INS (SOURCE UNKNWN) APR17'
      PDKMY17 ='COVR BY PRIV INS (SOURCE UNKNWN) MAY17'
      PDKJU17 ='COVR BY PRIV INS (SOURCE UNKNWN) JUN17'
      PDKJL17 ='COVR BY PRIV INS (SOURCE UNKNWN) JUL17'
      PDKAU17 ='COVR BY PRIV INS (SOURCE UNKNWN) AUG17'
      PDKSE17 ='COVR BY PRIV INS (SOURCE UNKNWN) SEP17'
      PDKOC17 ='COVR BY PRIV INS (SOURCE UNKNWN) OCT17'
      PDKNO17 ='COVR BY PRIV INS (SOURCE UNKNWN) NOV17'
      PDKDE17 ='COVR BY PRIV INS (SOURCE UNKNWN) DEC17'
      PNGJA17 ='COVERED BY NONGROUP INS IN JAN17'
      PNGFE17 ='COVERED BY NONGROUP INS IN FEB17'
      PNGMA17 ='COVERED BY NONGROUP INS IN MAR17'
      PNGAP17 ='COVERED BY NONGROUP INS IN APR17'
      PNGMY17 ='COVERED BY NONGROUP INS IN MAY17'
      PNGJU17 ='COVERED BY NONGROUP INS IN JUN17'
      PNGJL17 ='COVERED BY NONGROUP INS IN JUL17'
      PNGAU17 ='COVERED BY NONGROUP INS IN AUG17'
      PNGSE17 ='COVERED BY NONGROUP INS IN SEP17'
      PNGOC17 ='COVERED BY NONGROUP INS IN OCT17'
      PNGNO17 ='COVERED BY NONGROUP INS IN NOV17'
      PNGDE17 ='COVERED BY NONGROUP INS IN DEC17'
      POGJA17 ='COVERED BY OTHER GROUP INS IN JAN17'
      POGFE17 ='COVERED BY OTHER GROUP INS IN FEB17'
      POGMA17 ='COVERED BY OTHER GROUP INS IN MAR17'
      POGAP17 ='COVERED BY OTHER GROUP INS IN APR17'
      POGMY17 ='COVERED BY OTHER GROUP INS IN MAY17'
      POGJU17 ='COVERED BY OTHER GROUP INS IN JUN17'
      POGJL17 ='COVERED BY OTHER GROUP INS IN JUL17'
      POGAU17 ='COVERED BY OTHER GROUP INS IN AUG17'
      POGSE17 ='COVERED BY OTHER GROUP INS IN SEP17'
      POGOC17 ='COVERED BY OTHER GROUP INS IN OCT17'
      POGNO17 ='COVERED BY OTHER GROUP INS IN NOV17'
      POGDE17 ='COVERED BY OTHER GROUP INS IN DEC17'
      PRSJA17 ='COVERED BY SELF-EMP-1 INS IN JAN17'
      PRSFE17 ='COVERED BY SELF-EMP-1 INS IN FEB17'
      PRSMA17 ='COVERED BY SELF-EMP-1 INS IN MAR17'
      PRSAP17 ='COVERED BY SELF-EMP-1 INS IN APR17'
      PRSMY17 ='COVERED BY SELF-EMP-1 INS IN MAY17'
      PRSJU17 ='COVERED BY SELF-EMP-1 INS IN JUN17'
      PRSJL17 ='COVERED BY SELF-EMP-1 INS IN JUL17'
      PRSAU17 ='COVERED BY SELF-EMP-1 INS IN AUG17'
      PRSSE17 ='COVERED BY SELF-EMP-1 INS IN SEP17'
      PRSOC17 ='COVERED BY SELF-EMP-1 INS IN OCT17'
      PRSNO17 ='COVERED BY SELF-EMP-1 INS IN NOV17'
      PRSDE17 ='COVERED BY SELF-EMP-1 INS IN DEC17'
      POUJA17 ='COVERED BY HOLDER OUTSIDE OF RU IN JAN17'
      POUFE17 ='COVERED BY HOLDER OUTSIDE OF RU IN FEB17'
      POUMA17 ='COVERED BY HOLDER OUTSIDE OF RU IN MAR17'
      POUAP17 ='COVERED BY HOLDER OUTSIDE OF RU IN APR17'
      POUMY17 ='COVERED BY HOLDER OUTSIDE OF RU IN MAY17'
      POUJU17 ='COVERED BY HOLDER OUTSIDE OF RU IN JUN17'
      POUJL17 ='COVERED BY HOLDER OUTSIDE OF RU IN JUL17'
      POUAU17 ='COVERED BY HOLDER OUTSIDE OF RU IN AUG17'
      POUSE17 ='COVERED BY HOLDER OUTSIDE OF RU IN SEP17'
      POUOC17 ='COVERED BY HOLDER OUTSIDE OF RU IN OCT17'
      POUNO17 ='COVERED BY HOLDER OUTSIDE OF RU IN NOV17'
      POUDE17 ='COVERED BY HOLDER OUTSIDE OF RU IN DEC17'
      PRXJA17 ='COV BY PRIV INS THROUGH EXCHNG IN JAN17'
      PRXFE17 ='COV BY PRIV INS THROUGH EXCHNG IN FEB17'
      PRXMA17 ='COV BY PRIV INS THROUGH EXCHNG IN MAR17'
      PRXAP17 ='COV BY PRIV INS THROUGH EXCHNG IN APR17'
      PRXMY17 ='COV BY PRIV INS THROUGH EXCHNG IN MAY17'
      PRXJU17 ='COV BY PRIV INS THROUGH EXCHNG IN JUN17'
      PRXJL17 ='COV BY PRIV INS THROUGH EXCHNG IN JUL17'
      PRXAU17 ='COV BY PRIV INS THROUGH EXCHNG IN AUG17'
      PRXSE17 ='COV BY PRIV INS THROUGH EXCHNG IN SEP17'
      PRXOC17 ='COV BY PRIV INS THROUGH EXCHNG IN OCT17'
      PRXNO17 ='COV BY PRIV INS THROUGH EXCHNG IN NOV17'
      PRXDE17 ='COV BY PRIV INS THROUGH EXCHNG IN DEC17'
      PRIJA17 ='COVERED BY PRIVATE INS IN JAN17'
      PRIFE17 ='COVERED BY PRIVATE INS IN FEB17'
      PRIMA17 ='COVERED BY PRIVATE INS IN MAR17'
      PRIAP17 ='COVERED BY PRIVATE INS IN APR17'
      PRIMY17 ='COVERED BY PRIVATE INS IN MAY17'
      PRIJU17 ='COVERED BY PRIVATE INS IN JUN17'
      PRIJL17 ='COVERED BY PRIVATE INS IN JUL17'
      PRIAU17 ='COVERED BY PRIVATE INS IN AUG17'
      PRISE17 ='COVERED BY PRIVATE INS IN SEP17'
      PRIOC17 ='COVERED BY PRIVATE INS IN OCT17'
      PRINO17 ='COVERED BY PRIVATE INS IN NOV17'
      PRIDE17 ='COVERED BY PRIVATE INS IN DEC17'
      HPEJA17 ='HOLDER OF EMPL UNION INS IN JAN17'
      HPEFE17 ='HOLDER OF EMPL UNION INS IN FEB17'
      HPEMA17 ='HOLDER OF EMPL UNION INS IN MAR17'
      HPEAP17 ='HOLDER OF EMPL UNION INS IN APR17'
      HPEMY17 ='HOLDER OF EMPL UNION INS IN MAY17'
      HPEJU17 ='HOLDER OF EMPL UNION INS IN JUN17'
      HPEJL17 ='HOLDER OF EMPL UNION INS IN JUL17'
      HPEAU17 ='HOLDER OF EMPL UNION INS IN AUG17'
      HPESE17 ='HOLDER OF EMPL UNION INS IN SEP17'
      HPEOC17 ='HOLDER OF EMPL UNION INS IN OCT17'
      HPENO17 ='HOLDER OF EMPL UNION INS IN NOV17'
      HPEDE17 ='HOLDER OF EMPL UNION INS IN DEC17'
      HPDJA17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) JAN17'
      HPDFE17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) FEB17'
      HPDMA17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) MAR17'
      HPDAP17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) APR17'
      HPDMY17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) MAY17'
      HPDJU17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) JUN17'
      HPDJL17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) JUL17'
      HPDAU17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) AUG17'
      HPDSE17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) SEP17'
      HPDOC17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) OCT17'
      HPDNO17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) NOV17'
      HPDDE17 ='HOLDER OF PRIV INS (SOURCE UNKNWN) DEC17'
      HPNJA17 ='HOLDER OF NONGROUP INS IN JAN17'
      HPNFE17 ='HOLDER OF NONGROUP INS IN FEB17'
      HPNMA17 ='HOLDER OF NONGROUP INS IN MAR17'
      HPNAP17 ='HOLDER OF NONGROUP INS IN APR17'
      HPNMY17 ='HOLDER OF NONGROUP INS IN MAY17'
      HPNJU17 ='HOLDER OF NONGROUP INS IN JUN17'
      HPNJL17 ='HOLDER OF NONGROUP INS IN JUL17'
      HPNAU17 ='HOLDER OF NONGROUP INS IN AUG17'
      HPNSE17 ='HOLDER OF NONGROUP INS IN SEP17'
      HPNOC17 ='HOLDER OF NONGROUP INS IN OCT17'
      HPNNO17 ='HOLDER OF NONGROUP INS IN NOV17'
      HPNDE17 ='HOLDER OF NONGROUP INS IN DEC17'
      HPOJA17 ='HOLDER OF OTHER GROUP INS IN JAN17'
      HPOFE17 ='HOLDER OF OTHER GROUP INS IN FEB17'
      HPOMA17 ='HOLDER OF OTHER GROUP INS IN MAR17'
      HPOAP17 ='HOLDER OF OTHER GROUP INS IN APR17'
      HPOMY17 ='HOLDER OF OTHER GROUP INS IN MAY17'
      HPOJU17 ='HOLDER OF OTHER GROUP INS IN JUN17'
      HPOJL17 ='HOLDER OF OTHER GROUP INS IN JUL17'
      HPOAU17 ='HOLDER OF OTHER GROUP INS IN AUG17'
      HPOSE17 ='HOLDER OF OTHER GROUP INS IN SEP17'
      HPOOC17 ='HOLDER OF OTHER GROUP INS IN OCT17'
      HPONO17 ='HOLDER OF OTHER GROUP INS IN NOV17'
      HPODE17 ='HOLDER OF OTHER GROUP INS IN DEC17'
      HPSJA17 ='HOLDER OF SELF-EMP-1 INS IN JAN17'
      HPSFE17 ='HOLDER OF SELF-EMP-1 INS IN FEB17'
      HPSMA17 ='HOLDER OF SELF-EMP-1 INS IN MAR17'
      HPSAP17 ='HOLDER OF SELF-EMP-1 INS IN APR17'
      HPSMY17 ='HOLDER OF SELF-EMP-1 INS IN MAY17'
      HPSJU17 ='HOLDER OF SELF-EMP-1 INS IN JUN17'
      HPSJL17 ='HOLDER OF SELF-EMP-1 INS IN JUL17'
      HPSAU17 ='HOLDER OF SELF-EMP-1 INS IN AUG17'
      HPSSE17 ='HOLDER OF SELF-EMP-1 INS IN SEP17'
      HPSOC17 ='HOLDER OF SELF-EMP-1 INS IN OCT17'
      HPSNO17 ='HOLDER OF SELF-EMP-1 INS IN NOV17'
      HPSDE17 ='HOLDER OF SELF-EMP-1 INS IN DEC17'
      HPXJA17 ='HOLDER OF PRIV INS THROUGH EXCH IN JAN17'
      HPXFE17 ='HOLDER OF PRIV INS THROUGH EXCH IN FEB17'
      HPXMA17 ='HOLDER OF PRIV INS THROUGH EXCH IN MAR17'
      HPXAP17 ='HOLDER OF PRIV INS THROUGH EXCH IN APR17'
      HPXMY17 ='HOLDER OF PRIV INS THROUGH EXCH IN MAY17'
      HPXJU17 ='HOLDER OF PRIV INS THROUGH EXCH IN JUN17'
      HPXJL17 ='HOLDER OF PRIV INS THROUGH EXCH IN JUL17'
      HPXAU17 ='HOLDER OF PRIV INS THROUGH EXCH IN AUG17'
      HPXSE17 ='HOLDER OF PRIV INS THROUGH EXCH IN SEP17'
      HPXOC17 ='HOLDER OF PRIV INS THROUGH EXCH IN OCT17'
      HPXNO17 ='HOLDER OF PRIV INS THROUGH EXCH IN NOV17'
      HPXDE17 ='HOLDER OF PRIV INS THROUGH EXCH IN DEC17'
      HPRJA17 ='HOLDER OF PRIVATE INSURANCE IN JAN17'
      HPRFE17 ='HOLDER OF PRIVATE INSURANCE IN FEB17'
      HPRMA17 ='HOLDER OF PRIVATE INSURANCE IN MAR17'
      HPRAP17 ='HOLDER OF PRIVATE INSURANCE IN APR17'
      HPRMY17 ='HOLDER OF PRIVATE INSURANCE IN MAY17'
      HPRJU17 ='HOLDER OF PRIVATE INSURANCE IN JUN17'
      HPRJL17 ='HOLDER OF PRIVATE INSURANCE IN JUL17'
      HPRAU17 ='HOLDER OF PRIVATE INSURANCE IN AUG17'
      HPRSE17 ='HOLDER OF PRIVATE INSURANCE IN SEP17'
      HPROC17 ='HOLDER OF PRIVATE INSURANCE IN OCT17'
      HPRNO17 ='HOLDER OF PRIVATE INSURANCE IN NOV17'
      HPRDE17 ='HOLDER OF PRIVATE INSURANCE IN DEC17'
      INSJA17X='COVR BY HOSP/MED INS IN JAN17 (ED)'
      INSFE17X='COVR BY HOSP/MED INS IN FEB17 (ED)'
      INSMA17X='COVR BY HOSP/MED INS IN MAR17 (ED)'
      INSAP17X='COVR BY HOSP/MED INS IN APR17 (ED)'
      INSMY17X='COVR BY HOSP/MED INS IN MAY17 (ED)'
      INSJU17X='COVR BY HOSP/MED INS IN JUN17 (ED)'
      INSJL17X='COVR BY HOSP/MED INS IN JUL17 (ED)'
      INSAU17X='COVR BY HOSP/MED INS IN AUG17 (ED)'
      INSSE17X='COVR BY HOSP/MED INS IN SEP17 (ED)'
      INSOC17X='COVR BY HOSP/MED INS IN OCT17 (ED)'
      INSNO17X='COVR BY HOSP/MED INS IN NOV17 (ED)'
      INSDE17X='COVR BY HOSP/MED INS IN DEC17 (ED)'
      PRVEV17 ='EVER HAVE PRIVATE INSURANCE DURING 2017'
      TRIEV17 ='EVER HAVE TRICARE/CHAMPVA DURING 2017'
      MCREV17 ='EVER HAVE MEDICARE DURING 2017 (ED)'
      MCDEV17 ='EVER HAVE MCAID/SCHIP DURING 2017 (ED)'
      OPAEV17 ='EVER HAVE OTHER PUBLIC A INS DURING 2017'
      OPBEV17 ='EVER HAVE OTHER PUBLIC B INS DURING 2017'
      UNINS17 ='UNINSURED ALL OF 2017'
      INSCOV17='HEALTH INSURANCE COVERAGE INDICATOR 2017'
      INSURC17='FULL YEAR INSURANCE COVERAGE STATUS 2017'
      TRIST31X='COV BY TRICARE STANDARD-ANY TIME IN R3/1'
      TRIST42X='COV BY TRICARE STANDARD-ANY TIME IN R4/2'
      TRIST17X='CV BY TRICARE STANDARD-R5/3 TIL 12/31/17'
      TRIPR31X='COV BY TRICARE PRIME - ANY TIME IN R3/1'
      TRIPR42X='COV BY TRICARE PRIME - ANY TIME IN R4/2'
      TRIPR17X='COV BY TRICARE PRIME-R5/3 UNTIL 12/31/17'
      TRIEX31X='COV BY TRICARE EXTRA - ANY TIME IN R3/1'
      TRIEX42X='COV BY TRICARE EXTRA - ANY TIME IN R4/2'
      TRIEX17X='COV BY TRICARE EXTRA - R5/3 TIL 12/31/17'
      TRILI31X='COV BY TRICARE FOR LIFE-ANY TIME IN R3/1'
      TRILI42X='COV BY TRICARE FOR LIFE-ANY TIME IN R4/2'
      TRILI17X='CV BY TRICARE FOR LIFE-R5/3 TIL 12/31/17'
      TRICH31X='COVERED BY CHAMPVA - ANY TIME IN R3/1'
      TRICH42X='COVERED BY CHAMPVA - ANY TIME IN R4/2'
      TRICH17X='COVERED BY CHAMPVA - R5/3 UNTIL 12/31/17'
      MCRPD31 ='COV BY MEDICARE PMED BENEFIT - R3/1'
      MCRPD42 ='COV BY MEDICARE PMED BENEFIT - R4/2'
      MCRPD17 ='COV BY MEDICARE PMED BENEFIT - 12/31/17'
      MCRPD31X='COV BY MEDICARE PMED BENEFIT - R3/1 (ED)'
      MCRPD42X='COV BY MEDICARE PMED BENEFIT - R4/2 (ED)'
      MCRPD17X='COV BY MCARE PMED BENEFIT-12/31/17 (ED)'
      MCRPB31 ='COV BY MEDICARE PART B - R3/1'
      MCRPB42 ='COV BY MEDICARE PART B - R4/2'
      MCRPB17 ='COV BY MEDICARE PART B - 12/31/17'
      MCRPHO31='COV BY MEDICARE MANAGED CARE - R3/1'
      MCRPHO42='COV BY MEDICARE MANAGED CARE - R4/2'
      MCRPHO17='COV BY MEDICARE MANAGED CARE - 12/31/17'
      MCDHMO31='COV BY MCAID/SCHIP HMO -ANY TIME IN R3/1'
      MCDHMO42='COV BY MCAID/SCHIP HMO -ANY TIME IN R4/2'
      MCDHMO17='COV BY MCAID/SCHIP HMO-R5/3 TIL 12/31/17'
      MCDMC31 ='CV MCAID/CHIP GTKPR PLN-ANY TIME IN R3/1'
      MCDMC42 ='CV MCAID/CHIP GTKPR PLN-ANY TIME IN R4/2'
      MCDMC17 ='CV MCD/CHIP GTKPR PLN-R5/3 TIL 12/31/17'
      PRVHMO31='COVERED BY PRIVATE HMO-ANY TIME IN R3/1'
      PRVHMO42='COVERED BY PRIVATE HMO-ANY TIME IN R4/2'
      PRVHMO17='COVERED BY PRIVATE HMO-R5/3 TIL 12/31/17'
      FSAGT31 ='ANYONE IN RU HAVE FSA - R3/1'
      HASFSA31='PERSON IS FSA HOLDER - R3/1'
      FSAAMT31='FSA TOTAL AMOUNT FOR RU - R3/1'
      PROBPY42='FAMILY HAVING PROB PAYING MEDICAL BILLS'
      CRFMPY42='FAMILY MED BILLS BEING PAID OVER TIME'
      PYUNBL42='UNABLE TO PAY FAMILY MEDICAL BILLS'
      PREVCOVR='PER COV BY INS IN PREV 2 YRS-PNL 22 ONLY'
      COVRMM  ='MONTH MOST RECENTLY COVERED-PNL 22 ONLY'
      COVRYY  ='YEAR MOST RECENTLY COVERED-PANEL 22 ONLY'
      WASESTB ='WAS PREV INS BY EMPL OR UNION-PN 22 ONLY'
      WASMCARE='WAS PREV INS BY MEDICARE-PANEL 22 ONLY'
      WASMCAID='WAS PREV INS BY MCAID/SCHIP-PNL 22 ONLY'
      WASCHAMP='WAS PREV INS TRICARE/CHAMPVA-PNL 22 ONLY'
      WASVA   ='WAS PREV INS VA/MILITAR CARE-PNL 22 ONLY'
      WASPRIV ='WAS PREV INS GRP/ASSOC/INS CO-PN 22 ONLY'
      WASOTGOV='WAS PREV INS BY OTH GOV PRG-PNL 22 ONLY'
      WASAFDC ='WAS PREV INS BY PUBLIC AFDC-PNL 22 ONLY'
      WASSSI  ='WAS PREV INS BY SSI PROGRAM-PNL 22 ONLY'
      WASSTAT1='WAS PREV INS BY STAT PROG 1-PNL 22 ONLY'
      WASSTAT2='WAS PREV INS BY STAT PROG 2-PNL 22 ONLY'
      WASSTAT3='WAS PREV INS BY STAT PROG 3-PNL 22 ONLY'
      WASSTAT4='WAS PREV INS BY STAT PROG 4-PNL 22 ONLY'
      WASOTHER='WAS PREV INS BY OTH SOURCE-PANEL 22 ONLY'
      NOINSBEF='EVR WOUT HLTH INSR PREV YR-PANEL 22 ONLY'
      NOINSTM ='# WKS/MON WOUT HLTH INS PRV YR-P22 ONLY'
      NOINUNIT='UNIT OF TIME WOUT HLTH INS-PANEL 22 ONLY'
      MORECOVR='COV BY MOR COMPR PL PREV 2 YR-PN 22 ONLY'
      INSENDMM='MONTH MOST RECENTLY COVD-PANEL 22 ONLY'
      INSENDYY='YEAR MOST RECENTLY COVD-PANEL 22 ONLY'
      TRICR31X='COV BY TRICR/CHAMV - R3/1 INT DT (ED)'
      TRICR42X='COV BY TRICR/CHAMV - R4/2 INT DT (ED)'
      TRICR53X='COV BY TRICR/CHAMV 12-31/R3 INT DT (ED)'
      TRICR17X='COV BY TRICR/CHAMV - 12/31/17 (ED)'
      TRIAT31X='COV TRICARE/CHAMPVA - ANY TIME IN R3/1'
      TRIAT42X='COV TRICARE/CHAMPVA - ANY TIME IN R4/2'
      TRIAT53X='COV TRICARE/CHAMPVA - ANY TIME IN R5/3'
      TRIAT17X='COV TRICARE/CHAMPVA-R5/3 UNTIL 12/31/17'
      MCAID31 ='COV BY MEDICAID OR SCHIP - R3/1 INT DT'
      MCAID42 ='COV BY MEDICAID OR SCHIP - R4/2 INT DT'
      MCAID53 ='COV BY MEDICAID OR SCHIP 12-31/R3 INT DT'
      MCAID17 ='COV BY MEDICAID OR SCHIP - 12/31/17'
      MCAID31X='COV BY MEDICAID/SCHIP - R3/1 INT DT (ED)'
      MCAID42X='COV BY MEDICAID/SCHIP - R4/2 INT DT (ED)'
      MCAID53X='COV MEDICAID/SCHIP 12-31/R3 INT DT(ED)'
      MCAID17X='COV BY MEDICAID OR SCHIP - 12/31/17 (ED)'
      MCARE31 ='COV BY MEDICARE - R3/1 INT DT'
      MCARE42 ='COV BY MEDICARE - R4/2 INT DT'
      MCARE53 ='COV BY MEDICARE 12-31/R3 INT DT'
      MCARE17 ='COV BY MEDICARE - 12/31/17'
      MCARE31X='COV BY MEDICARE - R3/1 INT DT (ED)'
      MCARE42X='COV BY MEDICARE - R4/2 INT DT (ED)'
      MCARE53X='COV BY MEDICARE 12-31/R3 INT DT (ED)'
      MCARE17X='COV BY MEDICARE - 12/31/17 (ED)'
      MCDAT31X='COV MEDICAID OR SCHIP - ANY TIME IN R3/1'
      MCDAT42X='COV MEDICAID OR SCHIP - ANY TIME IN R4/2'
      MCDAT53X='COV MEDICAID OR SCHIP - ANY TIME IN R5/3'
      MCDAT17X='CV MCD/CHIP-ANY TME IN R5/3 TIL 12/31/17'
      OTPAAT31='COV OT GOV MCD/CHIP HMO-ANY TIME IN R3/1'
      OTPAAT42='COV OT GOV MCD/CHIP HMO-ANY TIME IN R4/2'
      OTPAAT53='COV OT GOV MCD/CHIP HMO-ANY TIME IN R5/3'
      OTPAAT17='CV OT GOV MCD/CHIP HMO-R5/3 TIL 12/31/17'
      OTPBAT31='CV OTGV NT MCD/CHIP HMO-ANY TIME IN R3/1'
      OTPBAT42='CV OTGV NT MCD/CHIP HMO-ANY TIME IN R4/2'
      OTPBAT53='CV OTGV NT MCD/CHIP HMO-ANY TIME IN R5/3'
      OTPBAT17='CV OTGV NT MCD/CHP HMO-R5/3 TIL 12/31/17'
      OTPUBA31='COV/PAY OTH GOV MCAID/SCHIP HMO-R3/1 INT'
      OTPUBA42='COV/PAY OTH GOV MCAID/SCHIP HMO-R4/2 INT'
      OTPUBA53='COV/PAY OTH GOV MCAID/SCHIP HMO 12-31/R3'
      OTPUBA17='COV/PAY OTH GOV MCAID/SCHIP HMO-12/31/17'
      OTPUBB31='COV OTH GOV NOT MCAID/SCHIP HMO-R3/1 INT'
      OTPUBB42='COV OTH GOV NOT MCAID/SCHIP HMO-R4/2 INT'
      OTPUBB53='COV OTH GOV NOT MCAID/SCHIP HMO 12-31/R3'
      OTPUBB17='COV OTH GOV NOT MCAID/SCHIP HMO-12/31/17'
      PRIDK31 ='COV BY PRIV INS (DK PLAN) - R3/1 INT'
      PRIDK42 ='COV BY PRIV INS (DK PLAN) - R4/2 INT'
      PRIDK53 ='COV BY PRIV INS (DK PLAN) 12-31/R3 INT'
      PRIDK17 ='COV BY PRIV INS (DK PLAN) - 12/31/17'
      PRIEU31 ='COV BY EMPL/UNION GRP INS - R3/1 INT DT'
      PRIEU42 ='COV BY EMPL/UNION GRP INS - R4/2 INT DT'
      PRIEU53 ='COV BY EMPL/UNION GRP INS 12-31/R3 INT'
      PRIEU17 ='COV BY EMPL/UNION GRP INS - 12/31/17'
      PRING31 ='COV BY NON-GROUP INS - R3/1 INT DT'
      PRING42 ='COV BY NON-GROUP INS - R4/2 INT DT'
      PRING53 ='COV BY NON-GROUP INS 12-31/R3 INT DT'
      PRING17 ='COV BY NON-GROUP INS - 12/31/17'
      PRIOG31 ='COV BY OTHER GROUP INS - R3/1 INT DT'
      PRIOG42 ='COV BY OTHER GROUP INS - R4/2 INT DT'
      PRIOG53 ='COV BY OTHER GROUP INS 12-31/R3 INT DT'
      PRIOG17 ='COV BY OTHER GROUP INS - 12/31/17'
      PRIS31  ='COV BY SELF-EMP-1 INS - R3/1 INT DT'
      PRIS42  ='COV BY SELF-EMP-1 INS - R4/2 INT DT'
      PRIS53  ='COV BY SELF-EMP-1 INS 12-31/R3 INT DT'
      PRIS17  ='COV BY SELF-EMP-1 INS - 12/31/17'
      PROUT31 ='COV BY SOMEONE OUT OF RU - R3/1 INT'
      PROUT42 ='COV BY SOMEONE OUT OF RU - R4/2 INT'
      PROUT53 ='COV BY SOMEONE OUT OF RU 12-31/R3 INT DT'
      PROUT17 ='COV BY SOMEONE OUT OF RU - 12/31/17'
      PRSTX31 ='COV BY PRIV EXCHANGE INS -R3/1 INT DT'
      PRSTX42 ='COV BY PRIV EXCHANGE INS -R4/2 INT DT'
      PRSTX53 ='PRIV EXCHANGE INS ON 12-31 R5/R3 INT DT'
      PRSTX17 ='PRIV EXCHANGE INSURANCE ON 12/31/17'
      PRIV31  ='COV BY PRIV HLTH INS - R3/1 INT DATE'
      PRIV42  ='COV BY PRIV HLTH INS - R4/2 INT DATE'
      PRIV53  ='COV BY PRIV HLTH INS 12-31/R3 INT DATE'
      PRIV17  ='COV BY PRIV HLTH INS - 12/31/17'
      PRIVAT31='COV BY PRIVATE INS - ANY TIME IN R3/1'
      PRIVAT42='COV BY PRIVATE INS - ANY TIME IN R4/2'
      PRIVAT53='COV BY PRIVATE INS - ANY TIME IN R5/3'
      PRIVAT17='COV BY PRIVATE INS - R5/3 UNTIL 12/31/17'
      PUB31X  ='COV BY PUBLIC INS - R3/1 INT DT (ED)'
      PUB42X  ='COV BY PUBLIC INS - R4/2 INT DT (ED)'
      PUB53X  ='COV BY PUBLIC INS 12-31/R3 INT DT (ED)'
      PUB17X  ='COV BY PUBLIC INS - 12/31/17 (ED)'
      PUBAT31X='COV BY PUBLIC - ANY TIME IN R3/1'
      PUBAT42X='COV BY PUBLIC - ANY TIME IN R4/2'
      PUBAT53X='COV BY PUBLIC - ANY TIME IN R5/3'
      PUBAT17X='COV BY PUBLIC - R5/3 UNTIL 12/31/17'
      INS31X  ='INSURED - R3/1 INT DATE (ED)'
      INS42X  ='INSURED - R4/2 INT DATE (ED)'
      INS53X  ='INSURED 12-31/R3 INT DATE (ED)'
      INS17X  ='INSURED - 12/31/17 (ED)'
      INSAT31X='INSURED ANY TIME IN R3/1'
      INSAT42X='INSURED ANY TIME IN R4/2'
      INSAT53X='INSURED ANY TIME IN R5/3'
      INSAT17X='INSURED ANY TIME IN R5/R3 UNTIL 12/31/17'
      DENTIN31='DENTAL INSURANCE - ANY TIME IN RD 3/1'
      DENTIN42='DENTAL INSURANCE - ANY TIME IN RD 4/2'
      DENTIN53='DENTAL INSURANCE - ANY TIME IN RD 5/3'
      DNTINS31='DENTAL INS - ANY TIME IN RD 3/1 IN 2017'
      DNTINS17='DENTL INS-ANY TIME IN R5/R3 TIL 12/31/17'
      PMEDIN31='PMED INS - ANY TIME IN RD 3/1'
      PMEDIN42='PMEDINS - ANY TIME IN RD 4/2'
      PMEDIN53='PMEDINS - ANY TIME IN RD 5/3'
      PMDINS31='PMED INS - RD 3/1 IN 2017'
      PMDINS17='PMED INS - R5/R3 UNTIL 12/31/17'
      PMEDUP31='HAS USUAL 3RD PARTY PAYER FOR PMEDS-R3/1'
      PMEDUP42='HAS USUAL 3RD PARTY PAYER FOR PMEDS-R4/2'
      PMEDUP53='HAS USUAL 3RD PARTY PAYER FOR PMEDS-R5/3'
      PMEDPY31='USUAL 3RD PARTY PAYER FOR PMEDS - R3/1'
      PMEDPY42='USUAL 3RD PARTY PAYER FOR PMEDS - R4/2'
      PMEDPY53='USUAL 3RD PARTY PAYER FOR PMEDS - R5/3'
      TOTTCH17='TOTAL HEALTH CARE CHARGES 17, EXCL RX'
      TOTEXP17='TOTAL HEALTH CARE EXP 17'
      TOTSLF17='TOTAL AMT PAID BY SELF/FAMILY 17'
      TOTMCR17='TOTAL AMT PAID BY MEDICARE 17'
      TOTMCD17='TOTAL AMT PAID BY MEDICAID 17'
      TOTPRV17='TOTAL AMT PAID BY PRIVATE INS 17'
      TOTVA17 ='TOTAL AMT PAID BY VA/CHAMPVA 17'
      TOTTRI17='TOTAL AMT PAID BY TRICARE 17'
      TOTOFD17='TOTAL AMT PAID BY OTHER FEDERAL 17'
      TOTSTL17='TOTAL AMT PAID BY OTH ST/LOCAL 17'
      TOTWCP17='TOTAL AMT PAID BY WORKERS COMP 17'
      TOTOPR17='TOTAL AMT PAID BY OTHER PRIVATE 17'
      TOTOPU17='TOTAL AMT PAID BY OTHER PUBLIC 17'
      TOTOSR17='TOTAL AMT PAID BY OTHER SOURCES 17'
      TOTPTR17='TOTAL AMT PAID BY PRV & TRI 17'
      TOTOTH17='TOTAL AMT PAID BY OTH COMBINED 17'
      OBTOTV17='# OFFICE-BASED PROVIDER VISITS 17'
      OBVTCH17='OFFICE-BASED PROVIDER VISIT CHARGES 17'
      OBVEXP17='TOTAL OFFICE-BASED EXP 17'
      OBVSLF17='ALL OFFICE VISITS - SELF/FAMILY AMT 17'
      OBVMCR17='ALL OFFICE VISITS - MEDICARE AMT 17'
      OBVMCD17='ALL OFFICE VISITS - MEDICAID AMT 17'
      OBVPRV17='ALL OFFICE VISITS - PRIVATE INS AMT 17'
      OBVVA17 ='ALL OFFICE VISITS-VA/CHAMPVA AMT 17'
      OBVTRI17='ALL OFFICE VISITS-TRICARE AMT 17'
      OBVOFD17='ALL OFFICE VISITS-OTHER FEDERAL AMT 17'
      OBVSTL17='ALL OFFICE VISITS-OTH ST/LOCAL AMT 17'
      OBVWCP17='ALL OFFICE VISITS - WORKERS COMP AMT 17'
      OBVOPR17='ALL OFFICE VISITS - OTH PRIVATE AMT 17'
      OBVOPU17='ALL OFFICE VISITS - OTH PUBLIC AMT 17'
      OBVOSR17='ALL OFF VSTS - OTH UNCLASS SRCE AMT 17'
      OBVPTR17='ALL OFFICE VISITS - PRV & TRI AMT 17'
      OBVOTH17='ALL OFFICE VISITS - OTH COMBINED AMT 17'
      OBDRV17 ='# OFFICE-BASED PHYSICIAN VISITS 17'
      OBDTCH17='OFFICE-BASED PHYSICIAN VISIT CHARGES 17'
      OBDEXP17='TOTAL OFF-BASED DR EXP 17'
      OBDSLF17='DR OFFICE VISITS - SELF/FAMILY AMT 17'
      OBDMCR17='DR OFFICE VISITS - MEDICARE AMT 17'
      OBDMCD17='DR OFFICE VISITS - MEDICAID AMT 17'
      OBDPRV17='DR OFFICE VISITS - PRIVATE INS AMT 17'
      OBDVA17 ='DR OFFICE VISITS - VA/CHAMPVA AMT 17'
      OBDTRI17='DR OFFICE VISITS - TRICARE AMT 17'
      OBDOFD17='DR OFFICE VISITS - OTHER FEDERAL AMT 17'
      OBDSTL17='DR OFFICE VISITS - OTH ST/LOCAL AMT 17'
      OBDWCP17='DR OFFICE VISITS - WORKERS COMP AMT 17'
      OBDOPR17='DR OFFICE VISITS - OTH PRIVATE AMT 17'
      OBDOPU17='DR OFFICE VISITS - OTH PUBLIC AMT 17'
      OBDOSR17='DR OFF VSTS - OTH UNCLASS SRCE AMT 17'
      OBDPTR17='DR OFFICE VISITS - PRV & TRI AMT 17'
      OBDOTH17='DR OFFICE VISITS - OTH COMBINED AMT 17'
      OPTOTV17='# OUTPATIENT DEPT PROVIDER VISITS 17'
      OPTTCH17='OPD FACILITY + DR VISIT CHARGES - 17'
      OPTEXP17='TOTAL OUTPATIENT FAC + DR EXP 17'
      OPTSLF17='ALL OPD VSTS-SELF/FAMILY AMT-(FAC+DR) 17'
      OPTMCR17='ALL OPD VSTS-MEDICARE AMT-(FAC+DR) 17'
      OPTMCD17='ALL OPD VSTS-MEDICAID AMT-(FAC+DR) 17'
      OPTPRV17='ALL OPD VSTS-PRIV INS AMT-(FAC+DR) 17'
      OPTVA17 ='ALL OPD VSTS-VA/CHAMPVA AMT-(FAC+DR) 17'
      OPTTRI17='ALL OPD VSTS-TRICARE AMT-(FAC+DR) 17'
      OPTOFD17='ALL OPD VSTS-OTHER FED AMT-(FAC+DR) 17'
      OPTSTL17='ALL OPD VST-OTH ST/LOCAL AMT(FAC+DR) 17'
      OPTWCP17='ALL OPD VST-WORKRS COMP AMT-(FAC+DR) 17'
      OPTOPR17='ALL OPD VSTS-OTH PRIVATE AMT-(FAC+DR) 17'
      OPTOPU17='ALL OPD VSTS-OTH PUBLIC AMT-(FAC+DR) 17'
      OPTOSR17='ALL OPD VST-OTH UNCLS SRC AMT(FAC+DR) 17'
      OPTPTR17='ALL OPD VISITS-PRV & TRI AMT (FAC+DR) 17'
      OPTOTH17='ALL OPD VSTS-OTH COMBINED AMT(FAC+DR) 17'
      OPFTCH17='OPD PROVIDER VISIT CHARGES - FAC 17'
      OPFEXP17='TOTAL OUTPATIENT FACILITY EXP 17'
      OPFSLF17='ALL OPD VISITS-SELF/FAMILY AMT-FAC 17'
      OPFMCR17='ALL OPD VISITS-MEDICARE AMT-FAC 17'
      OPFMCD17='ALL OPD VISITS-MEDICAID AMT-FAC 17'
      OPFPRV17='ALL OPD VISITS-PRIV INS AMT-FAC 17'
      OPFVA17 ='ALL OPD VISITS-VA/CHAMPVA AMT-FAC 17'
      OPFTRI17='ALL OPD VISITS-TRICARE AMT-FAC 17'
      OPFOFD17='ALL OPD VISITS-OTHER FED AMT-FAC 17'
      OPFSTL17='ALL OPD VISITS-OTH ST/LOCAL AMT-FAC 17'
      OPFWCP17='ALL OPD VISITS-WORKERS COMP AMT-FAC 17'
      OPFOPR17='ALL OPD VISITS - OTH PRIVATE AMT-FAC 17'
      OPFOPU17='ALL OPD VISITS - OTH PUBLIC AMT-FAC 17'
      OPFOSR17='ALL OPD VSTS-OTH UNCLASS SRCE AMT-FAC 17'
      OPFPTR17='ALL OPD VISITS - PRV & TRI AMT-FAC 17'
      OPFOTH17='ALL OPD VISITS - OTH COMBINED AMT-FAC 17'
      OPDEXP17='TOTAL OUTPATIENT PROVIDER EXP 17'
      OPDTCH17='OPD PROVIDER VISIT CHARGES - DR 17'
      OPDSLF17='ALL OPD VISITS-SELF/FAMILY AMT-DR 17'
      OPDMCR17='ALL OPD VISITS-MEDICARE AMT-DR 17'
      OPDMCD17='ALL OPD VISITS-MEDICAID AMT-DR 17'
      OPDPRV17='ALL OPD VISITS-PRIV INS AMT-DR 17'
      OPDVA17 ='ALL OPD VISITS-VA/CHAMPVA AMT-DR 17'
      OPDTRI17='ALL OPD VISITS-TRICARE AMT-DR 17'
      OPDOFD17='ALL OPD VISITS-OTHER FED AMT-DR 17'
      OPDSTL17='ALL OPD VISITS-OTH ST/LOCAL AMT-DR 17'
      OPDWCP17='ALL OPD VISITS-WORKERS COMP AMT-DR 17'
      OPDOPR17='ALL OPD VISITS - OTH PRIVATE AMT-DR 17'
      OPDOPU17='ALL OPD VISITS-OTH PUBLIC AMT-DR 17'
      OPDOSR17='ALL OPD VSTS-OTH UNCLASS SRCE AMT-DR 17'
      OPDPTR17='ALL OPD VISITS-PRV & TRI AMT -DR 17'
      OPDOTH17='ALL OPD VISITS-OTH COMBINED AMT-DR 17'
      OPDRV17 ='# OUTPATIENT DEPT PHYSICIAN VISITS 17'
      OPVTCH17='OPD PHYSICIAN VISIT CHARGES - FAC 17'
      OPVEXP17='TOTAL OUTPATIENT PHYSICIAN - FAC EXP 17'
      OPVSLF17='OPD DR VISITS-SELF/FAMILY AMT-FAC 17'
      OPVMCR17='OPD DR VISITS-MEDICARE AMT-FAC 17'
      OPVMCD17='OPD DR VISITS-MEDICAID AMT-FAC 17'
      OPVPRV17='OPD DR VISITS-PRIV INS AMT-FAC 17'
      OPVVA17 ='OPD DR VISITS-VA/CHAMPVA AMT-FAC 17'
      OPVTRI17='OPD DR VISITS-TRICARE AMT-FAC 17'
      OPVOFD17='OPD DR VISITS-OTHER FED AMT-FAC 17'
      OPVSTL17='OPD DR VISITS-OTH ST/LOCAL AMT-FAC 17'
      OPVWCP17='OPD DR VISITS-WORKERS COMP AMT-FAC 17'
      OPVOPR17='OPD DR VISITS - OTH PRIVATE AMT-FAC 17'
      OPVOPU17='OPD DR VISITS-OTH PUBLIC AMT-FAC 17'
      OPVOSR17='OPD DR VSTS-OTH UNCLASS SRCE AMT-FAC 17'
      OPVPTR17='OPD DR VISITS - PRV & TRI AMT-FAC 17'
      OPVOTH17='OPD DR VISITS - OTH COMBINED AMT-FAC 17'
      OPSEXP17='TOTAL OUTPATIENT PHYSICIAN - DR EXP 17'
      OPSTCH17='OPD PHYSICIAN VISIT CHARGES - DR 17'
      OPSSLF17='OPD DR VISITS-SELF/FAMILY AMT-DR 17'
      OPSMCR17='OPD DR VISITS-MEDICARE AMT-DR 17'
      OPSMCD17='OPD DR VISITS-MEDICAID AMT-DR 17'
      OPSPRV17='OPD DR VISITS-PRIV INS AMT-DR 17'
      OPSVA17 ='OPD DR VISITS-VA/CHAMPVA AMT-DR 17'
      OPSTRI17='OPD DR VISITS-TRICARE AMT-DR 17'
      OPSOFD17='OPD DR VISITS-OTHER FED AMT-DR 17'
      OPSSTL17='OPD DR VISITS-OTH ST/LOCAL AMT-DR 17'
      OPSWCP17='OPD DR VISITS-WORKERS COMP AMT-DR 17'
      OPSOPR17='OPD DR VISITS - OTH PRIVATE AMT-DR 17'
      OPSOPU17='OPD DR VISITS-OTH PUBLIC AMT-DR 17'
      OPSOSR17='OPD DR VSTS-OTH UNCLASS SRCE AMT-DR 17'
      OPSPTR17='OPD DR VISITS - PRV & TRI AMT-DR 17'
      OPSOTH17='OPD DR VISITS -OTH COMBINED AMT-DR 17'
      ERTOT17 ='# EMERGENCY ROOM VISITS 17'
      ERTTCH17='ER FACILITY + DR VISIT CHARGES 17'
      ERTEXP17='TOTAL ER FACILITY + DR EXP 17'
      ERTSLF17='ER-SELF/FAMILY AMT-(FAC+DR) 17'
      ERTMCR17='ER-MEDICARE AMT-(FAC+DR) 17'
      ERTMCD17='ER-MEDICAID AMT-(FAC+DR) 17'
      ERTPRV17='ER-PRIV INS AMT-(FAC+DR) 17'
      ERTVA17 ='ER-VA/CHAMPVA AMT-(FAC+DR) 17'
      ERTTRI17='ER-TRICARE AMT-(FAC+DR) 17'
      ERTOFD17='ER-OTHER FED AMT-(FAC+DR) 17'
      ERTSTL17='ER-OTH ST/LOCAL AMT-(FAC+DR) 17'
      ERTWCP17='ER-WORKERS COMP AMT-(FAC+DR) 17'
      ERTOPR17='ER-OTH PRIVATE AMT-(FAC+DR) 17'
      ERTOPU17='ER-OTH PUBLIC AMT-(FAC+DR) 17'
      ERTOSR17='ER-OTH UNCLASS SRCE AMT-(FAC+DR) 17'
      ERTPTR17='ER-PRV & TRI AMT (FAC+DR) 17'
      ERTOTH17='ER -OTH COMBINED AMT (FAC+DR) 17'
      ERFTCH17='ER FACILITY VISIT CHARGES 17'
      ERFEXP17='TOTAL ER FACILITY EXP 17'
      ERFSLF17='ER-SELF/FAMILY AMT - FAC 17'
      ERFMCR17='ER-MEDICARE AMT - FAC 17'
      ERFMCD17='ER-MEDICAID AMT - FAC 17'
      ERFPRV17='ER-PRIVATE INS AMT - FAC 17'
      ERFVA17 ='ER-VA/CHAMPVA AMT - FAC 17'
      ERFTRI17='ER-TRICARE AMT - FAC 17'
      ERFOFD17='ER-OTHER FEDERAL AMT - FAC 17'
      ERFSTL17='ER-OTH ST/LOCAL AMT - FAC 17'
      ERFWCP17='ER-WORKERS COMP AMT - FAC 17'
      ERFOPR17='ER-OTHER PRIVATE AMT - FAC 17'
      ERFOPU17='ER-OTHER PUBLIC AMT - FAC 17'
      ERFOSR17='ER-OTH UNCLASS SRCE AMT - FAC 17'
      ERFPTR17='ER-PRV & TRI AMT - FAC 17'
      ERFOTH17='ER-OTH COMBINED AMT - FAC 17'
      ERDEXP17='TOTAL EMERGENCY ROOM DR EXP 17'
      ERDTCH17='ER DOCTOR VISIT CHARGES 17'
      ERDSLF17='ER-SELF/FAMILY AMT - DR 17'
      ERDMCR17='ER-MEDICARE AMT - DR 17'
      ERDMCD17='ER-MEDICAID AMT - DR 17'
      ERDPRV17='ER-PRIVATE INS AMT - DR 17'
      ERDVA17 ='ER-VA/CHAMPVA AMT - DR 17'
      ERDTRI17='ER-TRICARE AMT - DR 17'
      ERDOFD17='ER-OTHER FED AMT - DR 17'
      ERDSTL17='ER-OTH ST/LOCAL AMT - DR 17'
      ERDWCP17='ER-WORKERS COMP AMT - DR 17'
      ERDOPR17='ER - OTHER PRIVATE AMT - DR 17'
      ERDOPU17='ER - OTHER PUBLIC AMT - DR 17'
      ERDOSR17='ER-OTH UNCLASS SRCE AMT - DR 17'
      ERDPTR17='ER-PRV & TRI AMT - DR 17'
      ERDOTH17='ER-OTH COMBINED AMT - DR 17'
      IPDIS17 ='# HOSPITAL DISCHARGES, 2017'
      IPTEXP17='TOT HOSP IP FACILITY + DR EXP 17'
      IPTTCH17='IP HOSP STAY CHARGES (FAC+DR) 17'
      IPTSLF17='IP HOSP STAZ-SELF/FAMILY AMT-(FAC+DR) 17'
      IPTMCR17='IP HOSP STAZ-MEDICARE AMT-(FAC+DR) 17'
      IPTMCD17='IP HOSP STAZ-MEDICAID AMT-(FAC+DR) 17'
      IPTPRV17='IP HOSP STAZ-PRIV INS AMT-(FAC+DR) 17'
      IPTVA17 ='IP HOSP STAZ-VA/CHAMPVA AMT-(FAC+DR) 17'
      IPTTRI17='IP HOSP STAZ-TRICARE AMT-(FAC+DR) 17'
      IPTOFD17='IP HOSP STAZ-OTHER FED AMT-(FAC+DR) 17'
      IPTSTL17='IP HSP STAZ-OTH ST/LOCAL AMT-(FAC+DR) 17'
      IPTWCP17='IP HOSP STAZ-WRKRS COMP AMT-(FAC+DR) 17'
      IPTOPR17='IP HOSP STAZ-OTH PRIVATE AMT-(FAC+DR) 17'
      IPTOPU17='IP HOSP STAZ-OTH PUBLIC AMT-(FAC+DR) 17'
      IPTOSR17='IP HSP STAZ-OTH UNCLS SRC AMT(FAC+DR) 17'
      IPTPTR17='IP HOSP STAZ-PRV & TRI AMT-(FAC+DR) 17'
      IPTOTH17='IP HOSP STAZ-OTH COMBINED AMT(FAC+DR) 17'
      IPFEXP17='TOT HOSP IP FACILITY EXP-INC 0 NITES 17'
      IPFTCH17='IP HOSP STAY CHARGES - FAC 17'
      IPFSLF17='IP HOSP STAZ-SELF/FAMILY AMT-FAC 17'
      IPFMCR17='IP HOSP STAZ-MEDICARE AMT-FAC 17'
      IPFMCD17='IP HOSP STAZ-MEDICAID AMT-FAC 17'
      IPFPRV17='IP HOSP STAZ-PRIV INS AMT-FAC 17'
      IPFVA17 ='IP HOSP STAZ-VA/CHAMPVA AMT-FAC 17'
      IPFTRI17='IP HOSP STAZ-TRICARE AMT-FAC 17'
      IPFOFD17='IP HOSP STAZ-OTHER FED AMT-FAC 17'
      IPFSTL17='IP HOSP STAZ-OTH ST/LOCAL AMT-FAC 17'
      IPFWCP17='IP HOSP STAZ-WORKERS COMP AMT-FAC 17'
      IPFOPR17='IP HOSP STAZ - OTH PRIVATE AMT-FAC 17'
      IPFOPU17='IP HOSP STAZ - OTH PUBLIC AMT-FAC 17'
      IPFOSR17='IP HOSP STAZ-OT UNCLASS SRCE AMT-FAC 17'
      IPFPTR17='IP HOSP STAZ-PRV & TRI AMT-FAC 17'
      IPFOTH17='IP HOSP STAZ-OTH COMBINED AMT-FAC 17'
      IPDEXP17='TOTL HOSP STAZ DR EXP 17'
      IPDTCH17='IP HOSP STAY CHARGES - DR 17'
      IPDSLF17='IP HOSP STAZ-SELF/FAMILY AMT-DR 17'
      IPDMCR17='IP HOSP STAZ-MEDICARE AMT- DR 17'
      IPDMCD17='IP HOSP STAZ-MEDICAID AMT-DR 17'
      IPDPRV17='IP HOSP STAZ-PRIV INS AMT-DR 17'
      IPDVA17 ='IP HOSP STAZ-VA/CHAMPVA AMT-DR 17'
      IPDTRI17='IP HOSP STAZ-TRICARE AMT-DR 17'
      IPDOFD17='IP HOSP STAZ-OTHER FED AMT-DR 17'
      IPDSTL17='IP HOSP STAZ-OTH ST/LOCAL AMT-DR 17'
      IPDWCP17='IP HOSP STAZ-WORKERS COMP AMT-DR 17'
      IPDOPR17='IP HOSP STAZ - OTH PRIVATE AMT-DR 17'
      IPDOPU17='IP HOSP STAZ - OTH PUBLIC AMT-DR 17'
      IPDOSR17='IP HOSP STAZ-OT UNCLASS SORCE AMT-DR 17'
      IPDPTR17='IP HOSP STAZ-PRV & TRI AMT-DR 17'
      IPDOTH17='IP HOSP STAZ-OTH COMBINED AMT-DR 17'
      IPNGTD17='# NIGHTS IN HOSP FOR DISCHARGES, 2017'
      DVTOT17 ='# DENTAL CARE VISITS 17'
      DVTTCH17='TOTAL DENTAL CARE VISIT CHARGES 17'
      DVTEXP17='TOTAL DENTAL CARE EXP 17'
      DVTSLF17='ALL DENTAL CARE - SELF/FAMILY AMT 17'
      DVTMCR17='ALL DENTAL CARE - MEDICARE AMT 17'
      DVTMCD17='ALL DENTAL CARE - MEDICAID AMT 17'
      DVTPRV17='ALL DENTAL CARE - PRIVATE INS AMT 17'
      DVTVA17 ='ALL DENTAL CARE - VA/CHAMPVA AMT 17'
      DVTTRI17='ALL DENTAL CARE - TRICARE AMT 17'
      DVTOFD17='ALL DENTAL CARE - OTHER FEDRL AMT 17'
      DVTSTL17='ALL DENTAL CARE - OTH ST/LOCAL AMT 17'
      DVTWCP17='ALL DENTAL CARE - WORKERS COMP AMT 17'
      DVTOPR17='ALL DENTAL CARE - OTH PRIVATE AMT 17'
      DVTOPU17='ALL DENTAL CARE - OTH PUBLIC AMT 17'
      DVTOSR17='ALL DENT CARE-OT UNCLASS SRCE AMT 17'
      DVTPTR17='ALL DENTAL CARE - PRV & TRI AMT 17'
      DVTOTH17='ALL DENTAL CARE - OTH COMBINED AMT 17'
      HHTOTD17='# HOME HEALTH PROVIDER DAYS, 2017'
      HHAGD17 ='# AGENCY HOME HEALTH PROVIDER DAYS 17'
      HHATCH17='HOME HEALTH AGENCY VISIT CHARGES 17'
      HHAEXP17='TOTAL HOME HEALTH AGENCY EXP 17'
      HHASLF17='HOME HLTH AGENCY - SELF/FAMILY AMT 17'
      HHAMCR17='HOME HLTH AGENCY - MEDICARE AMT 17'
      HHAMCD17='HOME HLTH AGENCY - MEDICAID AMT 17'
      HHAPRV17='HOME HLTH AGENCY - PRIVATE INS AMT 17'
      HHAVA17 ='HOME HLTH AGENCY-VA/CHAMPVA AMT 17'
      HHATRI17='HOME HLTH AGENCY-TRICARE AMT 17'
      HHAOFD17='HOME HLTH AGENCY - OTHER FED AMT 17'
      HHASTL17='HOME HLTH AGENCY-OTHR ST/LOCAL AMT 17'
      HHAWCP17='HOME HLTH AGENCY - WORKERS COMP AMT 17'
      HHAOPR17='HOME HLTH AGENCY - OTH PRIVATE AMT 17'
      HHAOPU17='HOME HLTH AGENCY - OTH PUBLIC AMT 17'
      HHAOSR17='H HLTH AGENCY - OT UNCLASS SRCE AMT 17'
      HHAPTR17='HOME HLTH AGENCY - PRV & TRI AMT 17'
      HHAOTH17='HOME HLTH AGENCY - OTH COMBINED AMT 17'
      HHINDD17='# NON-AGENCY HOME HEALTH PROVIDR DAYS 17'
      HHNTCH17='HOME HEALTH NON-AGENCY VISIT CHARGES 17'
      HHNEXP17='TOTAL HOME HEALTH NON-AGNCY EXP 17'
      HHNSLF17='HOME HLTH NON-AGNCY - SELF/FAM AMT 17'
      HHNMCD17='HOME HLTH NON-AGNCY - MEDICAID AMT 17'
      HHNMCR17='HOME HLTH NON-AGNCY - MEDICARE AMT 17'
      HHNPRV17='HOME HLTH NON-AGNCY - PRIV INS AMT 17'
      HHNVA17 ='HOME HLTH NON-AGNCY-VA/CHAMPVA AMT 17'
      HHNTRI17='HOME HLTH NON-AGNCY-TRICARE AMT 17'
      HHNOFD17='HOME HLTH NON-AGNCY-OTHR FED AMT 17'
      HHNSTL17='HOME HLTH NON-AGNCY-OTHR ST/LOCL AMT 17'
      HHNWCP17='HOME HLTH NON-AGNCY-WORKERS COMP AMT 17'
      HHNOPR17='HOME HLTH NON-AGNCY-OTH PRIVATE AMT 17'
      HHNOPU17='HOME HLTH NON-AGNCY-OTH PUBLIC AMT 17'
      HHNOSR17='H HLTH NON-AGNCY-OT UNCLASS SRCE AMT 17'
      HHNPTR17='HOME HLTH NON-AGNCY - PRV & TRI AMT 17'
      HHNOTH17='HOME HLTH NON-AGNCY-OTH COMBINED AMT 17'
      HHINFD17='# INFORMAL HOME HEALTH PROVIDER DAYS 17'
      VISEXP17='TOTAL GLASSES/CONTACT LENS EXP 17'
      VISTCH17='GLASSES/CONTACT LENSES CHARGES 17'
      VISSLF17='GLASSES/CNTCT LENSES -SELF/FAM AMT 17'
      VISMCR17='GLASSES/CNTCT LENSES-MEDICARE AMT 17'
      VISMCD17='GLASSES/CNTCT LENSES-MEDICAID AMT 17'
      VISPRV17='GLASSES/CNTCT LENSES-PRIV INS AMT 17'
      VISVA17 ='GLASSES/CNTCT LENSES-VA/CHAMPVA AMT 17'
      VISTRI17='GLASSES/LENSES-TRICARE AMT 17'
      VISOFD17='GLASSES/CNTCT LENSES-OTHR FED AMT 17'
      VISSTL17='GLASSES/CNTCT LENSES-OTH ST/LOCL AMT 17'
      VISWCP17='GLASSES/CNTCT LENSES-WORKERS COMP AMT 17'
      VISOPR17='GLASSES/CNTCT LENSES-OTH PRIVATE AMT 17'
      VISOPU17='GLASSES/CNTCT LENSES-OTH PUBLIC AMT 17'
      VISOSR17='GLASES/CNTCT LENSE-OT UNCLAS SRCE AMT 17'
      VISPTR17='GLASSES/CNTCT LENSES-PRV & TRI AMT 17'
      VISOTH17='GLASSES/CNTCT LENSES-OTH COMBINED AMT 17'
      OTHTCH17='OTHER EQUP/SUPPLIES CHARGES 17'
      OTHEXP17='TOT OTHER EQUIP/SPLY (EXCL DIAB) EXP 17'
      OTHSLF17='OTHER EQUP/SUPPLIES-SELF/FAM AMT 17'
      OTHMCR17='OTHER EQUP/SUPPLIES-MEDICARE AMT 17'
      OTHMCD17='OTHER EQUP/SUPPLIES-MEDICAID AMT 17'
      OTHPRV17='OTHER EQUP/SUPPLIES-PRIV INS AMT 17'
      OTHVA17 ='OTHER EQUP/SUPPLY-VA/CHAMPVA AMT 17'
      OTHTRI17='OTHER EQUP/SUPPLY-TRICARE AMT 17'
      OTHOFD17='OTHER EQUP/SUPPLIES-OTHR FEDRL AMT 17'
      OTHSTL17='OTHER EQUP/SUPPLY-OTHR ST/LOCAL AMT 17'
      OTHWCP17='OTHER EQUP/SUPPLY - WORKERS COMP AMT 17'
      OTHOPR17='OTHER EQUP/SUPPLY-OTH PRIVATE AMT 17'
      OTHOPU17='OTHER EQUP/SUPPLY - OTH PUBLIC AMT 17'
      OTHOSR17='OTH EQUP/SUPLY - OT UNCLASS SRCE AMT 17'
      OTHPTR17='OTHER EQUP/SUPPLY - PRV & TRI AMT 17'
      OTHOTH17='OTHER EQUP/SUPPLY - OTH COMBINED AMT 17'
      RXTOT17 ='# PRESC MEDS INCL REFILLS 17'
      RXEXP17 ='TOTAL RX-EXP 17'
      RXSLF17 ='TOTAL RX-SELF/FAMILY AMT 17'
      RXMCR17 ='TOTAL RX-MEDICARE AMT 17'
      RXMCD17 ='TOTAL RX-MEDICAID AMT 17'
      RXPRV17 ='TOTAL RX-PRIVATE INS AMT 17'
      RXVA17  ='TOTAL RX-VA/CHAMPVA AMT 17'
      RXTRI17 ='TOTAL RX-TRICARE AMT 17'
      RXOFD17 ='TOTAL RX-OTHER FED AMT 17'
      RXSTL17 ='TOTAL RX-OTHER ST/LOCAL AMT 17'
      RXWCP17 ='TOTAL RX-WORKERS COMP AMT 17'
      RXOPR17 ='TOTAL RX-OTH PRIVATE AMT 17'
      RXOPU17 ='TOTAL RX-OTH PUBLIC AMT 17'
      RXOSR17 ='TOT RX-OTH UNCLASS SRCE AMT 17'
      RXPTR17 ='TOTAL RX-PRV & TRI AMT 17'
      RXOTH17 ='TOTAL RX-OTH COMBINED AMT 17'
      PERWT17F='FINAL PERSON WEIGHT, 2017'
      FAMWT17F='FINAL FAMILY WEIGHT, 2017'
      FAMWT17C='POV ADJ FAMILY WGT-CPS FAM ON 12/31/17'
      SAQWT17F='FINAL SAQ PERSON WEIGHT, 2017'
      DIABW17F='FINAL DIABETES CARE SUPPLEMENT WEIGHT'
      CSAQW17F='FINAL CANCER SAQ PERSON WEIGHT - 2017'
      VARSTR  ='VARIANCE ESTIMATION STRATUM - 2017'
      VARPSU  ='VARIANCE ESTIMATION PSU - 2017'
;
*Runs the code;
RUN;

*Create subset of data called DIAB_INSEC from PUBLIB.H201 dataset;
DATA DIAB_INSEC;
	SET puflib.h201;
*Subset of data includes adults 18 and older who have a diabetes diagnosis 
of Yes or No;
	IF DOBYY LE 1999 AND (DIABDX EQ 1 OR DIABDX EQ 2);
*Runs code;
RUN;

*Creats MEANS summary statistics;
PROC MEANS DATA=DIAB_INSEC;
RUN;

PROC TTEST DATA=diab_insec SIDES=2 ALPHA=0.05 H0=0;
	TITLE "Two Sample T-Test";
	CLASS DIABDX;
	VAR POVLEV17;
RUN;