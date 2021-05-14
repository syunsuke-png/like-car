## テーブル設計

## carsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| car_name | string     | null: false                    |
| text     | text       | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association
- has_many :comments
- belongs_to :user

## commentsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| cars   | references | null: false, foreign_key: true |

### Association
- has_many :users
- has_many :cars

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| barth_day          | date   | null: false               |

- belongs_to :car
- belongs_to :comment
## アプリケーション名
## like-car

## アプリケーション概要
## 車の写真を投稿して他者が投稿した画像にコメントをできる

## アプリケーションのURL
## https://like-car.herokuapp.com/

## Basic認証
## admin
## 2222

## テスト用アカウント
## ユーザー名 aaa@aaa.com
## パスワード aaaaaa
## ユーザー名 bbb@bbb.com
## パスワード bbbbbb

## 利用方法
## ログインして写真を投稿する時に画像とその車の名前、その車のこだわりのポイントを記述したら投稿できる。 その画像を投稿した本人でないと編集、削除できない。　ログインしていないとコメントをすることができない

## 目指した課題解決
## 今の時代地球環境や車離れで車ずきが減っていく中好きな方もまだまだいるのでそんな方々に自分の愛車を投稿してみんなに見てもらうことができるアプリケーション

## ログイン
## [![Image from Gyazo](https://i.gyazo.com/984c2b393afa1bcfb45ddc7db7de417f.gif)](https://gyazo.com/984c2b393afa1bcfb45ddc7db7de417f)

## 投稿機能
## [![Image from Gyazo](https://i.gyazo.com/ce3973471913bb13871e710d2a0e44d3.gif)](https://gyazo.com/ce3973471913bb13871e710d2a0e44d3)

## 削除機能
## [![Image from Gyazo](https://i.gyazo.com/aae873f9cb33e968c7b8724c37611a81.gif)](https://gyazo.com/aae873f9cb33e968c7b8724c37611a81)

## 編集機能
## [![Image from Gyazo](https://i.gyazo.com/4c32719b7dad1faf6b5ac031802c8a29.gif)](https://gyazo.com/4c32719b7dad1faf6b5ac031802c8a29)

## コメント機能
## [![Image from Gyazo](https://i.gyazo.com/437cc3028191bc41c6b3265b4f51990a.gif)](https://gyazo.com/437cc3028191bc41c6b3265b4f51990a)

## ログインしていないとコメントできない
## [![Image from Gyazo](https://i.gyazo.com/6e3c2b6a1183e081198d79542dfbfd15.gif)](https://gyazo.com/6e3c2b6a1183e081198d79542dfbfd15)

## 画像を投稿した本人でないと編集、削除できない
## [![Image from Gyazo](https://i.gyazo.com/53ebab49daf3afed2ce6fe33508fa095.gif)](https://gyazo.com/53ebab49daf3afed2ce6fe33508fa095)

## スプレットシート
## https://docs.google.com/spreadsheets/d/182bdRUbUReeHliHu4DbB5tlVZLsnIvNMJGtCUUkH6v0/edit?usp=sharing