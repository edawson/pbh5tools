
  $ . $TESTDIR/portability.sh

Set up some vars ...

  $ INH5=`python -c "from pbcore import data; print data.getBasH5s()[0]"`
  $ MOVIENAME=$(basename `python -c "from pbcore import data; print data.getBasH5s()[0][:-7]"`)
  $ CMD="bash5tools.py $INH5"

  $ $CMD --readType=ccs
  $ head ${MOVIENAME}.fasta
  >m110818_075520_42141_c100129202555500000315043109121112_s1_p0/8/ccs
  ACGGCAGGATGCCCGTTCTGCGAGGCGGTGGCCAGTGTAATGAGGTGCTTTATGACTCTG
  CCGCCGTCATAAAATGGTATGCCGAAAAGGGATGCTGAAATTGAGAACGAAAGCCTGCGC
  CGGGAGGTTGAGAACTGCGGCAGGCCGACGGCAGATCTCCAGCCAGAGAACTATTGAGTA
  CGAGCACCCATCGACCTACGCGTGCCGCAGGCCGACGCACAGGAACTGACAGAATGCCAG
  AGACTCCCGCTGAAGGTGGTGGAAACCGCCATCTGTACTGTTTTCGTGGCTGTCGCGGAT
  CGCAGGGTGAAATTGCCAGTATTCTCGACGGGGGGCCCCCTGTCGGGGCAGCGGCGTTTT
  >m110818_075520_42141_c100129202555500000315043109121112_s1_p0/9/ccs
  ATGTTGCCATCCGTGGCAATCAATGCTGCTAACGTGTGACCGCATTCAAAAATGTTGTCT
  GCGATTGACTCTTCTTTGTGGCATTGCACCACCAGAAGCGTCATACACGGCTTAAACAAG

  $ $CMD --readType=unrolled
  $ head ${MOVIENAME}.fasta
  >m110818_075520_42141_c100129202555500000315043109121112_s1_p0/7/0_1578
  TGAAGCGGAAGTGAATCAACAGGTTCTGGCGTTAGATTTCTCTACGTTGCCCCCATGCAG
  TTGTTTAACGTAACCTCCGAGCCACACCGGCAACTCAACAACAAAGGGTGAGTGGACATT
  TCCCCAGACTTTCTTCCGGCGGGGGTTTTGCCCAAAATCAACTTTGTAACCCGAAAGCGG
  TGATACGCCCGAGCGTAATTGGCCACGCATATCCCCTGTTCGAACGCTCTCACTCGCTCC
  GGTACGCGGAGAAATGGTCCGGTGCATGCTCCCACCTCGCCGGGCTCGTTCAGGAACAAA
  GCTTTAACACCAAGCCAACAAGAGGAGGGAAAAGAGAGAGGATTAAAACCCTTGGGCCTG
  AAACAGAAACCCCGAGGCCAGAAGTGGGAGCATGACAACCGGCCCATTCTGCAGCGTACG
  TGATCGCGGAAGCTGCGAAACAGGGGGATTGCGGACACAAATTACGGGCTCGGACGTATC
  ACGCTTCAGATCCAACGACTAGCCAAAACCCGCCCGGAAAAGAAGTGCCCCTATGAAAAT

  $ $CMD --readType=subreads
  $ head ${MOVIENAME}.fasta
  >m110818_075520_42141_c100129202555500000315043109121112_s1_p0/7/0_299
  TGAAGCGGAAGTGAATCAACAGGTTCTGGCGTTAGATTTCTCTACGTTGCCCCCATGCAG
  TTGTTTAACGTAACCTCCGAGCCACACCGGCAACTCAACAACAAAGGGTGAGTGGACATT
  TCCCCAGACTTTCTTCCGGCGGGGGTTTTGCCCAAAATCAACTTTGTAACCCGAAAGCGG
  TGATACGCCCGAGCGTAATTGGCCACGCATATCCCCTGTTCGAACGCTCTCACTCGCTCC
  GGTACGCGGAGAAATGGTCCGGTGCATGCTCCCACCTCGCCGGGCTCGTTCAGGAACAA
  >m110818_075520_42141_c100129202555500000315043109121112_s1_p0/7/343_991
  TAAAACCCTTGGGCCTGAAACAGAAACCCCGAGGCCAGAAGTGGGAGCATGACAACCGGC
  CCATTCTGCAGCGTACGTGATCGCGGAAGCTGCGAAACAGGGGGATTGCGGACACAAATT
  ACGGGCTCGGACGTATCACGCTTCAGATCCAACGACTAGCCAAAACCCGCCCGGAAAAGA

  $ $CMD --readType=ccs --outType=fastq
  $ fold -80 ${MOVIENAME}.fastq
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/8/ccs
  ACGGCAGGATGCCCGTTCTGCGAGGCGGTGGCCAGTGTAATGAGGTGCTTTATGACTCTGCCGCCGTCATAAAATGGTAT
  GCCGAAAAGGGATGCTGAAATTGAGAACGAAAGCCTGCGCCGGGAGGTTGAGAACTGCGGCAGGCCGACGGCAGATCTCC
  AGCCAGAGAACTATTGAGTACGAGCACCCATCGACCTACGCGTGCCGCAGGCCGACGCACAGGAACTGACAGAATGCCAG
  AGACTCCCGCTGAAGGTGGTGGAAACCGCCATCTGTACTGTTTTCGTGGCTGTCGCGGATCGCAGGGTGAAATTGCCAGT
  ATTCTCGACGGGGGGCCCCCTGTCGGGGCAGCGGCGTTTT
  +
  #$'0'&../1.*+*+*))02)'1&&,//2..%#'%#&&11692,-/..&&&26:1,+292*)&%)(.02:,,,,2//,,&
  )676&''$%%%%.343(&,+-1*(+$$$9&&&&))-(&-''-.-$$,&88*),.<:2/.00522,$!"!'((3'#%)7.-
  /:$$$.%114*-$#,/0'&'20)(9*&/10..0.($,,;5$$2/-.3)((%(101))230))/,/(/,%%1/***0,--3
  +*(%%$%!&089&)(')+,-78,,,+++$'2/.0&&123&"$$#(((&&002*&'%#''3,'##',*''/66475481&0
  .---9@66?,,,*+'$$$$$%?55++%%,,.&&//&"%)*
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/9/ccs
  ATGTTGCCATCCGTGGCAATCAATGCTGCTAACGTGTGACCGCATTCAAAAATGTTGTCTGCGATTGACTCTTCTTTGTG
  GCATTGCACCACCAGAAGCGTCATACACGGCTTAAACAAGTGCGTGACCAGGTGGGTTGGGGTAAGGTTTTGGGATTAGC
  ATCGTCACAGCGCGATATGCTGCGCTTGCCTGGCATCCTTGAATAGCCGACGCCCTTTGCATCTTCCGCACTCTTTCTCG
  ACAACTCTCCCCACAGCTCTGGTTTTGGCAATATCAACCGCAACGGCCTGTACCATGGCAATCTCTGCAATCTTGCCCCC
  GGCGTCGCGCACTACGGCCAATAATCCGCATAAGCGGAATGTGCGAGCACTTGAGTACCTTTGCCTTAGTATTTCCTTCA
  AGCTTTGCCACACCCACGGTAATTTCCCCGATACCTTGTGTGCAAATTGCATCAGATAGTTGATAGCCTTTTGTTTGTCG
  TCTGGCTGGAGTTCGTGCTTACCGCAGAATGCAGCCATACCGAATCCGGCTTGTGATGCGCCATCCCCATAGCAGCCATC
  ACATCATACCGGAAAGAGAGGTCAGAGCCGTGGCCCCGTGGTGAGTCGCTCATCATCGGGCTTTTTGCGATGAAATTTAG
  CTA
  +
  $#$,,.//.267,+/02++,4''0/))333+,,.*+-.,+2+),()6&&&&&/3++).22+-++124+*4,)+++,+')0
  1+,+14(!%&,,-23''/,,,)),()-)&&((1&'',&&1.%*),/''.1*+3+*+**'(((+),&'$'''(((*&&4+4
  4,,444344+*())234,,,,3((2++,&&-01,)5,,')(+134+*/3410&'&&'',34,,''&)),/./3()))244
  4202,,3+#$$$$11123,%'')**)+,,124,,++1''.,&'5++022,,31242-..''+)+133,%&,++,,*****
  /144332+("$+)14++'&++)(++*++*+,&(3)%(10++,+343/24400+&%/3''-../$$$,222401002124&
  &(4++*,+,,,+###$,),-'''''****22+51212+,+())*21,,)),+,444434+++()*000(((((..+)*2.
  $$2((&(&&11(',),,(01,&'&%0,+220)()$%&34011%%")*%&++,,%%-%%-*%%&-%%%%%-+%%,)&)(++
  ++--%"!&%+%$"%%%%"**,--,%"$)*),%%$***+-*++,'$%++,%#%-,---%%%+%%%%%""$%%-+,+%%%%-
  %$$
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/1000/ccs
  CACGAAGGTCGATGCGGCGACCAAATCGTTGTAAATCCCCGTAAAGGCAGATGCGCGCCATGCCGGTGACGCCAGAGGGA
  GTGTGTGCGTCGCTGCCATTTGTCGGTGTACCTCTCTCGTTTGCTCAGTTGTTCAGGAATATGTGCAGCAGCTCGCCGTC
  GCCGCAGTAAATTGCGCGTGATTTCGGCACTGATGAACCAAAAACAGCACAGCCAGCACATCCGCCCGGCTGTGCCGCTG
  ACAACGGCACCTGATACAGCCCCGTCGCCTCCAGATTATCCTGATAATCTGGAGGCGACGGGGCTGTATCAGGTGCCGTT
  GTCAGCGGCACAGCCGGGCGATGTTGGCTGCTGTGCTGTTTTTTGGTTCATCAGTGGAATCACGCCGCAATTTACTGCGG
  CGACGGCGAGCTGCTGCACCATATTCCTGAACAACTGAGCAAACGAGAGGAGGTAACGACAAATGGCAGCGACGCACCAC
  TCCCTCTGCAGCACCCATGGGAATTCATTTAACATTTAAGACGATTTGGTCGCGCATCGACTT
  +
  '',.-..45./0662.0128&&+,+,''5670087('/000%%11,---/978))4''..9'$''18;;:*)5///,//8
  1038225520*+873..))11222002600///82/222+++022((2/11'''-/1(((.-%%((;--::22%%77:;6
  4))+,.3$$11%%28'&007;&&&)'),27621/-)*..&'(((*-,+/''.+,8:9710(&)/%%%$'.02281110%#
  '-,,3,-2'$'/0;('5;7////5222()1,-,/&&)*'&/$&&,%&#'/)*+12111'&...1/0.)(')**,''0200
  14783,%&4..4+*3,,,.1-.-$%$#+092166**/,%&&&&&/1020029*15("''&+210-.$%11)('0,.-&))
  ).-2/0/.+.&../6/.4**633,,&'3+&*$%%#(/.-3)))+.+/+$$1)),(%!#/%'''&''.''.')/%*&&#!,
  '#&%'&.!%%&$&"#"&%(&#'$+&#$***((.*''',+!%',-&((++1,)!!!,00$/($&
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/1006/ccs
  CCATACCTCCCCTTATAGGAACACGCTTTGCCAAGGCTTTTCACCGCTGTCGCCAGCGCTCGGAATTAGAAAGCCCACCG
  ACCGGTTATCCAGCCTTCTCCTTGCCACGCGCTTTTGAAGGACACGGAACCAGCCGCCCCAGCTTGTCGGATGCGAAACA
  CGATGATATTCACCACCCCGCGCCTGGCGTCCTCAGCGCGTAGGCCTTCGATATCGTCGGTGGGTCATACGTGGACTGTC
  CGCTTGCTCACTCCGTGCCGCCGGACGCGTGATGTTATCTCCTCACTGCGGCCCATATCCACCTCAACCGGATCGAAGCT
  TTCACCGGGTCCGGTGTATTTGCCCTTAAGCACGGCAGAA
  +
  *()+)%!(++,+&$'-+&&!#($"$-+,,-+,$!'*#)++*%#$%!!$$)$!"$$%%"$%%$%$%$%%%$$$!$%$$$%%
  %$$"##%%%$%%%$$##"#$%$%%##$%%"%%$%%$%$$###"%%#$#$##$%#$%$#"$%%!"%"%$#$%%%%%$%$%%
  %$%%%%#%$%%%"$#"$"$$!$$$#$%%##""%%%!%%%%%%$%""$$%%%%%%&)--)*)(+)-%%,*,&!&&+-#"%)
  $$"$*%%-%$--+,--*(*+*+%%#$%+,%%%%%$)'#$-+,-+,--,-'$''()&--'&()++++,*+%$!$%%+)$$%
  "")-('!!!"$"!"!%--'"'($%"$##),--%%%)%!!$
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/1007/ccs
  AAAGTAATAATCATGGCCCGGTTGATATTGATACTGGCGGTATCCAGTACAGCGCCGTACCAAGATAACGCGTGCTGGTT
  TCAACCTGTCTGATATCCGCAATCTGCTTTTCCGAGAACCAGAACTCAAACTGTACCGTCGGGTCATAAACGGCAAGATG
  CGCGGTGGCGGGTTATCTGAAAATAGCCGGCGTCAGCTCAATCCCTCGACGGTGGCTGCCGGTGCCGGCAATCCGGAACG
  ATACCGACGCCGGATCCGCCCTGCTGCCCACGCATTTACCGCCCCGGACCTGTCAGCTGTAGTTCCCCAGCGCCAGTTGC
  GTGGAAGCGGTATGTGGTTTTCCCGTCGTCCGGCCGTGCTGACCAGCCGCTCAACTGGCCGTCGTCCGCTGTTACGGTCA
  GACGGAGCAGGAAAACTCACGCCCTTCACCACCTTCGGTGTGTCCCATTCCGCGCCAGCACCTGATATTCCCCGCTGTCT
  GCAGATGACTTCCTGCGGTCAGGTGCTGCCCGCTGGCGGCGTGACACCATTCACCGGTGGCCACCTCTGTTCGCCGTCAA
  +
  ///13-.900922;12())23'''58522/-<;9911)''%22+++65228;:+')-32//..12977/-'892*+(('/
  /.-/6899;:8(%'99/075476564-()))(2,+.+++21,))*,'&+*+,,,402443./.0444$$$()+,11+(,3
  +'(&(1$$,%%%.2220+)&'''/21,,&(1+,003-.4214'''+2++2-..$$44401-./4'&((&''$'',./2-(
  )3,--.1($(0()03''.())),)*1$$$$43,*/002002''&#*,1011+++,,#"$$(212++++,,,3./0/)**,
  '))).0'*(*/4441+,&''''''1++00/.$$$2,))01,,+,)*%%0(33$$)3''0012444((5440%%&,+11((
  ,+0+,,2,,./''&&32++,+'(()123(),1222+&(.))44'''*%%))532/123%%++++,)+(()***+,4,,22
  4,,2'/-(''.++242++,//-,/2,,,'#))+,*+-''103,)+,)+,**+--1((3'&&&)&&5444++),%%&3,)+
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/2001/ccs
  GAACTTTTATGAAAACCACGTTGAGCCGACTATTCGTGATATTCCGTCGTGCTGGCCGCTGGCCCCCGTGGTATGGCAAA
  AAGCACCGTGGATACACGCCACCATGAAGCGTTCACTAATGGCGTGGCTTCTGGTGCCTGGGCGGTAAAGCGGCAAAAAA
  CTACCGTGAAAAAGTCGGTGGATGTGGCGGGTTATGATGAACTTGGCTGCTTTGATTGATGATATTGAACAGAGGCTCTC
  CGAGTCCTGGGTGAAACAAGCGTATTGAAGCTCGGTCCTGGCCCAAAGTCCATCCGTGGCTTTCCACCGCCAAAAGTGAG
  AGGCACCTAGTCAGACTTGAACGCGG
  +
  -)++%%%%"%%%,,+%%%-%%)%""$*)*,-$"%%%$%%,,++**+"++##%%"%#)-++*+%%%%"#$)*)*-%%""%%
  %$%--&%#!%*+)$$--$!##*+),,++'(+%"%-%++,-(()#$&&*+++$!&+()*-)***()*+,,(%%,-$%%%%%
  +%%)+,-,$#$$$)%#"%%*+-((-+,-*+++,,,----+,,+,+,+*,,%%%%-$$,,++-*-++$!$+-$"$*+++-+
  '%!%%$)!%$$$%$%%%$%%%$$%$%#$%%%%%###$%%$%#%$$%%%"$$%%$%%%#$$#$$#$$$%%$$##"$#%$"#
  $$%$$$%%$$%%%%$!#%%$$!%%$%
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/2003/ccs
  CAGTGACGACTGCGTTTGGTCTGTCCAGACTAAAGTTGAATGATTAGCAGTATGGTGATCAGTCAACCACCAGGGAATAT
  CCTTCATATTTTATCGGCTTCACCAACGCTGCCTCATGCTCTGAAGCTCAGAACACTTATGTTCTATACATGCATTAAAC
  AAGGGTAACTCATAGAATGGTGCTTTAACATTTTTTACACGATCAGATCCGGAGGTCCATCAGCCAGATGTTCTTATTCT
  TTGTCTCCATGCGTTGCTCTTCATTAGCGGTTTATTACATTTTCGTATGGATTTGAGCACGTGGGCCTTACATACATCGT
  CGTTGTATTCCCTCCAGAATGGCCAGGCAGGCGCACTTTTTACGACCAT
  +
  -7;44''%-?;772$!!*,&217>,'13*''&,,2--.68759&&'/4*+))3++43@80062-(*44<)),'((,-.+/
  76&&'**<%%%%8))8)45>78-.3446862)*/9$"21&#%>--(0*%&</%%2**2+*.%&&258;?.4.-+00$##0
  *#(*)+(*71;/71)--$--2-+*$+.-,'$$$$$$2%$.2(+,200#+))-8(()!&78:23%$.6.&*,,'$(-11.)
  --)%##%&*01.)"#%$39)&*/'&0*2./%%#&&&'!!'/0020.02'%2010-#$0'*&$%++,.12,.6+%3/;.%.
  4&%-/1/(($''&%&'857:**-,)&&*(53--.//%&%$%,4).-.++
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/2007/ccs
  TGACGCTGGCATTCGCATCAAAGGAGAGTGAGATCGGTTTTGTAAAAGATAACGCTTGTGAAAATGCTGAATTTCGCGTC
  GTCTTCACAGCGATGCCAGAGTCTGTAGTGTCAGATGATGACCGTACTCAAACATCGGTTGAGTATTATCTTACTGTTTC
  TTTACATAAACATTGCTGATACCGTTTAGCTGAAACGACATACATTGCAAGGAGTTTATAAATGAGTATCAATGGTTA
  +
  7LEA.*B555;...=>9:D9:900<9=A776C5;B88////::&&&&5=?)))00=CFAF8999>71143<)))+DIH?4
  <<>33<@KE@77:;<:<8??-98<44:;3222K=<E*,G@;5686;>6;1119KEC))&+2.5:/66*=4445<E;8::;
  444:IK>...4I5566BAC?6''96667CFAB555629<F@HJGAB55>?66*:3444HCCCLIIIC?=F<<C9%11=
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/2008/ccs
  CGGCAAATGTCATCGACGTTTTATCCGGAAACTGCTGTCTGGCTTTTTGATTCAGAATAGCCTGACGGCAGCTGGCGAAG
  GGCGTTTCCTGCTGAGGGTCATTGAACAGTCCCATGTCGGCAGCATAGCACACAGAATATGAAGCCCGCTGCCAGAAAAA
  TGCATTCCGTGGTTGTCATACCGGTTCTCTCATCTGCTTCTGGCTTCGCCACCATCATTCCAGCTGTGAAAGGGATGCGG
  CAACGATGAAAATCCTTCGGTCTGTTTCTACTGGTATTGCAAAACCTGATCCAATTTGAGCAAGGCTAT
  +
  969C(((G,,B8+KA7:8.....=6666'''@D;00@D7722@)))))+<---=>))0-6..3@?+**0/$03%%-&)((
  (()*&*)+:-1-0<=+*&-=H33F?>/'(3++*0C==?564,-10E),22-1'&1*+4;<<&&+%%%(103010=,,,,,
  2:4+66332<4412:<))A?5453$$$'210/88.-/44G;32,'))6..A22).51..'(899%$,2455022%>@=00
  ;.883*/>%%%"%#)**=))332-(+*/,><(%&&?33'%+%,,:<9715((11%&&6.:2$#23'30>
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/3006/ccs
  AGCGTGTTATCCCGGTGCTTTTTGCCATACCACGGGCCAGCGCCAGCAGCGACGGAATATCACGAATTAGTCGGCTCACG
  TGGGGTTTTCATAAGTTCTTCGGGCATCCCATTCCGTCGGCAACCAGATAAGGGGTGTTGCGGCTGCTTATGCTTATAAA
  GTAGGCATACACCCAGCAGCATTTTGGAATAACCGACCACCGGGCAGACTTCACCACATTCAACCTCACGGATGTAGTCG
  CTGGCCCATTCCATTCATTGAATGGCCCGCTGAAAGGGCAGTGTTTTCCCAGCCGCCCTTCCTGGTATGCGGATTCTTTC
  GGGAGATAGTAATAGCATCCGCCTTCAACCGGCGGTCTGGCTCCGGCCCTGAACAGTGAGCGAGCCCGGCGCGGACAAAA
  TGCCGCAGCCTGTTAACCCGACGTCTCGGAATTATCTCACCTCCAGCCACCCCCCCGGTATCAGTTCATCCAGGCGCGGG
  CTGCGTGTCAGGCTTGATGATATCCCGTTCAGGAAACAACATGTCGGTTTTCCAGTTCCGGAACGCCCGCTGCACCGACA
  GGGAGCCCGTCGAGAACGATTCACCTGGATCCGGACACCGAAAAGTACAGAATGCGGTTCCACCACTTCAGCGGATCCTG
  GCATTCTTCAG
  +
  3/1''5**43(((#&793$$$$$*&('4)*+04%&%&62,&+,-,21./22-7,,+33-0268,''((;75-////0+))
  ("$##%''')77-,*,45014''&-3,%#'+&&+,)++$%&//+,,33,),(***/++2.*#$20,+/1,42#"#.3&&&
  '*%-.*,2$#*(++2/*),+*++++.0'''&(012'$$.&%&&&(+0*4*+33''&'))+(%'-,+,2,--.2,)''*.)
  '5%%(((,$$)&+-+"((')$&2..&'&.*+0***#$#'&*,($''&$'&(-**,&''.0*+211+*+/((11++,+++)
  (**.))2/1.//$"-4+-.,(')#%$+0&$()))(('%()%'--))&&'-1'&1&(((('24(()))-.)%'(0.1))))
  +**+))($')+(""%%'$%.0-#')/+$$'%*),0*((*%&-(()3%##"$$$$$$!%.('022((+*++++%&**/"#"
  $'(%!$$(((!%+$"#$)-+$+#"%$%$%%+++$%##$,,++,+-+,+,,,+,,-%%%+%%$*)%!##'##+++*,,,--
  %%%%&%**-,---+$#!!"!!$*''###,,)(%%+*,%%,&&&%'$%%%-**)$%+,%##!"#((*$$%-,+)(%#$!%)
  %-((,'),-)%
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/3008/ccs
  ATTTGCATATACCCATTGCTCACGAAAAAAATGTCCTTGTCGATATAGGATGAATCGCTTGGTGTACCTCATCTACTGCG
  AAAACTTGACCTTTCTCTCCCATATTGCAGTCGCGGCACGATGGAACTAAATTAATAGGCATCACCGAAAATTCAGGATA
  ATGTGCAATAGGAAGAAAATGATCTATATTTTTTGTCTGTCCTATATCACCACAAAATGGACATTTTTCACCTGATGAAA
  CAAGCATGTCATCGTAATATGTTCTAGCGGGTTTGTTTTTATCTCGGAGATTATTTTCATAAAGCTTTTCTAA
  +
  `RRRCCS]YPQBBBCWWURUGGUR66666667U\MMFFFOFFa````%%%Q]>>XYaeLLNR\QQZIIK]XZO4[RONQ]
  ////0LLRTRRGGGSNJJ)))Rd_LLTNOQOCCNJLFFMYY`NNMTNMFFF%%55OO<<::[]UGHL7777BBDYZZVT=
  =]`WCCMNNVAANNN7777G^aa]ZWY_;;;;;;<^VV``;;XLLYHHUGGG>,,,,ZNNNSZ:::::OROOYTMNNEEE
  Y@@RLM[RR`_ZX]`??EEHKCCADBBXHHHEEEF33333?PHI\NNXY_OOR----<c[888?V>>>>EP,,
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/4004/ccs
  AAATGCTTCCTTCGCGCTTGGAAGGCAAACCCGAAAAGAGGCTGAACGGCACGAAATTCCCAGTTACAATGCGCAAACAC
  AAAGCGAACAGTTGGCCGTCCAAACGGACGACAATAACCGGACGAGGGACGGGAGGGCGATAACGGGCAAACATGCAGGA
  GGGAAGAATTTTTTGGCAAAAAAAATGTTTTTTTTTTTTTTTTCGTCTTTTTTTTGCTTTTTCCTATTTTCAAAATTTTT
  TTGGGAATTTTTTTTTTTTTTTTCAAAACGTTTTTTGGTATGAATTATTTCCAGATATTTAATTTTTTCTCGTAGAACAA
  ATAACCGGCCCATCTAATGAAAAAAAATATAAAACCGTTGTTTCAAATAACAGCGGAAAAAAAGTGTTAATTAGATTAAA
  AAACAAGCTTGTATGACAAAAAAAACCCCCCTCTGAAGTGTTCTTCTGACGGTCGTCAGGAGAAGTGGTGCTGTGGGCCC
  TGAGACGCCTATAGGGACACGAGAACATGCGAGGAAAAAAAATTTCAGCAGCAGCGCCGGGATTGGTTGGAAGGCGGGAG
  TCAGTTCGCGGTACTTGAGGAGGCGCGCAACGTCGCCAGCTGTCTGCACA
  +
  """"()%%''*+#(')1$$/.(("$&!##!#$1&&$"&2,,$,(("$./-1$!&'($'+%$##!"(*$$'+*%$"$$*+.
  &"$*+&('(")&($#'$#',-$$$"%%.+*'!##&$%)+$$*'/("##!("$#!!"$"$"%##$$##"#$&&)$"!$$#"
  "'%#%)##$*)&((#&!$$$$$$$$##!$$$#"#$$$$$$$#""$%$&&%$###$(($%%%$"$&"#&%&%"$$##%&%$
  %&'&"#$!$$$$$$$$#$$#"$"##$#!!#!$"!#$&(%$#%'$&&$&&(**++&!"$$$"$&&&%&&&$'"#"$'*!"#
  !%$$##"##$#!$&#$)%&"######"$"&%%$&')#"$##*'%('%!"%$%$%#"''#%%''%&%$%!#$%%$)'###"
  #$#%%%%%$%#$"$)$!!!!!!!!!"%##$#!!#"%'$""'&&%%&%$$%$%$*%!(,$##$""'&&%"*#)($%%&!$#
  #""%&'$"$'%%)&"$'%#$!!$*'&&&%!""#$"#$$$$$#''$*+$#'&#),,'(($#$($$"'**)**+()*$$!%(
  ++%%%#%#-%%$(+%$%#$%&+,+%"*)##!,('%""",)%%,,*+,)##
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/4005/ccs
  GCTGCAACTGAGCACATACGCAATCTGCTCCGCCGACACGTTATGGAAGCTGCGAGCCATCGCGTCAGCCCCACGTCGGC
  GTTCTGTGGTCAGCTCCCGAAGGCTTTCAGCGACCTTGTCCACTCCACGCCGATGCAGAGGAGAAACGGCGCCACACTCT
  GGCCTGATGGACGCAATCTGAGCCTCACCGCTTACCCCGCCCTTAACCAGTGCGCTGAGTGACTCTTGGTCTGGTTAAAC
  GTCAGCCTGCCCGCCTGCCGCCTCTGGACGAGGACCGCCATACGTCTGCCGTTCAGTCCGCCTGATTGCCGAAAGGACCC
  AGGCGTTTTGTTGAAATCGGAC
  +
  ..21,)+$0++,'&+44/3*'(0024212/0..001+,/21+44*)((%-/$$-02./1232%%+),2&&&$#%&&''')
  $#&*1/0..&+%,-&#'&%!%++0&&&4++&&301+++211*$#(0+*301*)*'(1%$)-*/&&%'&)-'$%#*+,,)+
  /1$"&()4++**,/+.//.++3-,%%1002,&($!!"!#"$$+/&"+++---002-&"%*3,'###'&'*1.1212)'(*
  --%%*$%%)"$#"&()+$%"!#(,-$#$%'***#%)#$%+(%++&-%$%%%$$+)*+%%$%%%%$')+++&!##(*,$$%
  *$%'%"%%##%,-+,,--))*+
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/4006/ccs
  GGCGCACGGAGGAGCAAGCGTGACAGTCCCACGTCATGCCCGCCGACGATATCGAGCTCGCGCTCACCGCCAGGGTGTGA
  AGTGAATTCACGGTGCCGCCGAAAGCTGGGCCGGCTTTCGTTCCTTCGCCGGTCAGGAGAAGGCGGACCCCGTCGTGGGC
  CATTCCGAGCCTGGAGACAGCGGTCGAAAAAGCCTTCGCCAAGCCGGTGGCCAAATGGTCGGCCAGCGAGAATCCGTGC
  +
  *2&%$(-(*%'$(95.-41',.66',5$$$",%#(534(((5/0/-610'#()2.&&+-4-693#'%-37760,/1041-
  -.44''+.6*#..21*+2*52(*(&#%//.%&$$-,'-*,44////&$/-014253912+++-'&.'#()+4-%&+))).
  -**-22$%0//*%&%%((')!!.3(*(-,*-0'*&&"3$",&..0($*'%-,&&!!!#!!!-%&''""&'$'/%)'&+&
  @m110818_075520_42141_c100129202555500000315043109121112_s1_p0/4007/ccs
  TAATAAATCTCGGAGAACTAACAACTTTCCGCGGACGAAGACAGCAAGGTATGTCTATATGGAAAGGCAATCCCAATAAC
  GGCACGAGAGCCAAAGAACACAAGGCACCCAGCGTACTACTCCGTAGCCGCCTCTGCTTTTTTTGCTTGGCTGCATAATG
  TGATGCCAGACGCGCAAAAGTAGAGCCGCACTGAGAGCGTCCTCAACAGCCCAGACGGAGAGCACACTAACGACCAGATG
  TTGATCAGGATCTGCGTGATTAGTCGCGCACCTGAACTGTTTGGCGCCCGGCGGCCACATATATGTCACACTTCAGCTTG
  TCTCCACCCTGACCTCCACAGGAGGCAGGCTCCGGCCTCGGTGCCACCGCGAGCCCACTCACGCGCTCGTATAGCAGTCT
  CACCAGCGCATTCTAAGTTCCTCACCTGGCCGGTCTTGACCGCCATCTACCGGATGATCAGTCGTCCTTTTGATCTCTGC
  TGACAGCTCAATTAGGCTACCGCACAACAATTCCCACGACGCAAATCCATGCGGTGGCTGAAGCGCGCGAAGCCGTCAAC
  TACCTGGAGACACCACGCTCCGGCGCGATAGGTAGCAGGAACGACCGGTGGTCTGCTATGAAGCCAGGCATCCTTGTTGT
  ATCCGTGAATGCTATGGTTGTCTCTCGCTGGGTGTGGTCTGGTCGATGTCGCAAGCACTCTGACATGGGGCACGGAAACA
  CGACTGACAGCTCAACCGAATAACATACTCCACTTCGCACATGCAACAATCATACTGCCAGGGAGAGCGAACGTAAAAAT
  AGATGAGATTTGCCGTTATCAGACGCATCACCGCGCGCGAAGAAGTACGAGTGGTAGAGGACGGTGACACGCTCTCGCTC
  ATGAATCCTCTGCAACGTATCGCGAGCGCAAGGCTTCATGTCCGTCGCGCGGTCGAGTGTGTCTATGACCGCCTGTTTTC
  GTTCCAGGCGACAGGACACGCGCTCGTAACCCGTATATTTGCTAGCAGACATACCTGGCACGAACAGTGAGCCAAGGAGA
  GAGGCGACGCGATACGACTCACGTGTAAAGCCAGCACAGACTATGGGACCAAGACTATCAAGTGCGGCCAGTGCACCATC
  TGCGGCTAACATTTTGCCAGGATCCAGGCAGTAGGATATATGGTTTCTGGCGCCGCCAGCGGTTGCAGAGGAACAGGCTT
  CGCGATATACCAGACACCTATGACTGATGCACCTACAGTTATCACGAAGAGCAGTGGTCGCGCTCTTCTGCAGCCACTCG
  CCATCTCGTGGCGCTGACGTAGCACCGAGCGCGCGATCGTGACAGCTTATTCATTGACAGGGCGACACGATCGCAAGAGA
  GAGCAAGACGGCACTGGGCTCGATTGTGCACAATGAGTCATTAGAACAGCACGGCGCGCCGAAGTCGCACTTCCGGTCAT
  TCTCCTCGTCACGTTTGCGCGAGTGGCTTACACGATCGGGACGACATGCCGCACCACGCAGCGTCTAACGAAGGAGAGTA
  GGAGGATAAATCACCGAAGCACAGATAGCGCAACGGGCAGGCGACAGACCCACCACGCACAAGCACGCATGGTAGCACGC
  GCAGCAAGACAAAAGCGAGCCAACAGCGAGAAGCTCAACGAATCTGCTGCACTTCACCCCACGGATCACGCCGAACCACA
  TCCACCAATACGGGTTTGTCAGCGAACAGGCCTTGTGAAGTTCCGATT
  +
  #$$!#$#!$%"#%%$$#$""#$$%$#$"$%$$""%$"$$$!#"!"$$$$!!##!$%#"%#""#%%"!$##"#$"#$##$#
  ##""$$%#"$$$"#!#""#!"$$!#$$##$$##$!!"#$####%%##!!"##!$""#!!!"""!####$$%$#$#$"#"#
  "$$###$"$%#"#$%$%$#$"$""#"""#####$%%$$!!#$""$%%$"!#"$$####%$$#$#!##$$%%#%$%#"$!"
  "#$$$$""$##$$$"#"#""%%"%#$$!##"$#%$$##$#$$$%$$!##"$%$%$%"$$!"##$"#$"#"$"#%""$$%$
  ###"$##"$%$#$%%##$$"$$$""""##"$#$#%"""##%$"#$"#"###$##"$%$%#"""##!"#%%#$"#$$###$
  "!""$"$#$$###$#%$$%$$%#"""%$%#$#"#$$$"!!"##$$%%$##%$%!!$$%%$!#!"##$$$""$%$""#$$"
  $$##!$#"$#$#%$#$"##$%"#!$#$#"$""#%$%$$##"%"!#!"%#$"""""#$!!"!#"###$$$$%%$%$%$#""
  $##"$$$!##""#$"##!########$$$$$$%$$%#"""$!$"$%$%%$%$#%%$%$#%$%$$%#$%%%%"%$%#$%%"
  !#"""$$!"#######$#$##"!"!#$$$$%%%%$$%$#$$%%$$#%#%$%$"%%$"!!##$#"#$$%%%"%%$%$%%#"
  "#$##$$$##$%$"#$%%$%%##"$"%$!!##$"$$#"$###$%$%%$%#%%"$#$%$$"$#$$#"!"!"""!$$$$%$"
  "$%%$$$%""!""##$$#%$#""!"#$##!####$#"#$#$"$%#$#$#$"$##!"#$###""""$$"#""#!""###$#
  !!!#$"$%##"$###$##%$!##!$!#"!##$%$$%$!#$#$$%$#"$$%#$"#!$"$"#$#"$$$##"###$$$#"##$
  $"""!$#$!##""!!"!$!$#!#$#$%#$"!##$#$#"#"$#$##"#$$$%$"#$#$%$$$#!!###"$$###$$"#!"#
  ####$$###$"""#!""!!"$$$$%$"###""%"#"#$$!#!$%##"!$$""#$"$$###$$$%#""##!"!#####%##
  $#"!#!#$%$$#$%$%!"##$#$$$"#%#$##!"$#$##%%##$$%$$!##$$%$###$"!#""##!$$$%##"$$%$##
  "#$$#"#$$$%$#"!#"$!%%$#!#!!#!%$!""##$$""##""#$$$$"##$"""#"#!!!"$####$#$%$#""##""
  #"!"#"$$$####"%%"#$%$#$%#$$$####$###$"!""!#""#"%$#%$%""!#"!###"$#""######$"!#!#$
  $$"#"""#""!!!##"#"$$!$##%$"!$""$$%#""$$$$$"$""""#"#!#!####""!""$"#!!""###$""""""
  %"###"#!!###$#"#!!!$!""$"!"""""##!""#"##"""!#""#""$####$##"$$#"#"$#$#$"!$$#"$$"!
  $$!##"!"#""#"!#$$#"!!"!##$$$$$$$%%$%$$###"$"$#$$#"%%#$%#"#"##$"#"#!!$$$$!!##$"!"
  ###"$""#$#"###"$$#"""#$#$#$"$$!$$!!!"""#"!%$!"##!!!#!"$!!!!!"!!""!!"!!!!"!!##""$
  !"$!!"!"!"#!#!!!$"!##""!!"$#""!!!#"#!#%"!"!"$#"$

  $ $CMD --readType=unrolled --outType=fastq

  $ $CMD --readType=subreads --outType=fastq

Test out some filters.  For example, there are no subreads > 1000
bases, but there are unrolled reads that long.

  $ $CMD --readType=subreads --outType=fasta --minLength=1000
  $ linecount ${MOVIENAME}.fasta
  0

  $ $CMD --readType=unrolled --outType=fasta --minLength=1000
  $ linecount ${MOVIENAME}.fasta
  395

There are no reads with readScore >= 0.95,

  $ $CMD --readType=subreads --outType=fasta --minReadScore=0.95
  $ linecount ${MOVIENAME}.fasta
  0

but ZMW 9 has readScore > 0.85:

  $ $CMD --readType=subreads --outType=fasta --minReadScore=0.85
  $ grep ">" ${MOVIENAME}.fasta
  >m110818_075520_42141_c100129202555500000315043109121112_s1_p0/9/0_18
  >m110818_075520_42141_c100129202555500000315043109121112_s1_p0/9/69_769
  >m110818_075520_42141_c100129202555500000315043109121112_s1_p0/9/815_1498
  >m110818_075520_42141_c100129202555500000315043109121112_s1_p0/9/1549_2080
