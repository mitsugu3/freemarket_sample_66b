# README

# フリマアプリ DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|address|string|null: true|
|last_name|string|null: false|
|first_name|string|null: false|
### Association
- has_many :carts dependent:destroy
- has_many :cards dependent:destroy
- has_many :likes dependent:destroy
- has_many :products dependent:destroy

## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|customer_id|string|null: false|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to:user

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|name|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|
|brand_id|references|null: false|
|condition|string|null: false|
|price|integer|null: false|
|area|integer|null: false|
|status|string|null: false|
|comment|text|null: false|
|delivery_user|string|null: false|
|delivery_method|string|null: false|
|delivery_money|integer|null: false|
### Association
- belongs_to :cart dependent:destroy
- belongs_to :category
- belongs_to :brand
- has_many :photos dependent:destroy
- has_many :comment dependent:destroy


## cartsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|products_id|references|null: false, foreign_key: true|
|products_name|string|null: false|
|money|integer||
### Association
- belongs_to :user
- has_many :products

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|products_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :product

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|ancestry|
### Association
- has_many :products

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
### Association
- has_many :products

## photosテーブル
|Column|Type|Options|
|------|----|-------|
|photo|string|
### Association
- belongs_to :product

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|comment_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user 
- belongs_to :product