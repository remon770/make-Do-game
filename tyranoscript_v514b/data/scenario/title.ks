*start
*title
;BGM
[playbgm storage="Bright_Lights（タイトル用）.mp3" volume=10]

;メッセージレイヤを非表示にしておく
@layopt layer=message0 visible=false

;背景画像を設定
[image layer="base" page="fore" storage=Doのtitle.png]

[locate x=320 y=400 ]
[button graphic="title/button_start3.png" enterimg="title/button_start2.png" enterse="ボタン音.mp3" target=*first]

[locate x=680 y=400 ]
[button graphic="title/button_load3.png" enterimg="title/button_load2.png" enterse="ボタン音.mp3" target=*loadmenu]

[s]

;つづきからボタンが押された場合。ロード画面を表示
*loadmenu
[cm]
[showload]

[jump target=*title]
[s]

;ストーリー最初から
*first
[playse storage="Do結婚したのか〜.m4a"]
[fadeoutbgm]
[cm]
[wait time=1000]
@jump storage="1.ks"



