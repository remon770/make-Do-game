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

[playbgm storage="部屋BGM.mp3" volume=10]
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

;分岐1、学校、家
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="250"  text="学校へ向かう"  target="*大学"  ]
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="350"  text="家にいる"  target="*家" ]
[s]


;分岐1
*大学
[cm]
[playse storage="移動音.m4a"]
[fadeoutbgm time=500]
[playbgm storage="ポップBGM.mp3" volume=10]
#
[bg storage="キャンパス.jpg" time="2000" method="fadeInLeftBig"]

#&f.player_name
学校に来たのはいいけど、どうしよっかな〜[p]
とりあえず図書館にでも行こっと[p]

[chara_show name="Do" face="シルエット通常"] 
#???
おう！[p]

#&f.player_name
?[p]

[chara_mod name="Do" face="default"]
#見覚えのある4545Cの男
久しぶりだな！[emb exp=f.player_name]ちゃん[l][r]
今からサークル見に行くんだけど俺と行こうぜ！[p]

#&f.player_name
えーと[p]
誰でしたっけ？[p]

[chara_mod name="Do" face="下笑い"] 
#見覚えのある4545Cの男
なに言ってんだyo！前Doだよ[l][r]
[chara_mod name="Do"] 
#前Do
覚えてない？合格発表の日のこと[p]

#&f.player_name
あー、あの時の[l][r]
でも私今から[p]

[chara_mod name="Do" face="走る"] 
[playse storage="移動音.m4a"]
#前Do
さあ行こうぜ！[p]

#&f.player_name
え！？ちょっと待って[p]
ちょっとーーー[p]

#
あなたは前Doと一緒にサークルを見に行くことになった[p]

@jump target="*サークル"


;分岐1
*家
[cm]

#&f.player_name
今日は家でゆっくりしよう．[p]
そういえば見たかったアニメがあったな[p]
・・・

;黒の背景
[bg storage=black.png time=1000]
;背景の設定
[bg storage=家.png time=3000]
;前どう家に訪問
[cm]
[fadeoutbgm]
#
;訪問チャイム
[playse storage="ドアチャイム.mp3" volume=30]
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
[playse storage="家の歩行音.m4a"]

@jump target="*合流ポイント"

;チャイムに出ない
*出ない
[cm]
#
[playse storage="ドアチャイム.mp3" volume=30]
[wait time=1000] 
[playse storage="ドアチャイム.mp3" volume=30]
[wait time=1000] 
[playse storage="ドアチャイム.mp3" volume=30]


#&f.player_name
！？！？！？[p]
え...[r]
だ...だれ？[p]
[playse storage="家の歩行音.m4a"]

*合流ポイント
;背景の設定
[bg storage=玄関ドア.png time=3000]
;スコープの選択
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="250"  text="ドアスコープを覗く"  target="*ドアスコープ"  ]
[s]
*ドアスコープ
[cm]
[playse storage="動く音.mp3"]
;背景の設定
[bg storage=スコープ.png time=3000]
#&f.player_name
あれ...?[r]
誰もいない...?[p]
;背景の設定
[bg storage=前Doスコープ.png time=3000]
[quake time=300]
きゃぁぁぁぁぁぁ！！！！？？？？[l][r]
びっくりした！[p]

#見覚えのある4545Cの男
おーい[p]

#&f.player_name
（この人なんで私の家知ってるの？？）[r]
誰ですか？？[p]

#見覚えのある4545Cの男
なに言ってんだyo！前Doだよ[l][r]
;キャラクターの明暗設定
[chara_config brightness=40 talk_focus=brightness]
#前Do
覚えてない？合格発表の日のこと[p]

#&f.player_name
あー、あの時の[p]
どうして私の家知ってるんですか？[p]

#前Do
どうしてって、[l][r]
[playse storage="Doあの後一緒に帰ったじゃん.m4a"]
[delay speed=150 ][font bold="true" color="0xF01010"]あの後一緒に帰ったじゃん。[resetfont][resetdelay][p]

#&f.player_name
えっ...[p]
（あの日は一人で帰ったはず...[l][r]
もしかしてこの人...）[p]

;前Doドアガチャをする
#前Do
[playbgm storage="ドアノブガチャガチャ.mp3"]
これからサークル見に行くんだけど一緒に行かない？（ガチャガチャ）[p]

#&f.player_name
（どうしよう[l][r]
正直行きたくないけど）[p]

わ...わかった、行くから[l][r]
ドアガチャガチャするのやめて[p]
[stopbgm]

#
あなたは前Doと一緒にサークルを見に行くことにした[p]

[playbgm storage="ポップBGM.mp3" volume=10]
@jump target="*サークル"

;分岐1
*サークル
[cm]
#
[bg storage="キャンパス.jpg" time="2000" method="fadeInLeftBig"]
[chara_show name="Do" face="走る"]
どのサークルを見に行こうかな？[l]

;分岐2-スポーツ、宗教、帰る
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="150"  text="スポーツ系サークル"  target="*スポーツ"  ]
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="250"  text="宗教系サークル"  target="*宗教"  ]
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="350"  text="帰る"  target="*帰る" ]
[s]


;分岐2
*スポーツ
[cm]
[playse storage="移動音.m4a"]
[bg storage="サッカー場.jpg" time="2000" method="fadeInLeftBig"]

