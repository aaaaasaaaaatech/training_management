# README

# テーブル設計

## users テーブル
|Column         |Type       |Options                        |
|---------------|-----------|-------------------------------|
|name           |string     |null: false                    |
|email          |string     |null: false                    |

### Association
has_many :trainings

## trainings テーブル
|Column         |Type       |Options                        |
|---------------|-----------|-------------------------------|
|user           |references |null: false, foreign_key: true |
|boxing_id      |integer    |null: false                    |

### Association
belongs_to :user

## youtube_lists テーブル

準備中

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

# アプリケーション名
 Training Management

# アプリケーション概要 
･家庭用フィットネスゲームの実施を記録アプリ  
･自分の好きなYouTubeの動画をリスト化して､実施した筋トレ等を記録するアプリ(今後実装予定)


# URL
https://training-management-owm3.onrender.com/

# テスト用アカウント 
メールアドレス:asa@gmail.com  
パスワード:boxing01

# 利用方法 
新規会員登録→記録の投稿→記録の編集･削除

# アプリケーションを作成した背景
フィットネスゲームや､自分が好きな筋トレ等の動画をリスト化して､自分で何を実施したのかをスマホ等で管理できる機能がほしいと思い作成に至った

# 洗い出した要件
 https://docs.google.com/spreadsheets/d/1yBcflpxmBnGDoCnEjOmfeviiRFU3gKklY3cNG9Zb60g/edit#gid=982722306

# 実装予定の機能
･Google APIを使った ログイン機能の追加  
･YouTube動画をリスト化して､YouTubeの動画で実施した筋トレ等を投稿する機能    
･カレンダー機能を用意して､カレンダーをクリックすると投稿済みの記録を見られるようにすること  
･詳細ページの用意  
･ユーザー情報の編集画面と､好きなYouTube動画をユーザー自身で登録と編集ができる機能とビューの用意

# アプリのGIF(現在実装済みのもの) 
ユーザー登録とログイン  
[![Image from Gyazo](https://i.gyazo.com/0c3d25790e478e39389d8d05238a6040.gif)](https://gyazo.com/0c3d25790e478e39389d8d05238a6040)

新規投稿  
[![Image from Gyazo](https://i.gyazo.com/b2b8034b462f46f89f288116553096f5.gif)](https://gyazo.com/b2b8034b462f46f89f288116553096f5)

投稿した最新のものが左上に来る  
[![Image from Gyazo](https://i.gyazo.com/07ca698f8ca19ffb90603b2db89ea2ff.gif)](https://gyazo.com/07ca698f8ca19ffb90603b2db89ea2ff)

編集  
[![Image from Gyazo](https://i.gyazo.com/2ad709a41253d11dc5b7ca39adc79e25.gif)](https://gyazo.com/2ad709a41253d11dc5b7ca39adc79e25)

削除  
[![Image from Gyazo](https://i.gyazo.com/ef0a5690cf35600b85bc4f33e7e864e6.gif)](https://gyazo.com/ef0a5690cf35600b85bc4f33e7e864e6)
 

# データベース設計図
[![Image from Gyazo](https://i.gyazo.com/296287b35df8187af791e571addb6268.png)](https://gyazo.com/296287b35df8187af791e571addb6268)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/c9efad318bcebc1eb0815f0a88b448a2.png)](https://gyazo.com/c9efad318bcebc1eb0815f0a88b448a2)

# 開発環境
 Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

# ローカルでの動作方法
 git clone後、ターミナルでrails sコマンドにて起動

# 工夫したポイント 
･まずは自分が欲しい機能を実装したアプリを作ることを目標としていた｡  
･最終課題で取り組んだスケジュール､作業工程を参考に､オリジナルアプリに取り組んだ｡
