//	WebHelp 5.10.001
var S=new Array();
var A=new Array();
var gaFtsStop=new Array();
var gaFtsStem=new Array();
var gbWhLang=false;

S[0]=0
S[1]=0
S[2]=0
S[3]=0
S[4]=0
S[5]=0
S[6]=0
S[7]=0
S[8]=0
S[127]=0
S[156]=0
S[128]=0
S[155]=0
S[129]=0
S[14]=0
S[15]=0
S[16]=0
S[17]=0
S[18]=0
S[19]=0
S[20]=0
S[21]=0
S[22]=0
S[23]=0
S[24]=0
S[25]=0
S[26]=0
S[27]=0
S[28]=0
S[29]=0
S[30]=0
S[31]=0
S[130]=0
S[158]=0
S[131]=0
S[159]=0
S[147]=0
S[157]=0
S[132]=0
S[145]=0
S[154]=0
S[153]=0
S[152]=0
S[151]=0
S[150]=0
S[149]=0
S[148]=0
S[144]=0
S[146]=0
S[140]=0
S[139]=0
S[143]=0
S[142]=0
S[141]=0
S[134]=0
S[135]=0
S[138]=0
S[137]=0
S[136]=0
S[9]=59
S[10]=60
S[11]=61
S[12]=62
S[13]=63
S[133]=64
S[160]=65
S[32]=65
S[96]=67
S[180]=68
S[94]=69
S[175]=70
S[168]=71
S[184]=72
S[95]=73
S[173]=74
S[45]=75
S[44]=76
S[59]=77
S[58]=78
S[33]=79
S[161]=80
S[63]=81
S[191]=82
S[46]=83
S[183]=84
S[39]=85
S[34]=86
S[171]=87
S[187]=88
S[40]=89
S[41]=90
S[91]=91
S[93]=92
S[123]=93
S[125]=94
S[167]=95
S[182]=96
S[169]=97
S[174]=98
S[64]=99
S[42]=100
S[47]=101
S[92]=102
S[38]=103
S[35]=104
S[37]=105
S[176]=106
S[43]=107
S[177]=108
S[247]=109
S[215]=110
S[60]=111
S[61]=112
S[62]=113
S[172]=114
S[124]=115
S[166]=116
S[126]=117
S[164]=118
S[162]=119
S[36]=120
S[163]=121
S[165]=122
S[48]=123
S[49]=124
S[185]=124
S[189]=126
S[188]=127
S[178]=128
S[50]=128
S[179]=130
S[51]=130
S[190]=132
S[52]=133
S[53]=134
S[54]=135
S[55]=136
S[56]=137
S[57]=138
S[97]=139
S[65]=139
S[170]=139
S[225]=139
S[193]=139
S[192]=139
S[224]=139
S[258]=139
S[259]=139
S[226]=139
S[194]=139
S[461]=139
S[462]=139
S[195]=139
S[227]=139
S[480]=139
S[481]=139
S[261]=139
S[260]=139
S[256]=139
S[257]=139
S[66]=160
S[98]=160
S[384]=162
S[385]=163
S[386]=164
S[387]=164
S[67]=166
S[99]=166
S[262]=166
S[263]=166
S[264]=166
S[265]=166
S[269]=166
S[268]=166
S[267]=166
S[266]=166
S[199]=166
S[231]=166
S[392]=178
S[391]=178
S[68]=180
S[100]=180
S[271]=180
S[270]=180
S[273]=180
S[272]=180
S[208]=180
S[240]=180
S[499]=188
S[497]=188
S[498]=188
S[454]=188
S[452]=188
S[453]=188
S[393]=194
S[394]=195
S[396]=196
S[395]=196
S[69]=198
S[101]=198
S[233]=198
S[201]=198
S[200]=198
S[232]=198
S[276]=198
S[277]=198
S[234]=198
S[202]=198
S[282]=198
S[283]=198
S[235]=198
S[203]=198
S[278]=198
S[279]=198
S[274]=198
S[275]=198
S[398]=216
S[477]=216
S[399]=218
S[400]=219
S[102]=220
S[70]=220
S[401]=222
S[402]=222
S[103]=224
S[71]=224
S[286]=224
S[287]=224
S[284]=224
S[285]=224
S[486]=224
S[487]=224
S[288]=224
S[289]=224
S[291]=224
S[290]=224
S[484]=236
S[485]=236
S[403]=238
S[404]=239
S[418]=240
S[419]=240
S[104]=242
S[72]=242
S[293]=242
S[292]=242
S[295]=242
S[294]=242
S[405]=248
S[105]=249
S[73]=249
S[205]=249
S[237]=249
S[204]=249
S[236]=249
S[300]=249
S[301]=249
S[206]=249
S[238]=249
S[464]=249
S[463]=249
S[239]=249
S[207]=249
S[297]=249
S[296]=249
S[304]=249
S[302]=249
S[303]=249
S[299]=249
S[298]=249
S[306]=270
S[307]=270
S[305]=272
S[407]=273
S[406]=274
S[106]=275
S[74]=275
S[308]=275
S[309]=275
S[496]=275
S[75]=280
S[107]=280
S[488]=280
S[489]=280
S[310]=280
S[311]=280
S[409]=286
S[408]=286
S[108]=288
S[76]=288
S[313]=288
S[314]=288
S[317]=288
S[318]=288
S[315]=288
S[316]=288
S[322]=288
S[321]=288
S[319]=298
S[320]=298
S[455]=300
S[456]=300
S[457]=300
S[410]=303
S[411]=304
S[109]=305
S[77]=305
S[110]=307
S[78]=307
S[324]=307
S[323]=307
S[328]=307
S[327]=307
S[209]=307
S[241]=307
S[325]=307
S[326]=307
S[458]=317
S[459]=317
S[460]=317
S[413]=320
S[414]=321
S[330]=322
S[331]=322
S[186]=324
S[79]=324
S[111]=324
S[243]=324
S[211]=324
S[210]=324
S[242]=324
S[334]=324
S[335]=324
S[465]=324
S[466]=324
S[213]=324
S[245]=324
S[491]=324
S[490]=324
S[493]=324
S[492]=324
S[332]=324
S[333]=324
S[417]=324
S[416]=324
S[390]=345
S[415]=346
S[112]=347
S[80]=347
S[421]=349
S[420]=349
S[113]=351
S[81]=351
S[312]=353
S[114]=354
S[82]=354
S[341]=354
S[340]=354
S[344]=354
S[345]=354
S[343]=354
S[342]=354
S[422]=362
S[83]=363
S[115]=363
S[347]=363
S[346]=363
S[348]=363
S[349]=363
S[353]=363
S[352]=363
S[351]=363
S[350]=363
S[383]=363
S[223]=374
S[425]=375
S[426]=376
S[84]=377
S[116]=377
S[356]=377
S[357]=377
S[354]=377
S[355]=377
S[254]=383
S[222]=383
S[446]=385
S[358]=386
S[359]=386
S[427]=388
S[429]=389
S[428]=389
S[430]=391
S[117]=392
S[85]=392
S[250]=392
S[218]=392
S[217]=392
S[249]=392
S[364]=392
S[365]=392
S[251]=392
S[219]=392
S[467]=392
S[468]=392
S[367]=392
S[366]=392
S[360]=392
S[361]=392
S[370]=392
S[371]=392
S[362]=392
S[363]=392
S[431]=392
S[432]=392
S[412]=414
S[433]=415
S[118]=416
S[119]=416
S[87]=416
S[86]=416
S[373]=416
S[372]=416
S[434]=422
S[88]=423
S[120]=423
S[89]=425
S[121]=425
S[253]=425
S[221]=425
S[374]=425
S[375]=425
S[255]=425
S[376]=425
S[220]=425
S[252]=425
S[471]=425
S[472]=425
S[476]=425
S[475]=425
S[474]=425
S[473]=425
S[469]=425
S[470]=425
S[368]=425
S[369]=425
S[436]=445
S[435]=445
S[122]=447
S[90]=447
S[378]=447
S[377]=447
S[382]=447
S[381]=447
S[380]=447
S[379]=447
S[397]=455
S[437]=456
S[438]=456
S[197]=458
S[229]=458
S[228]=460
S[196]=460
S[479]=460
S[478]=460
S[230]=460
S[198]=460
S[482]=460
S[483]=460
S[280]=460
S[281]=460
S[214]=470
S[246]=470
S[248]=470
S[216]=470
S[336]=470
S[337]=470
S[338]=470
S[339]=470
S[244]=470
S[212]=470
S[439]=480
S[495]=480
S[494]=480
S[441]=483
S[440]=483
S[442]=485
S[447]=486
S[443]=487
S[423]=488
S[424]=488
S[445]=490
S[444]=490
S[389]=492
S[388]=492
S[329]=494
S[448]=495
S[449]=496
S[450]=497
S[451]=498
S[181]=499



