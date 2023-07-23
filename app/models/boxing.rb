class Boxing < ActiveHash::Base
  self.data = [
    { id: 1, name: '実施内容' },
    { id: 2, name: '初級コンビネーション' },
    { id: 3, name: '上級コンビネーション' },
    { id: 4, name: '上級コンビネーション2' },
    { id: 5, name: '二の腕シェイプ集中コンビ' },
    # { id: 6, name: '二の腕コンビネーション2' }
  ]


  include ActiveHash::Associations
  has_many :trainings
end
