class SubStatus < ActiveRecord::Base
  belongs_to :equipment, polymorphic: true

  validates_presence_of :status_type, message: 'status type tidak ada'
  validates_presence_of :value, message: 'value tidak ada'

  enum status_type: {
    health_point:          0,
    attack:                1,
    defense:               2,
    elemental_mastery:     3,
    energy_recharge:       4,
    physical_damage_bonus: 5,
    critical_rate:         6,
    critical_damage:       7,
    healing_bonus:         8,
    geo_damage_bonus:      9,
    pyro_damage_bonus:     10,
    electro_damage_bonus:  11,
    anemo_damage_bonus:    12,
    cryo_damage_bonus:     13,
    dendro_damage_bonus:   14,
    hydro_damage_bonus:    15,
  }
end