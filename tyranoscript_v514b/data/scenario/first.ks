*start
;変数初期設定
[eval exp="f.gakubu = '工学部'"]
[eval exp="f.player_name = 'たいき'"]

;キャラクターの明暗設定
[chara_config brightness=40 talk_focus=brightness]

;キャラクターDoの設定
[chara_new name="Do" storage="chara/Do/Do通常.png" jname="前Do" ]
;キャラクターの表情登録
[chara_face name="Do" face="スマホ" storage="chara/Do/Doスマホ.png"]
[chara_face name="Do" face="スマホ2" storage="chara/Do/Doスマホ2.png"]
[chara_face name="Do" face="ぼーっと" storage="chara/Do/Doボーと.png"]
[chara_face name="Do" face="下笑い" storage="chara/Do/Do下笑い.png"]
[chara_face name="Do" face="左" storage="chara/Do/Do左.png"]
[chara_face name="Do" face="左上" storage="chara/Do/Do左上.png"]
[chara_face name="Do" face="斜め笑い" storage="chara/Do/Do斜め笑い.png"]
[chara_face name="Do" face="斜め通常" storage="chara/Do/Do斜め通常.png"]
[chara_face name="Do" face="座りパソコン" storage="chara/Do/Do座りパソコン.png"]
[chara_face name="Do" face="物思い" storage="chara/Do/Do物思い.png"]
[chara_face name="Do" face="全体正面" storage="chara/Do/Do全体正面.png"]
[chara_face name="Do" face="全体顔隠し" storage="chara/Do/Do全体顔隠し.png"]
[chara_face name="Do" face="叫ぶ" storage="chara/Do/Do叫ぶ.png"]
[chara_face name="Do" face="シルエット通常" storage="chara/Do/Do通常シルエット.png"]
[chara_face name="Do" face="走る" storage="chara/Do/Do走る.PNG"]
[chara_face name="Do" face="ねころび" storage="chara/Do/Doねころび.png"]
[chara_face name="Do" face="ねころび横驚き" storage="chara/Do/Doねころび横驚き.png"]
[chara_face name="Do" face="顔面崩壊" storage="chara/Do/Do顔面スタンプ元.png"]
[chara_face name="Do" face="歌う" storage="chara/Do/Doマイク歌う正面.png"]
[chara_face name="Do" face="座る" storage="chara/Do/Doマイク座る.png"]
[chara_face name="Do" face="赤全身" storage="chara/Do/Do赤服全身.png"]
;[chara_face name="Do" face="" storage="chara/Do/Do.png"]

;先輩1の設定
[chara_new name="senpai" storage="chara/boy/いかつい男正面.PNG" jname="ムキムキ先輩" ]
;先輩1の立ち絵
[chara_face name="senpai" storage="chara/boy/いかつい男斜め.PNG" face="斜め"]
[chara_face name="senpai" storage="chara/boy/いかつい男帽子.PNG" face="帽子"]

;先輩2の設定
[chara_new name="senpai2" storage="chara/syuukyou_boy/指差し.png" jname="うるさい先輩" ]
;先輩2の立ち絵
[chara_face name="senpai2" storage="chara/syuukyou_boy/あちゃー.png" face="あちゃー"]
[chara_face name="senpai2" storage="chara/syuukyou_boy/ムスカ.png" face="ムスカ"]
[chara_face name="senpai2" storage="chara/syuukyou_boy/一本指.png" face="一本指"]
[chara_face name="senpai2" storage="chara/syuukyou_boy/五本指.png" face="五本指"]
[chara_face name="senpai2" storage="chara/syuukyou_boy/考え.png" face="考え"]
[chara_face name="senpai2" storage="chara/syuukyou_boy/三本指.png" face="三本指"]

[cm]

;実際は下のを動かす。タイトルへ
@jump storage="title.ks"

;テスト用
;@jump storage="1.ks"



;以下は動いてない


;テスト用のジャンプ
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
[chara_config ptext="chara_name_area"]
[bg storage="合格発表.png" time="1500"]
[chara_show name="Do" ]
@jump target=*test


;背景の設定
[bg storage=room.jpg time=3000]

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

;キャラクターDoの設定
[chara_new name="Do" storage="chara/Do/Do通常.png" jname="前Do" ]
;キャラクターの表情登録
[chara_face name="Do" face="スマホ" storage="chara/Do/Doスマホ.png"]
[chara_face name="Do" face="スマホ2" storage="chara/Do/Doスマホ2.png"]
[chara_face name="Do" face="ぼーっと" storage="chara/Do/Doボーと.png"]
[chara_face name="Do" face="下笑い" storage="chara/Do/Do下笑い.png"]
[chara_face name="Do" face="左" storage="chara/Do/Do左.png"]
[chara_face name="Do" face="左上" storage="chara/Do/Do左上.png"]
[chara_face name="Do" face="斜め笑い" storage="chara/Do/Do斜め笑い.png"]
[chara_face name="Do" face="斜め通常" storage="chara/Do/Do斜め通常.png"]
[chara_face name="Do" face="座りパソコン" storage="chara/Do/Do座りパソコン.png"]
[chara_face name="Do" face="物思い" storage="chara/Do/Do物思い.png"]
[chara_face name="Do" face="全体正面" storage="chara/Do/Do全体正面.png"]
[chara_face name="Do" face="全体顔隠し" storage="chara/Do/Do全体顔隠し.png"]
[cm]

