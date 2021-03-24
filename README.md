# テーブル設計

## memosテーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| title          | string     | null: false                    |
| memo           | text       |                                |
| category_id    | integer    | null: false                    |
| day_id         | integer    | null: false, foreign_key: true |
| deadline_id    | integer    |                                |
