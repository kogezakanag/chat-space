== README

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


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

# database design
## group

|column|type|option|
|:--|:--|:--|
|name|text|null: false|
|member_id|integer|add_index <br> foreign_key: true|

belongs_to :groups_users  
has_many :messages

## groups_users

|column|type|option|
|:--|:--|:--|
|group_id |integer|add_index <br> foreign_key: true|
|user_id|integer|add_index <br> foreign_key: true|

has_many :users  
has_many :groups

## user

|column|type|option|
|:--|:--|:--|
|name|string|null: false|
|email|text|null: false <br> unique: true|

belongs_to :groups_users  
has_many :messages

## message

|column|type|option|
|:--|:--|:--|
|body|text|none|
|image|string|none|
|group_id|integer|add_index <br> foreign_key: true|
|user_id|integer|add_index <br> foreign_key: true|

belongs_to :user  
belongs_to :group