;前堂消える
[chara_hide name="Do"]

[chara_show name="senpai"]
#ムキムキ先輩
力こそpower[p]

#&f.player_name
（何このやばい人）[p]

[chara_show name="Do" face="斜め笑い"]
#前Do
この人やばくね[p]

#&f.player_name
（お前が言うな）[l][r]
そ、そうだね[p]

[chara_mod name="senpai" face="斜め"]
[playse storage="ピ.mp3"]
#ムキムキ先輩
もしよかったら、こちら私の連絡先です[l][r]
興味があれば連絡ください[p]

#&f.player_name
ありがとうございます[p]

#前Do
こいつスポーツばっかやってそうで将来の危機感とかなさそうだよな[p]

#&f.player_name
危機感？[p]

[chara_mod name="Do" face="default"]
#前Do
[delay speed=30]
スポーツ経験ばっかりの男、部活しかやったことない男、オレ、ガチで危機感持った方がいいと思う。ガチで危機感持った方がいい。で、それこそがァ、お前がァ、どう足掻いてもバカな理由だと思う。
[resetdelay][p]

#&f.player_name
えーと...[p]

[chara_mod name="senpai" face="default"]
#ムキムキ先輩
ボソボソ喋ってんなよ[l][r]
だからモテないんだよ[p]

[chara_mod name="Do" face="顔面崩壊"]
#前Do
;音声付きセリフ
[playse storage="Do確かに俺の顔面崩壊してるけどさぁ.m4a"]
[delay speed=150 ][font bold="true" color="0xF01010"]
確かに俺の顔面崩壊してるけどさぁ〜
[resetfont][resetdelay][p]

#&f.player_name
と、とりあえず！[l][r]
興味があれば連絡しますね！[p]

[chara_mod name="Do" face="スマホ"]
[playse storage="ピ.mp3"]
#前Do
ついでに、[l][r]
俺に興味があれば俺に連絡してもいいぜ[p]

#&f.player_name
う、うん[l][r]
考えときます...[p]

[chara_hide name = "senpai"]

@jump target="*分岐2"

;分岐
*宗教
[cm]

[playse storage="移動音.m4a"]
;講義室移動
[bg storage=講義室.png time=1000]

;Do消える
[chara_hide name="Do"]

[chara_show name="senpai2"]
#うるさい先輩
あなたは神を信じますか？[p]

#&f.player_name
（何このやばい人）[p]

[chara_mod name="senpai2" face="五本指"]
[chara_show name="Do" face="斜め笑い"]
#前Do
この人やばくね[p]

#&f.player_name
（お前が言うな）[l][r]
そ、そうだね[p]

[chara_mod name="senpai2" face="三本指"]
[playse storage="ピ.mp3"]
#うるさい先輩
もしよかったら、こちら私の連絡先です[l][r]
興味があれば連絡ください[p]

#&f.player_name
ありがとうございます[p]

#前Do
こいつティッシュ配り型やんけ[p]

#&f.player_name
ティッシュ配り型？[p]

[chara_mod name="Do" face="default"]
#前Do
[delay speed=30]
宗教勧誘ってさティッシュ配り型と親密型と集団型の三種類があるんだけど、こいつはそのティッシュ配り型やん
[resetdelay][p]

#&f.player_name
そ、そうなんだね...[p]

;[chara_hide name="senpai2"]
[chara_show name="senpai2" face="default"]

#うるさい先輩
宗教勧誘を分類してるのやばいですね[l][r]
神を侮辱するとモテないですよ[p]

[chara_mod name="Do" face="顔面崩壊"]
#前Do
[playse storage="Do確かに俺の顔面崩壊してるけどさぁ.m4a"]
[delay speed=150 ][font bold="true" color="0xF01010"]
確かに俺の顔面崩壊してるけどさぁ〜
[resetfont][resetdelay][p]

#&f.player_name
と、とりあえず！[l][r]
興味があれば連絡しますね！[p]

[chara_mod name="Do" face="スマホ"]
[playse storage="ピ.mp3"]
#前Do
ついでに、[l][r]
俺に興味があれば俺に連絡してもいいぜ[p]

#&f.player_name
う、うん[l][r]
考えときます...[l][r]
（ティッシュ配りすんな）[p]

[chara_hide name = "senpai2"]

@jump target="*分岐2"

*帰る
#前Do？
チョ待てよ[p]

#
どのサークルを見に行こうかな？[l]

;分岐2-スポーツ、宗教、帰る
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="150"  text="スポーツ系サークル"  target="*スポーツ"  ]
[glink  color="blue"  storage="2.ks"  size="28"  x="360"  width="500"  y="250"  text="宗教系サークル"  target="*宗教"  ]
[s]

;分岐2＞ジャンプ
*分岐2
#
;黒の背景
[bg storage=black.png time=1000]
;メッセージウィンドウの設定
[position layer="message0" left=100 top=100 width=1060 height=500 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]
[chara_mod name="Do" face="ねころび"]


癖の強い人と知り合いになってしまった...[l][r]
私の大学生活は一体どのようになってしまうのだろうか[p]

[chara_hide name="Do"]

Chapter 2　：　再会　クリア[p]
[fadeoutbgm]
[cm]
;Chapter 3へ
@jump storage="3.ks"


