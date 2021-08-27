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
- has_many :buyers

## items テーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| name               | integer    | null: false                    |
| category_id        | integer    | null: false                    |
| price              | integer    | null: false                    |
| explanation        | text       | null: false                    |
| condition_id       | integer    | null: false                    |
| shipping_id        | integer    | null: false                    |
| shipment_source_id | integer    | null: false                    |
| shipping_days_id   | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |
| buyer              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :buyer

## buyers テーブル

| Column           | Type       | Options                        |
|------------------|------------|--------------------------------|
| buyer            | string     | null: false                    |
| name             | integer    | null: false                    |
| item             | references | null: false, foreign_key: true |
| address          | references | null: false, foreign_key: true |

### Association

- has_many :items
- has_one :address

## address テーブル

| Column           | Type       | Options                        |
|------------------|------------|--------------------------------|
| postal_code      | string     | null: false                    |
| prefectures      | string     | null: false                    |
| city             | string     | null: false                    |
| house_number     | string     | null: false                    |
| building_name    | string     | null: false                    |
| telephone_number | string     | null: false                    |
| buyer            | references | null: false, foreign_key: true |

### Association

- belongs_to :buyer