class Fight < ApplicationRecord
  belongs_to :player, class_name: "Fighter", optional: true
  belongs_to :opponent, class_name: "Fighter", optional: true

  belongs_to :player_weapon, class_name: "Weapon", optional: true
  belongs_to :opponent_weapon, class_name: "Weapon", optional: true

  validates :player, presence: true
  validates :opponent, presence: true
  validates :player_weapon, presence: true
  validates :opponent_weapon, presence: true
end
