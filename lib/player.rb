# frozen_string_literal: true

class Player
  attr_reader :name, :hit_points

  DEFAULT_HP = 60
  MINIMUM_DAMAGE = 10

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end

  def receive_damage
    @hit_points -= MINIMUM_DAMAGE
  end
end
