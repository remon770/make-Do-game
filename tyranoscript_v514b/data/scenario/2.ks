;[cm]
;黒の背景
[bg storage=black.png time=1000]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]
;メッセージウィンドウの表示
@layopt layer=message0 visible=true
Chapter 2　：　再会[p]
@layopt layer=message0 visible=false

;背景の設定
[bg storage=家.png time=3000]

;メッセージウィンドウの設定
[position layer="message0" left=100 top=100 width=1060 height=500 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]
;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;導入
合格発表以来、あの4545Cの男と会うことはなかった。[r]
大学生活が始まり慣れないことが多く大変だが充実した日々を過ごしていた。[l][r]
[r]
今日はサークルの新入生歓迎会があるらしい...[p]

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

#&f.player_name
今日は何をしようか[l]

;分岐1、サークル、学校、家
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="150"  text="サークルを見にいく"  target="*サークル"  ]
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="250"  text="とりあえず学校へ向かう"  target="*大学"  ]
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="350"  text="家にいる"  target="*家" ]
[s]

;分岐1
*サークル
[cm]
#
[bg storage="キャンパス.jpg" time="2000" method="fadeInLeftBig"]

#&f.player_name
今日はあちこちでサークルの勧誘をしているようだ。[r]
歩いていると何枚かの勧誘のビラをもらった。[p]
どのサークルを見に行こうかな？[l]

;分岐2-音楽、スポーツ、宗教
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="150"  text="音楽系サークル"  target="*音楽"  ]
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="250"  text="スポーツ系サークル"  target="*スポーツ"  ]
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="350"  text="宗教系サークル"  target="*宗教" ]
[s]

;分岐2
*音楽
[cm]
[eval exp="f.サークル = '音楽'"]

@jump target="*分岐2"

;分岐2
*スポーツ
[cm]
[eval exp="f.サークル = 'スポーツ'"]
@jump target="*分岐2"

;分岐2
*宗教
[cm]
[eval exp="f.サークル = '宗教'"]
;講義室移動
[bg storage=講義室.png time=1000]
[chara_show name="yamato" face="happy" ]
#サークルの先輩
あなたは今幸せですか？[p]

;前どうセリフ（シルエット）
#???
冷静に考えて誰に需要があるねん！！

;前どう登場

#自分
！！！！！！！



@jump target="*分岐2"


;分岐2＞ジャンプ
*分岐2



;分岐1
*大学
[cm]

;分岐1
*家
[cm]

#&f.player_name
[p]
今日は家でゆっくりしよう．[p]
そういえば見たかったアニメがあったな[p]
・・・

;黒の背景
[bg storage=black.png time=1000]
;背景の設定
[bg storage=家.png time=3000]
;前どう家に訪問
[cm]
#???
;訪問チャイム
[playse storage="ドアチャイム.mp3"]
--チャイムが鳴る音--[p]

#&f.player_name
誰だろう[l]
;チャイム分岐，出る，出ない
[glink  color="blue"  size="28"  x="360"  width="500"  y="250"  text="出る" storage="2.ks" target="*出る"  ]
[glink  color="blue"  size="28"  x="360"  width="500"  y="350"  text="出ない" storage="2.ks" target="*出ない"  ]
[s]

#チャイムに出る
*出る
#&f.player_name
はーい[p]

@jump target="*合流ポイント"

;チャイムに出ない
*出ない
[cm]
#???
[playse storage="ドアチャイム.mp3"]
[wait time=1000] 
[playse storage="ドアチャイム.mp3"]
[wait time=1000] 
[playse storage="ドアチャイム.mp3"]


#&f.player_name
！？！？！？[p]
え...[r]
だ...だれ？[p]

*合流ポイント
;背景の設定
[bg storage=玄関ドア.png time=3000]
;スコープの選択
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="250"  text="ドアスコープを覗く"  target="*ドアスコープ"  ]
[s]
*ドアスコープ
[cm]
;背景の設定
[bg storage=スコープ.png time=3000]
#&f.player_name
あれ...?[r]
誰もいない...?[p]
;背景の設定
[bg storage=前Doスコープ.png time=3000]
きゃあああ！？[p]


