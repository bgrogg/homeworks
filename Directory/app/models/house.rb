class House < ActiveRecord::Base
  validates :address, :presence => true

  has_many :residents,
    foreign_key: :house_id,
    primary_key: :id,
    class_name: 'residents'

end
