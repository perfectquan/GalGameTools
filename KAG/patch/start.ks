*start|
	[initscene]
	[quickmenu fadein notify]
	[eval exp="tf.startscenario = '01prol_001_01.ks'"]
*jump|
	[next storage=&tf.startscenario eval="!world_object.playerExecMode"]
	[next storage=sceneplayer.ks]

*end|
	[sysjump from="game" to="title"]
	[gotostart]

*before_ed
	[msgoff][quickmenu fadeout wait][return]
*after_ed
	[quickmenu fadein wait][jump target=*jump]

*ed_shia|
	[call target=*before_ed][staffroll rolltype=shia ][eval exp="tf.startscenario = '0Aelsia_010.ks'"   ][jump target=*after_ed]
*ed_mana|
	[call target=*before_ed][staffroll rolltype=mana ][eval exp="tf.startscenario = '0Bmana_002_11.ks'" ][jump target=*after_ed]
*ed_akari|
	[call target=*before_ed][staffroll rolltype=akari][eval exp="tf.startscenario = '0cakari_001_21.ks'"][jump target=*after_ed]
*ed_yuu|
	[call target=*before_ed][staffroll rolltype=yuu  ][quickmenu fadein wait]
	[scenestart storage=0dyuu_001_25.ks target=*afterendroll]
	[jump storage=sceneplayer.ks target=*envplay]
*ed_kaori|
	[call target=*before_ed][staffroll subroute rolltype=kaori][eval exp="tf.startscenario = '0Ekaori_003_05.ks'"  ][jump target=*after_ed]
*ed_beru|
	[call target=*before_ed][staffroll subroute rolltype=beru ][quickmenu fadein wait]
	[scenestart storage=02main_005_5A_03.ks target=*afterendroll]
	[jump storage=sceneplayer.ks target=*envplay]


