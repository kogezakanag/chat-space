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
## group-table

|column|type|option|
|:--|:--|:--|
|name|text|none|
|member_id|integer|add_index|

## member-table

|column|type|option|
|:--|:--|:--|
|group_id |integer|add_index|
|user_id|integer|add_index|

## user-table

|column|type|option|
|:--|:--|:--|
|name|string|none|
|email|text|none|

## message-table

|column|type|option|
|:--|:--|:--|
|body|text|none|
|image|string|none|
|group_id|integer|add_index
|user_id|integer|add_index
