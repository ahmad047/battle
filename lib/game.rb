# frozen_string_literal: true

require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :current_player, :opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @opponent = player_2
  end

  def attack(player)
    player.receive_damage
    switch_turn
  end

  private

  def switch_turn
    @opponent, @current_player = @current_player, @opponent
  end
end
