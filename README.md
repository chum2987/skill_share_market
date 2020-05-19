# skill_share_market DB設計

## usersテーブル

|Column|Type|Option|
|------|----|------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|password_connfirmation|string|null: false|
|gender|string|null :false|
|image|string||
|birth|integer|null: false|

### Association
- has_many skill_categories
- has_one address
- belongs_to award
- belongs_to portfolio
- belongs_to qualification
- belongs_to strength

## addressesテーブル

|Column|Type|Option|
|------|----|------|
|zipcode|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|street|string|null: false|
|building|string|null: false|

### Association
- belongs_to user
- belongs_to order
- belongs_to request

## matter_category

|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|ancestry|string||

### Association
- has_many orders
- has_many requests

## ordersテーブル

|Column|Type|Option|
|------|----|------|
|title|string|null: false|
|description|text|null: false|
|category|references|foreign_key: true|

### Association
- belongs_to matter_category
- has_one address

## requestsテーブル

|Column|Type|Option|
|------|----|------|
|title|string|null: false|
|description|text|null: false|
|category|references|foreign_key: true|

### Association
- belongs_to matter_category
- has_one address

## skill_categoriesテーブル

|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|ancestry|string||

### Association
- belongs_to user

## awardsテーブル

|Column|Type|Option|
|------|----|------|
|name|string||
|description|string||

### Association
- has_many users

## potfolioesテーブル

|Column|Type|Option|
|------|----|------|
|name|string||
|image|string||

### Association
- has_many portfolioes

## qualificationsテーブル

|Column|Type|Option|
|------|----|------|
|name|string||

### Association
- has_many users

## sterengthesテーブル

|Column|Type|Option|
|------|----|------|
|name|string||

### Association
- has_many users
