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