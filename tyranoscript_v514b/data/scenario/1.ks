*start
[cm]
;黒の背景
[bg storage=black.png time=1000]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]
;メッセージウィンドウの表示
@layopt layer=message0 visible=true
Chapter 1　：　未知との出会い[p]
@layopt layer=message0 visible=false

;背景の設定
[bg storage=家.png time=3000]
;メッセージウィンドウの設定
[position layer="message0" left=100 top=100 width=1060 height=500 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]
;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;プロローグ
今日は待ちに待った大学の合格発表の日。[r]
あなたは念願の一人暮らしのために、地元から離れた沖縄の大学を受験しました。
憧れていた大学生活に心を躍らせ、これから待ち受ける様々な出会いに期待が高まります。[r]
[r]
あなたは合格発表を見るために、準備をして大学に向かわなくてはなりません。[p]

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

#自分
もうこんな時間か、早く準備しないと...[l]

[glink  color="blue"  storage="1.ks"  size="28"  x="360"  width="500"  y="150"  text="そのまま大学へ向かう"  target="*normal"  ]
[glink  color="blue"  storage="1.ks"  size="28"  x="360"  width="500"  y="250"  text="お守りを持って大学へ向かう"  target="*normal"  ]
[glink  color="blue"  storage="1.ks"  size="28"  x="360"  width="500"  y="350"  text="二度寝する"  target="*end" ]
[s]

*end
[cm]
#
;黒の背景
[bg storage=black.png time=1000]
;メッセージウィンドウの設定
[position layer="message0" left=100 top=100 width=1060 height=500 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]
ゲームクリア[r]
[r]
始まらない物語[p]
@jump storage="first.ks"

*normal
[cm]
#
[playse storage="移動音.m4a"]
;場面移動-暗転
[bg storage="black.png" time="500"]

[playbgm storage="人混み.mp3" volume=10]
;合格発表会場
[bg storage="合格発表.png" time="1500"]
#自分
人がいっぱいだ！[p]

[playse storage="衝突音.mp3"]
;誰かとぶつかる演出
[quake count=1 time=100 hmax=20]

#？？？
「痛？」[p]
[chara_show name="Do" face="斜め通常" ]

#自分
ごめんなさい。前を見てませんでした[p]

#？？？
・・・[p]

ん?[r]
(何かが落ちていることに気づく)[l]
[glink  color="blue"  storage="1.ks"  size="28"  x="360"  width="500"  y="250"  text="拾う"  target="*pick"  ]
[glink  color="blue"  storage="1.ks"  size="28"  x="360"  width="500"  y="350"  text="無視する"  target="*end-1"  ]
[s]

*end-1
[cm]
;前Doに怒られる　セリフ：Fu Fu Fu　あややとぅーや

#？？？
[chara_mod name="Do" face="叫ぶ"]
Fu Fu Fu　あややとぅーや[p]

#自分
！！！！！！！[p]

[chara_mod name="Do" face="斜め通常" ]
#？？？
[playse storage="Do拾ってくれたら嬉しいなぁ.m4a"]
[delay speed=150 ][font bold="true" color="0xF01010"]君が拾ってくれたら嬉しいな[resetfont][resetdelay][p]
[glink  color="blue"  storage="1.ks"  size="28"  x="360"  width="500"  y="250"  text="拾う"  target="*pick"  ]
[s]


*pick
[cm]
[playse storage="動く音.mp3"]
[layopt layer="1" visible="true"]
[image layer="1" x="300" y="200" width="800" storage="受験票.png" time="2000"]
この人の受験票だ。[p]
[freeimage layer="1"]

#自分
あの、受験票落としましたよ[p]

#4545Cの男
[chara_mod name="Do" face="斜め笑い"]
ほんとだ！[r]
ありがとう[p]

[chara_mod name="Do" face="斜め通常"]

君も合格発表を見に来たんだよね？[p]

君はどこの学科を受けたの？[p]

#自分
なんか身の危険を感じる。[r]
本当のことを言うべきだろうか...[l]

[glink  color="blue"  storage="1.ks"  size="28"  x="360"  width="500"  y="250"  text="工学部だと言う"  target="*kougaku"  ]
[glink  color="blue"  storage="1.ks"  size="28"  x="360"  width="500"  y="350"  text="社会学部だと言う"  target="*syakai"  ]
[s]

*kougaku
[cm]
[eval exp="f.gakubu = '工学部'"]
@jump target="*common_gakubu"

*syakai
[cm]
[eval exp="f.gakubu = '社会学部'"]

*common_gakubu
[emb exp=f.gakubu]を受けたよ[p]

#4545Cの男
[chara_mod name="Do" face="default"]
;音声付きセリフ
[playse storage="Do僕と一緒だねスロー.m4a"]
そうなんだ！[delay speed=150 ][font bold="true" color="0xF01010"]僕と一緒だね。[resetfont][resetdelay][p]

#自分
[delay speed=150]そ...[resetdelay]そうなんですね[p]

#4545Cの男
[chara_mod name="Do" face="ぼーっと"]
あっ、僕の名前は前Doよろしく！[p]

*名前入力
#
あなたの名前を入力してください[l]

[edit name="f.player_name" left="500" top="400" width="255" height="47" size="30" maxchars="8" initial=""]
[button x=650 y=387 width="110" target="*名前" graphic="OK.png" enterimg=inOK.png]
[s]

*名前
[commit]
[cm]
[if exp="f.player_name==''"]
この名前は使用できません[p]
@jump target="*名前入力"
[endif]

#&f.player_name
私の名前は[emb exp=f.player_name][p]

#前Do
[chara_mod name="Do" face="下笑い"]
[playse storage="Doよろしく.m4a"]
[font bold="true" color="0xF01010"][emb exp=f.player_name]ちゃんか、よろしく[resetfont][p]


#&f.player_name
なぜか恐怖心が湧き出した。[p]

[chara_mod name="Do" face="斜め通常"]

お互い、合格してるといいですね[p]

#前Do
そうだね[p]

[chara_hide name="Do"]

[playse storage="移動音.m4a"]
[stopbgm]
#
あなたは恐怖のあまり、逃げるようにこの場を去った[p]

;黒の背景
[bg storage=black.png time=1000]
;メッセージウィンドウの設定
[position layer="message0" left=100 top=100 width=1060 height=500 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]
その後家に着いたが、どのようにして帰ったのかは覚えてない。[r]
なぜあんなに恐怖を感じていたのだろうか[l][r]
大学はオンラインで合格を知ったが、素直に喜べない自分がいたのであった。[p]

Chapter 1　：　未知との出会い　クリア[p]
[cm]
;Chapter 2へ
@jump storage="2.ks"