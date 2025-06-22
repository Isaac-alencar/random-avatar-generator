# frozen_string_literal: true

require 'digest'
require 'grid'

class AvatarGenerator
  attr_accessor :input

  def initialize(input)
    @input = input
    @grid = Grid.new
  end

  def generate
    hash = generate_hash_from_input
    bits = hash_to_binary(hash)

    @grid.generate_grid_with_bits(bits)
    @grid.draw
  end

  private

  def generate_hash_from_input
    @uniq_hash = Digest::SHA256.hexdigest(input)
  end

  def hash_to_binary(hash)
    target_base = 2
    hash.hex.to_s(target_base).rjust(256, '0')
  end
end
