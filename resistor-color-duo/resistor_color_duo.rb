# frozen_string_literal: true

module ResistorColorDuo
  COLORS = %w[
    black
    brown
    red
    orange
    yellow
    green
    blue
    violet
    grey
    white
  ].freeze

  def self.value(colors)
    colors[0..1].map do |color|
      COLORS.index(color)
    end.join('').to_i
  end
end
