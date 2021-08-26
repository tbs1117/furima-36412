# データベース設計

## users テーブル

| Column             | Type   | Options     |
|--------------------|--------|-------------|
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| family_name        | string | null: false |
| first_name         | string | null: false |
| family_name_kana   | string | null: false |
| first_name_kana    | string | null: false |
| birth_year         | string | null: false |
| birth_month        | string | null: false |
| birth_day          | string | null: false |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column          | Type       | Options                        |
|-----------------|------------|--------------------------------|
| name            | string     | null: false                    |
| category        | string     | null: false                    |
| price           | string     | null: false                    |
| image           | string     | null: false                    |
| explanation     | string     | null: false                    |
| condition       | string     | null: false                    |
| shipping        | string     | null: false                    |
| shipment_source | string     | null: false                    |
| shipping_days   | string     | null: false                    |
| user            | references | null: false, foreign_key: true |
| order           | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :order

##orders テーブル

| Column           | Type       | Options                        |
|------------------|------------|--------------------------------|
| buyer            | string     | null: false                    |
| shipping_address | string     | null: false                    |
| card_number      | string     | null: false                    |
| expiration       | string     | null: false                    |
| security         | string     | null: false                    |
| name             | string     | null: false                    |
| image            | string     | null: false                    |
| price            | string     | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
