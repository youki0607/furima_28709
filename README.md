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

# テーブル設計

## active_hashがちゃんと作られているのか分かりません。
## active_hashをgemfileで導入するまでは上手くいったのですが、その後に「rails g model --skip-migration」をした後に「rails g model」でArticleモデルを作成しました。先に「rails g model」を作成した方が良かったのでしょうか。

## users テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| nickname         | string  | null: false |
| email            | string  | primary_key |
| password         | string  | null: false |
| family_name      | string  | null: false |
| first_name       | string  | null: false |
| family_name_kana | string  | null: false |
| first_name_kana  | string  | null: false |
| birthday         | date    | null: false |

### Association

- has_many :items
- has_many :buys



## items テーブル

| Column   | Type    | Options                        |
| -------- | ------- | ------------------------------ |
| name     | string  | null: false                    |
| image    | string  | null: false, foreign_key: true |
| text     | text    | null: false                    |
| price    | integer | null: false                    |
| category | string  | null: false                    |
| status   | string  | null: false                    |
| postage  | string  | null: false                    |
| user_id  | integer | null: false, foreign_key: true |
| address  | string  | null: false                    |

### Association

- belongs_to :user
- has_one :buy



## buys テーブル

| Column            | Type       | Options           |
| ----------------- | ---------- | ----------------- |
| user_id | integer | null: false, foreign_key: true |

### Association

- belongs_to :user