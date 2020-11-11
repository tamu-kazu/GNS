# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :posts
- has_many :comments
- has_many :videos

## posts テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| first_half_score  | integer    | null: false                    |
| second_half_score | integer    | null: false                    |
| total_score       | integer    | null: false                    |
| golf_course       | string     | null: false                    |
| date              | date       | null: false                    |
| user              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |
| text   | string     | null: false                    |

### Association

- belongs_to :user
- belongs_to :post

## videos テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| introduction | text       | null: false                    |

### Association

- belongs_to :user

# アプリケーションの概要

### アプリケーション名 
GNS
### URL
https://gns-30437.herokuapp.com/
### テスト用アカウント
メールアドレス：tech@camp

パスワード：tamukazu
### 利用方法
新規登録を行い、ログインしてもらうとスコアや画像、動画を投稿することができます。
### 目指した課題解決
若者のゴルフ人口の増加
