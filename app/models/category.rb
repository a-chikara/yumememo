class Category < ActiveHash::Base

  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '旅行' },
    { id: 3, name: '自分' },
    { id: 4, name: '美容' },
    { id: 5, name: '食べ物' },
    { id: 6, name: '欲しいもの' },
    { id: 7, name: '家族、恋人' },
    { id: 8, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :memos
  
  end