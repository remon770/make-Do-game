*start
;変数初期設定
[eval exp="f.gakubu = '工学部'"]
[eval exp="f.player_name = 'たいき'"]

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

;キャラクターyamatoの設定(仮)
[chara_new name="yamato" storage="chara/yamato/normal.png" jname="やまと" ]
;キャラクターの表情登録
[chara_face name="yamato" face="angry" storage="chara/yamato/angry.png"]
[chara_face name="yamato" face="happy" storage="chara/yamato/happy.png"]
[chara_face name="yamato" face="sad" storage="chara/yamato/sad.png"]
[chara_face name="yamato" face="tohoho" storage="chara/yamato/tohoho.png"]
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

