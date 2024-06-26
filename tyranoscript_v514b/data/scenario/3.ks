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
[playbgm storage="部屋BGM.mp3" volume=10]

;メッセージウィンドウの設定
[position layer="message0" left=100 top=100 width=1060 height=500 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]
;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;導入
それからDoくんや先輩達とやりとりを行っていくうち、[r]
みんなでカラオケに行くことになった[p]

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

#&f.player_name
最先色々不安だったけど[r]
なんだかんだ大学生っぽくなってきた気がするな〜[p]
Doくんとはまだ距離感がわからないけど...[p]

#
[wait time=1000]

#&f.player_name
あ、いっけない[l][r]
そろそろ出ないと[p]

[playse storage="移動音.m4a"]
[fadeoutbgm]
;カラオケに移動
[bg storage="カラオケ.png" time=3000 method="fadeInLeftBig"]
[playbgm storage="クラブ.mp3" volume=3]



[chara_show name="senpai"]
#ムキムキ先輩
よっしゃ、歌うか！[p]

[chara_show name="Do" face="座る"]
#前Do
僕久しぶりなんですよね〜[p]

[playse storage="動く音.mp3"]
[chara_mod name="Do" face="歌う"]
#前Do
[playse storage="あややとぅーや.m4a"]
Fu Fu Fu あややとぅーや[p]

#
Doくんは楽しそうに歌った[p]

#&f.player_name
Doくん楽しそうだな〜[p]

[chara_show name="senpai2" face="あちゃー"]
#うるさい先輩
お前結構うまいな！[p]

[playse storage="動く音.mp3"]
[chara_mod name="Do" face="座る"]
#前Do
いえいえ[l][r]
せっかくだから[emb exp=f.player_name]ちゃんも歌いなよ[p]

#
何歌おうかな

;アニソン, 洋楽, 演歌
[glink  color="blue"  storage="3.ks"  size="28"  x="360"  width="500"  y="150"  text="アニソン"  target="*アニソン" clickse="デンモク決定音.mp3" ]
[glink  color="blue"  storage="3.ks"  size="28"  x="360"  width="500"  y="250"  text="洋楽"  target="*洋楽" clickse="デンモク決定音.mp3" ]
[glink  color="blue"  storage="3.ks"  size="28"  x="360"  width="500"  y="350"  text="演歌"  target="*演歌" clickse="デンモク決定音.mp3" ]
[s]


*アニソン
[eval exp="sf.曲 = 'アニソン'"]
[fadeoutbgm]
[wait time=1000]
[playse storage="動く音.mp3"]
[chara_hide_all]
#&f.player_name
〜〜〜♪[p]

@jump target="*演奏後"

*洋楽
[eval exp="sf.曲 = '洋楽'"]
[fadeoutbgm]
[wait time=1000]
[playse storage="動く音.mp3"]
[chara_hide_all]
#&f.player_name
〜〜〜♪[p]

@jump target="*演奏後"

*演歌
[eval exp="sf.曲 = '演歌'"]
[fadeoutbgm]
[wait time=1000]
[playse storage="動く音.mp3"]
[chara_hide_all]
#&f.player_name
〜〜〜♪[p]

@jump target="*演奏後"

;演奏後
*演奏後
[playbgm storage="クラブ.mp3" volume=10]
[mask time=1000]
[mask_off time=1000]
[chara_show name="Do" face="座る"]
#前Do
[emb exp=f.player_name]ちゃん[emb exp=sf.曲]知ってるんだ[l][r]
僕もその曲好きだよ[p]
[playse storage="動く音.mp3"]
[chara_mod name="Do" face="赤全身"]
;音声付きセリフ
[playse storage="Do僕たち気が合うね.m4a"]
[wait time=500]
[delay speed=150 ][font bold="true" color="0xF01010"]僕たち気が合うね[resetfont][resetdelay][p]

#&f.player_name
Doくんこの[emb exp=sf.曲]知ってるんだ！[p]

[chara_mod name="Do" face="座る"]
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
[chara_hide_all]
@jump target="3end" 

*行かない
#前Do
[playse storage="Do一緒に行って欲しいなぁ.m4a" volume=200]
[delay speed=150][font bold="true" color="0xF01010"]一緒に行って欲しいなぁ[p][resetfont][resetdelay]
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
[fadeoutbgm]
[cm]
;Chapter 4へ
@jump storage="4.ks"