var gsBiggestChar="䶮";
function getBiggestChar()
{
	return gsBiggestChar;
}

function getCharCode(str,i)
{
	var code=str.charCodeAt(i);
	if ((typeof(S[code]) != 'undefined')&&(S[code] != null))
	{
		return S[code] ;
	}
	return code;
}

function getAccentCharOrder(str, i)
{
	var code=str.charCodeAt(i);
	if ((typeof(A[code]) != 'undefined')&&(A[code] != null))
	{
		return A[code] ;
	}
	else if ((typeof(S[code]) != 'undefined')&&(S[code] != null))
	{
		return S[code] ;
	}
	return code;	
}

function compare(strText1,strText2)
{
	for(var i=0;i<strText1.length && i<strText2.length;i++)
	{
		var charCode1 = getCharCode(strText1,i);
		var charCode2 = getCharCode(strText2,i);
			
		if(charCode1<charCode2) return -1;
		if(charCode1>charCode2) return 1;
	}
	if(strText1.length<strText2.length) return -1;
	if(strText1.length>strText2.length) return 1;
	
	//compare accent
	/*for(var i=0;i<strText1.length ;i++)
	{
		var charCode1 = getAccentCharOrder(strText1,i);
		var charCode2 = getAccentCharOrder(strText2,i);
			
		if(charCode1<charCode2) return -1;
		if(charCode1>charCode2) return 1;
	}*/	
	return 0;	
}

gbWhLang=true;