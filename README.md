# Vimate_hayashi_version

Vimate is an sns for love vim.

## database design

## users table

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| name        | string | null: false |
| uid         | text   | null: false |
| oauth_token | string | null: false |

### Association

- has_many vimrcs

## vimrcs table

| Column      | Type | Options     |
| ----------- | ---- | ----------- |
| image_url   | text | null: false |
| description | text |             |

### Association

- belongs_to :user

## likes table

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| vimrc_id | integer | null: false |
| user_id  | text    | null: false |

### Association

- belongs_to :vimrc
- belongs_to :user
