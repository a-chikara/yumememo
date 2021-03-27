class Deadline < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1week' },
    { id: 3, name: '1month' },
    { id: 4, name: '3month' },
    { id: 5, name: '6month' },
    { id: 6, name: '1year' },
    { id: 7, name: '3years' },
    { id: 8, name: '5years' },
    { id: 9, name: '10years' },
    { id: 10, name: 'Other' },
  ]


  include ActiveHash::Associations
  has_many :memos

  end