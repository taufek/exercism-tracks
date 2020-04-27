# frozen_string_literal: true

module Complement
  DNA = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U',
  }.freeze

  def self.of_dna(values)
    values.split('').map do |value|
      DNA[value] || ''
    end.join('')
  end
end
