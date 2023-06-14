class Boxing < ActiveHash::Base
  self.data = [
    { id: 1, name: '実施内容' },
    { id: 2, name: '初級コンビネーション' },
    { id: 3, name: '上級コンビネーション' },
  ]

  include ActiveHash::Associations
  has_many :trainings
end
