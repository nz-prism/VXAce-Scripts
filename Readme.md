# RPGツクールVXAce用スクリプト素材

## 概要
RPGツクールVXAce用に私（[んーぞー@nz_prism](https://twitter.com/nz_prism)）が作成したスクリプト素材は全てこのリポジトリにて公開されており、以下のライセンスにてご利用いただけます。

## ライセンス
公開しているすべてのスクリプト素材はMITライセンスにてリリースされています。  
https://opensource.org/licenses/mit-license.php

***

# トロッコ搭乗(Cart.rb)

## 概要
マップに敷いたレール上に配置したトロッコを調べると、自動的にレールに沿って走り出すプラグインです。
グラフィックもトロッコに乗った状態に変化します。  
Dataフォルダの内容はサンプルプロジェクトのデータになっておりますので、下記手順にて新規プロジェクトにコピーしてお使いください。  
その他使用方法の詳細についてはスクリプト上部の説明文をお読みください。

![Cart](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/Cart.png)

## 導入方法
1. RPGツクールVXAceで新規プロジェクトを作成してください。
1. **Data**フォルダの中身をすべて**1**の**Data**フォルダにコピー（既存ファイルと置き換え）してください。
1. **1**をRPGツクールVXAceで開き、スクリプトエディタにて「**▼ 素材**」の「**( ここに追加 )**」以下に新規セクションを挿入してください。
1. **3**のセクションにCart.rbの内容をすべて貼り付けてください。
1. テストプレイで動作を確認してください。
1. ご自身のプロジェクトにて使用する際は、トロッコの始点イベントと終点イベントをサンプルマップからコピーしてお使いください。  

***

# 名前入力改造(NameInput.rb)

## 概要
アクターの名前に関する機能を追加するスクリプト素材です。  
以下の2つの機能を持っています。
1. 名前入力画面にて漢字を入力可能にする
1. アクターに姓を設定可能にする

![NameInput1](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/NameInput1.png)

![NameInput2](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/NameInput2.png)

通常はアクターの名が表示されますが、ステータス画面ではフルネームで表示されます。専用制御文字を使用することでメッセージに姓・名・フルネームをそれぞれ表示することも可能です。  

![NameInput3](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/NameInput3.png)

![NameInput4](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/NameInput4.png)

また、アクターごとに姓と名の順番を入れ替えることも可能です。  
こうしたフルネームに関する設定はデータベース上であらかじめアクターに設定しておくこともできますし、入力画面にてプレイヤーが設定することも可能です。  
なお姓の設定が不要であればオフにすることもできます。その場合、このスクリプトの漢字入力機能だけを利用できます。

![NameInput5](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/NameInput5.png)

その他使用方法の詳細についてはスクリプト上部の説明文をお読みください。

***

# オプション画面(Option.rb)

## 概要
メニュー項目としてオプションコマンドを追加します。また、斜め移動やカーソルの記憶など、ゲーム上の実際の機能も追加されます。  
主として以下の機能及びそれに対応するオプション項目があります。

- オートダッシュ
- ダッシュ速度変更
- 斜め移動
- メッセージ瞬間表示
- カーソルの記憶
- ウィンドウカラーの変更
- ウィンドウ透明度の変更
- ウィンドウスキンの変更
- BGM・ME音量変更
- BGS・SE音量変更
- 全てのオプションの値をデフォルトに戻す

![Option](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/Option.png)

その他使用方法の詳細についてはスクリプト上部の説明文をお読みください。

***

# あらすじ拡張(StoryPlus.rb)

## 概要
メニュー画面に「あらすじ」を追加します。あらすじは、ストーリー進行度変数に応じて表示するテキストを切り替えられます。

![NameInput3](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/NameInput3.png)

![StoryPlus1](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/StoryPlus1.png)

![StoryPlus2](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/StoryPlus2.png)

その他使用方法の詳細についてはスクリプト上部の説明文をお読みください。

***

# 未使用素材隔離(UnusedMaterialIsolation.rb)

## 概要
プロジェクトフォルダ内に存在するが、実際のゲーム中で一度も使用されない画像・音声素材を別フォルダに隔離します。使用前は必ずバックアップをお取りください。  
このスクリプトを導入するとテストプレイ時、メニューの「ゲーム終了」から「シャットダウン」を選択すると画像・音声素材で、テストプレイ中実際に使用された素材のファイル名がリストアップされたテキストファイル**UsedGraphics.txt**および**UsedAudio.txt**が作成されます。  
テストプレイ時、メニューの「ゲーム終了」から「未使用素材を隔離して終了」を選択すると、上記テキストファイルにない画像・音声素材が**UnusedMaterials**フォルダ内の画像・音声用フォルダに隔離されます。また上記テキストファイルもそれぞれのフォルダ内に移動します。  
テキストファイルに書き込まれる素材ファイル名はあくまでもテストプレイ中実際に使用された素材のみです。そのため例えばエンディングに使用される素材は、テストプレイ中実際にエンディングを迎えない限り書き込まれることはない、という点にご注意ください。

![UnusedMaterialIsolation1](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/UnusedMaterialIsolation1.png)

![UnusedMaterialIsolation2](https://github.com/nz-prism/VXAce-Scripts/blob/master/ReadmeImages/UnusedMaterialIsolation2.png)

その他使用方法の詳細についてはスクリプト上部の説明文をお読みください。