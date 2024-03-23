;[cm]
;黒の背景
[bg storage=black.png time=1000]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]
;メッセージウィンドウの表示
@layopt layer=message0 visible=true
Chapter 3　：　知り合い[p]
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
それからDoくんと先輩とやりとりを行いみんなでカラオケに行くことになった[p]

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

#先輩
よっしゃ、歌うか！[p]

#前Do
僕久しぶりなんですよね〜[p]

#
Doくんは楽しそうに歌った[p]
;あややてぅーや挿入

#&f.player_name
Doくん楽しそうだな〜[p]

#先輩
お前結構うまいな！[p]

#前Do
せっかくだから[emb exp=f.player_name]ちゃんも歌いなよ[p]

#
何歌おうかな

;アニソン, 洋楽, 演歌
[glink  color="blue"  storage="3.ks"  size="28"  x="360"  width="500"  y="150"  text="アニソン"  target="*演奏後"  ]
[glink  color="blue"  storage="3.ks"  size="28"  x="360"  width="500"  y="250"  text="洋楽"  target="*演奏後"  ]
[glink  color="blue"  storage="3.ks"  size="28"  x="360"  width="500"  y="350"  text="演歌"  target="*演奏後" ]
[s]

;演奏後
*演奏後
#前Do
僕もその曲好きだよ[l][r]
[delay speed=150 ][font bold="true" color="0xF01010"]僕たち気が合うね[resetfont][resetdelay]」[p]

#&f.player_name
この曲知ってるんだ！[p]

#前Do
あの番組で有名なった曲だよね[l][r]
今度聖地巡りしようよ[p]
;行く, 行かない
[glink  color="blue"  storage="3.ks"  size="28"  x="360"  width="500"  y="150"  text="行く"  target="*行く"  ]
[glink  color="blue"  storage="3.ks"  size="28"  x="360"  width="500"  y="250"  text="行かない"  target="*行かない"  ]
[s]

*行く
#前Do
じゃあ明日の7時に大学集合で[p]

#&f.player_name
ええ...[p]
@jump target="3end" 

*行かない
#前Do
一緒に行って欲しいなぁ[p]
;選択肢が行くのみになる
[glink  color="blue"  storage="3.ks"  size="28"  x="360"  width="500"  y="150"  text="行く"  target="*行く"  ]
[s]

*3end
#
;黒の背景
[bg storage=black.png time=1000]
;メッセージウィンドウの設定
[position layer="message0" left=100 top=100 width=1060 height=500 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]


Chapter 3　：　知り合い　クリア[p]
[cm]
;Chapter 4へ
@jump storage="4.ks"
