class Weapon < ActiveRecord::Base
  has_one :main_status, as: :equipment
  has_many :sub_statuses, as: :equipment

  validates_presence_of :name
  validates_presence_of :star

  enum weapon_type: {
    sword:    0,
    bow:      1,
    polearm:  2,
    claymore: 3,
    catalyst: 4
  }
end