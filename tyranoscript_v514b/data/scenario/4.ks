;[cm]
;黒の背景
[bg storage=black.png time=1000]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]
;メッセージウィンドウの表示
@layopt layer=message0 visible=true
Chapter 4　：　友達[p]
@layopt layer=message0 visible=false

;背景の設定
[bg storage=キャンパス.jpg time=3000]
[playbgm storage="ポップBGM.mp3" volume=10]

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
;メッセージウィンドウの表示
@layopt layer=message0 visible=true
;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;導入
#
--朝7時--[r]
大学にて[p]

#&f.player_name
眠いなぁ[p]

[chara_show name="Do" face="シルエット通常"]
#？？？
よう！[p]

[quake time=100]
#&f.player_name
！[p]

[chara_mod name="Do" face="default"]
#前Do
五年ぶりだな[p]

#&f.player_name
おはよう[p]

[chara_mod name="Do" face="ぼーっと"]
#前Do
おはよう[l][r]
じゃあ行こうか[p]

[playse storage="移動音.m4a"]
[chara_hide_all]

;水族館にシーン切り替え
[bg storage="水族館.png" time=3000]
#
それから2人でテレビ番組の聖地巡りをした[p]

[chara_show name="Do" face="青通常"]
#前Do
あのシーン再現しようよ[p]

;Gの立ち絵に切り替え
[chara_mod name="Do" face="G"]
[playse storage="Doゴキブリ〜.m4a"]
[delay speed=150]ゴキブリ〜[l][r]
;フンコロガシの立ち絵に切り替え
[chara_mod name="Do" face="フンコロガシ"]
[playse storage="Doフンコロガシ〜.m4a"]
フンコロガシ〜[p][resetdelay]

#
二人は水族館を楽しんだ[p]

[chara_hide_all]

;街中にシーン切り替え
[bg storage=街中.JPG time=3000]
[chara_show name="Do" face="斜め通常"]
#前Do
そろそろご飯食べようか[l][r]
[chara_show name="Do" face="default"]
何食べたい？[l]

;選択肢 : イタリアン, 沖縄そば, お好み焼き
[glink  color="blue"  storage="4.ks"  size="28"  x="360"  width="500"  y="150"  text="イタリアン"  target="*イタリアン"  ]
[glink  color="blue"  storage="4.ks"  size="28"  x="360"  width="500"  y="250"  text="沖縄そば"  target="*沖縄そば"  ]
[glink  color="blue"  storage="4.ks"  size="28"  x="360"  width="500"  y="350"  text="お好み焼き"  target="*お好み焼き" ]
[s]


*イタリアン
[playse storage="移動音.m4a"]
[chara_hide_all]

;おしゃれなお店にシーン切り替え
[bg storage=イタリアンお店.png time=3000]

#&f.player_name
おしゃれなお店だね[l][r]
私カルボナーラ食べたいな[p]

[chara_show name="Do" face="斜め笑い"]
#前Do
いいね、頼もうか[p]

[chara_hide_all]
[mask time=1000]
[mask_off time=1000]
;食べる立ち絵
[chara_show name="Do" face="食べる"]
#
・・・[p]

#&f.player_name
ここのカルボナーラ美味しい！[p]
[chara_hide_all]
[chara_show name="Do" face="斜め通常"]
#前Do
そうだな[l][r]
カルボナーラってイタリアではクリーム無いらしいね[p]

#&f.player_name
そうなんだ[p]

[chara_mod name="Do" face="default"]
#前Do
[playse storage="DoGrazie_per_il_tuo_pasto.m4a"]
[delay speed=150]Grazie per il tuo pasto[p][resetdelay]

#&f.player_name
...[p]

[chara_mod name="Do" face="斜め笑い"]
#前Do
イタリア語でごちそうさまって意味[p]

#&f.player_name
なるほど？[l][r]
...とりあえず！そろそろ行こ[p]

#前Do
そうだね[l][r]
[chara_mod name="Do" face="叫ぶ"]
すみませーん、会計お願いします[p]

#店員
はーい[l][r]
・・・[p]
合計でお会計2327円になります[p]

[chara_mod name="Do" face="ぼーっと"]
#前Do
2327円ってことは一人1163.5円か[p]
;どや顔立ち絵
[chara_mod name="Do" face="物思い"]
じゃあ僕が1164円払うよ（ドヤ顔）[p]

#&f.player_name
あ...ありがとう[p]

;ジャンプ合流
@jump target="*合流" 


*沖縄そば
[playse storage="移動音.m4a"]
[chara_hide_all]

