class Artifact < ActiveRecord::Base
  has_one :main_status, as: :equipment
  has_many :sub_statuses, as: :equipment

  validates_presence_of :name
  validates_presence_of :star

  enum artifact_type: {
    flower:  0,
    plume:   1,
    sands:   2,
    goblet:  3,
    circlet: 4
  }
end