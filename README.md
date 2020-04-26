# README
aaaa
# フリマアプリ DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
### Association
- has_many :addresses dependent:destroy
- has_many :comments dependent:destroy
- has_many :carts dependent:destroy
- has_many :cards dependent:destroy
- has_many :likes dependent:destroy
- has_many :products dependent:destroy

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|zip_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|town|string|null: false|
|house_number|string|null: false|
|building_name|string|null: false|
### Association
- belongs_to:user

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
|name|string|null: false|
|description|text|null: false| #追加
|category_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
|condition|string|null: false|
|delivery_user|string|null: false| #送料負担
|delivery_method|string|null: false| #発送方法
|area|integer|null: false|
|delivery_days|string|null: false|#追加 発送までの日数
|price|integer|null: false|
|status|string|null: false|#削除
|comment|text|null: false|#削除
|delivery_money|integer|null: false|#削除
### Association
- belongs_to :cart dependent:destroy
- belongs_to :category
- belongs_to :brand
- has_many :photos dependent:destroy
- has_many :comments dependent:destroy


## cartsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|product_id|references|null: false, foreign_key: true|
|money|integer|
### Association
- belongs_to :user
- belongs_to :product

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|product_id|references|null: false, foreign_key: true|
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
|product_id|references|null: false, foreign_key: true|
### Association
- belongs_to :product

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|product_id|references|null: false, foreign_key: true|
|text|string|null: false|
### Association
- belongs_to :user 
- belongs_to :product
