# frozen_string_literal: true

class Grid
  attr_reader :rows, :columns, :grid

  def initialize(rows = 6, columns = 6)
    @rows    = rows
    @columns = columns
    @grid = []
  end

  def draw
    @grid.each do |row|
      puts row.map { |cell| cell == 1 ? '█' : ' ' }.join
    end

    ''
  end

  def generate_grid_with_bits(bits)
    @rows.times do |row|
      row_cells = []
      @columns.times do |col|
        bit_index = row * (col / 2) + col # half the grid for symmetry
        cell_on = bits[bit_index] == '1'
        row_cells << (cell_on ? 1 : 0)
      end
      mirrored_row = row_cells + row_cells.reverse
      @grid << mirrored_row
    end
  end
end
