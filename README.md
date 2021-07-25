# README

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

* ...

・アプリ名[steleo]  
本番環境  
https://steleo.herokuapp.com/  
ユーザー名:admin  
パスワード:2222  



・概要  
サインインしたユーザーが動画を投稿できて、誰でもその投稿動画を視聴できる。  
・制作背景(意図)  
誰でも視聴・投稿できるラジオアプリを作ろうと思った。
課題や不便な点はspoonというアプリを参考にして、生配信でかつ入室やコメントの通知が来るため進行が難しくなっていると考え、動画形式で完成品を投稿する形にしようと思った。
また、動画形式にすることで告知などを見やすくまとめられると考えた。  
・DEMO  
動画視聴
[![Image from Gyazo](https://i.gyazo.com/f8375e89ce49168a77f7c2b7f5e72dc6.gif)](https://gyazo.com/f8375e89ce49168a77f7c2b7f5e72dc6)  
動画投稿
[![Image from Gyazo](https://i.gyazo.com/b2abfca9ea530ba3bd3830b85d9b9f25.gif)](https://gyazo.com/b2abfca9ea530ba3bd3830b85d9b9f25)  
・実装予定の内容について
youtubeでいうところのチャンネル登録機能及びマイページの実装
動画に対するコメント欄の開設
いいね機能や視聴回数の表示
おすすめユーザーの表示
idやカテゴリー別検索機能  
・DB設計

## usersテーブル

| Column            | Type   | Options                 |
| ----------------- | ------ | ----------------------- |
| nickname          | string | null: false             |
| email             | string | null: false,unique: true|
| encrypted_password| string | null: false             |
| identification    | string | null: false             |
| birthday          | date   | null: false             |




### Association

- has_many :lives


## livesテーブル

| Column            | Type      | Options          |
| ----------------- | --------- | ---------------- |
| title             | string    | null: false      |
| category_id       | string    | null: false      |
| atmosphere_id     | string    | null: false      |
| user              | references| foreign_key: true|




### Association

- belongs_to :user


