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

