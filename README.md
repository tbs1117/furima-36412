# データベース設計

## users テーブル

| Column             | Type   | Options                  |
|--------------------|--------|--------------------------|
| nickname           | string | null: false              |
| email              | string | null: false, unique:true |
| encrypted_password | string | null: false              |
| family_name        | string | null: false              |
| first_name         | string | null: false              |
| family_name_kana   | string | null: false              |
| first_name_kana    | string | null: false              |
| date               | string | null: false              |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| name_id            | integer    | null: false                    |
| category_id        | integer    | null: false                    |
| price              | integer    | null: false                    |
| explanation        | text       | null: false                    |
| condition_id       | integer    | null: false                    |
| shipping_id        | integer    | null: false                    |
| shipment_source_id | integer    | null: false                    |
| shipping_days_id   | integer    | null: false                    |
| user_id            | references | null: false, foreign_key: true |
| order              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :order

## buyers テーブル

| Column           | Type       | Options                        |
|------------------|------------|--------------------------------|
| buyer            | string     | null: false                    |
| postal_code      | string     | null: false                    |
| prefectures      | string     | null: false                    |
| address          | string     | null: false                    |
| building_name    | string     | null: false                    |
| number           | string     | null: false                    |
| user_id          | references | null: false, foreign_key: true |
| item_id          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
