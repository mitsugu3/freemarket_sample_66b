# README

# フリマアプリ DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|string|null: false, add_index: true|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|address|string|null: true|
|last_name|string|null: false|
|first_name|string|null: false|
### Association
- has_many :carts
- has_many :cards


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|customer_id|string|null: false|
|card_id|string|null: false|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to:user

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|brand_id|integer|null: false, foreign_key: true|
|condition|string|null: false|
|photo_id|integer|null: false, foreign_key: true|
|price|integer|null: false|
|area|integer|null: false|
|status|string|null: false|
|comment|text|null: false|
|delivery_user|string|null: false|
|delivery_method|string|null: false|
|delivery_money|integer|null: false|
### Association
- belongs_to :cart
- belongs_to :category
- belongs_to :brand
- has_many :photos
- belongs_to :comment

## cartsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|products_id|integer|null: false, foreign_key: true|
|products_name|string|null: false|
|money|integer||
### Association
- belongs_to :user
- has_many :products

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user

## categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
### Association
- has_many :products


## brandテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
### Association
- has_many :products


## photoテーブル
|Column|Type|Options|
|------|----|-------|
|photo_id|string|
### Association
- has_many :products


## commentテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|comment_id|integer|null: false, foreign_key: true|
|created_at|timestamp|null: false|
### Association
- belongs_to :user
- belongs_to :product