;定食屋っぽいシーン切り替え
[bg storage=沖縄そばお店.png time=3000]

#&f.player_name
落ち着く雰囲気のお店だね[l][r]
私沖縄そば食べたいな[p]

[chara_show name="Do" face="斜め笑い"]
#前Do
いいね、頼もうか[p]

[chara_hide_all]
[mask time=1000]
[mask_off time=1000]
#
・・・[p]
;マルチで沖縄そばを勧める立ち絵
[chara_show name="Do" face="そば"]
#&f.player_name
ここの沖縄そば美味しい！[p]

#前Do
そうだな[l][r]
10月17日って沖縄そばの日らしいね[p]

#&f.player_name
そうなんだ[p]

[chara_hide_all]
[chara_show name="Do" face="default"]
#前Do
[playse storage="Doくわっちーさびたん.m4a" volume=100]
[delay speed=150]くわっちーさびたん[p][resetdelay]

#&f.player_name
...[p]

[chara_mod name="Do" face="斜め笑い"]
#前Do
沖縄の方言でごちそうさまって意味[p]

#&f.player_name
なるほど？[l][r]
...とりあえず！そろそろ行こ[p]

#前Do
そうだね[l][r]
[chara_mod name="Do" face="叫ぶ"]
すみませーん、会計お願いします[p]

#店員
はーい[l][r]
・・・[p]
合計でお会計2327円になります[p]

[chara_mod name="Do" face="ぼーっと"]
#前Do
2327円ってことは一人1163.5円か[p]
;どや顔立ち絵
[chara_mod name="Do" face="物思い"]
じゃあ僕が1164円払うよ（ドヤ顔）[p]

#&f.player_name
あ...ありがとう[p]

;ジャンプ合流
@jump target="*合流" 

*お好み焼き
[playse storage="移動音.m4a"]
[chara_hide_all]

;お好み焼き屋っぽいシーン切り替え
[bg storage=お好み焼きお店.png time=3000]

#&f.player_name
大阪って感じのお店！[l][r]
私お好み焼き食べたいな[p]

[chara_show name="Do" face="斜め笑い"]
#前Do
いいね、頼もうか[p]

[chara_hide_all]
[mask time=1000]
[mask_off time=1000]
#
・・・[p]
;お好み焼きを食べる立ち絵
[chara_show name="Do" face="食べる"]

#&f.player_name
ここのお好み焼き美味しい！[p]

[chara_hide_all]
[chara_show name="Do" face="斜め通常"]
#前Do
そうだな[p]
お好み焼きとモダン焼きの違いってお好み焼きは生地、具材、麺を別々で調理して最後に重ね焼きしたもので、モダン焼きは生地と具材を混ぜ込んだものに面を挟んで焼いたものみたいね[p]

#&f.player_name
そうなんだ...[p]

#前Do
ごちそうさまでした[p]

#&f.player_name
ごちそうさまでした[l][r]
そろそろ行こうか[p]

#前Do
そうだね[l][r]
[chara_mod name="Do" face="叫ぶ"]
すみませーん、会計お願いします[p]

#店員
はーい[l][r]
・・・[p]
合計でお会計2327円になります[p]

[chara_mod name="Do" face="ぼーっと"]
#前Do
2327円ってことは一人1163.5円か[p]
;どや顔立ち絵
[chara_mod name="Do" face="物思い"]
じゃあ僕が1164円払うよ（ドヤ顔）[p]

#&f.player_name
あ...ありがとう[p]

;ジャンプ合流
@jump target="*合流" 


*合流
[playse storage="移動音.m4a"]
[chara_hide_all]

;外へシーン切り替え
[bg storage=キャンパス.jpg time=3000]
#
（その後、他の聖地も巡り大学に戻った）[p]

[chara_show name="Do" face="左上"]
#前Do
楽しかったね[p]

#&f.player_name
うん[p]

#前Do
次回はどこへ行こうか[p]

#&f.player_name
え...[p]

[chara_mod name="Do" face="default"]
#前Do
ドライブしようよ[p]

#&f.player_name
う...うん、楽しみにしてるね[p]

[chara_hide_all]
#
;黒の背景
[bg storage=black.png time=1000]
;メッセージウィンドウの設定
[position layer="message0" left=100 top=100 width=1060 height=500 page=fore visible=true]
;メッセージ出力位置の設定
[position layer=message0 page=fore margint="50" marginl="80" marginr="80" marginb="100"]


Chapter 4　：　友達　クリア[p]
[cm]
;Chapter 5へ
@jump storage="taikenban.ks"