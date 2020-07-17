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




## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|color|  integer|null: false, foreign_key: true|
|colorTitle|  integer|null: false, foreign_key: true|
|comment|
|user_id|
|song_id|

### Association
- belongs_to :songs
- belongs_to :users



## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|
|email|
|password|
|song_id|

### Association
- has_many :images
- has_many :users_songs



## users_songsテーブル

|Column|Type|Options|
|------|----|-------|
|users_id|
|song_id|

### Association
- belongs_to :users
- belongs_to :songs



## songsテーブル

|Column|Type|Options|
|------|----|-------|
|song|

### Association
- has_many :images
- has_many :users_songs
- has_many :songs_discs



## songs_discsテーブル

|Column|Type|Options|
|------|----|-------|
|song_id|
|disc_id|

### Association
- belongs_to :songs
- belongs_to :disc



## discsテーブル

|Column|Type|Options|
|------|----|-------|
|disc|

### Association
- has_many :songs_discs
