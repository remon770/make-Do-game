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
[bg storage=家.png time=3000]

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

#？？？
よう！[p]

#&f.player_name
！[p]

;前Do登場
#前Do
五年ぶりだな[p]

#&f.player_name
おはよう[p]

#前Do
じゃあ行こうか[p]

;水族館にシーン切り替え
#
それから2人でテレビ番組の聖地巡りをした[p]

#前Do
あのシーン再現しようよ[p]

;Gの立ち絵に切り替え
ゴキブリ〜[l][r]
;フンコロガシの立ち絵に切り替え
フンコロガシ〜[p]

#
二人は水族館を楽しんだ[p]

;街中にシーン切り替え
#前Do
そろそろご飯食べようか[l][r]
何食べたい？[l]

;選択肢 : イタリアン, 沖縄そば, お好み焼き
[glink  color="blue"  storage="4.ks"  size="28"  x="360"  width="500"  y="150"  text="イタリアン"  target="*イタリアン"  ]
[glink  color="blue"  storage="4.ks"  size="28"  x="360"  width="500"  y="250"  text="沖縄そば"  target="*沖縄そば"  ]
[glink  color="blue"  storage="4.ks"  size="28"  x="360"  width="500"  y="350"  text="お好み焼き"  target="*お好み焼き" ]
[s]


*イタリアン
;おしゃれなお店にシーン切り替え
#&f.player_name
おしゃれなお店だね[l][r]
私カルボナーラ食べたいな[p]

#前Do
いいね、頼もうか[p]

#
・・・[p]
;カルボナーラを食べる立ち絵
#&f.player_name
ここのカルボナーラ美味しい！[p]

#前Do
そうだな[l][r]
カルボナーラってイタリアではクリーム無いらしいね[p]

#&f.player_name
そうなんだ[p]

#前Do
Grazie per il tuo pasto[p]

#&f.player_name
...[p]

#前Do
イタリア語でごちそうさまって意味[p]

#&f.player_name
なるほど？[l][r]
...とりあえず！そろそろ行こ[p]

#前Do
そうだね[l][r]
すみませーん、会計お願いします[p]

#店員
はーい[l][r]
・・・[p]
合計でお会計2327円になります[p]

#前Do
2327円ってことは一人1163.5円か[p]
;どや顔立ち絵
じゃあ僕が1164円払うよ（ドヤ顔）[p]

#&f.player_name
あ...ありがとう[p]

;ジャンプ合流
@jump target="*合流" 


*沖縄そば
;定食屋っぽいシーン切り替え
#&f.player_name
落ち着く雰囲気のお店だね[l][r]
私沖縄そば食べたいな[p]

#前Do
いいね、頼もうか[p]

#
・・・[p]
;マルチで沖縄そばを勧める立ち絵
#&f.player_name
ここの沖縄そば美味しい！[p]

#前Do
そうだな[l][r]
10月17日って沖縄そばの日らしいね[p]

#&f.player_name
そうなんだ[p]

#前Do
くわっちーさびたん[p]

#&f.player_name
...[p]

#前Do
沖縄の方言でごちそうさまって意味[p]

#&f.player_name
なるほど？[l][r]
...とりあえず！そろそろ行こ[p]

#前Do
そうだね[l][r]
すみませーん、会計お願いします[p]

#店員
はーい[l][r]
・・・[p]
合計でお会計2327円になります[p]

#前Do
2327円ってことは一人1163.5円か[p]
;どや顔立ち絵
じゃあ僕が1164円払うよ（ドヤ顔）[p]

#&f.player_name
あ...ありがとう[p]

;ジャンプ合流
@jump target="*合流" 

*お好み焼き
;お好み焼き屋っぽいシーン切り替え
#&f.player_name
大阪って感じのお店！[l][r]
私お好み焼き食べたいな[p]

#前Do
いいね、頼もうか[p]

#
・・・[p]
;お好み焼きを食べる立ち絵
#&f.player_name
ここのお好み焼き美味しい！[p]

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
すみませーん、会計お願いします[p]

#店員
はーい[l][r]
・・・[p]
合計でお会計2327円になります[p]

#前Do
2327円ってことは一人1163.5円か[p]
;どや顔立ち絵
じゃあ僕が1164円払うよ（ドヤ顔）[p]

#&f.player_name
あ...ありがとう[p]

;ジャンプ合流
@jump target="*合流" 


*合流
;外へシーン切り替え
#
（その後、他の聖地も巡り大学に戻った）[p]

#前Do
楽しかったね[p]

#&f.player_name
うん[p]

#前Do
次回はどこへ行こうか[p]

#&f.player_name
え...[p]

#前Do
ドライブしようよ[p]

#&f.player_name
う...うん、楽しみにしてるね[p]

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
@jump storage="5.ks"