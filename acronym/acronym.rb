# frozen_string_literal: true

module Acronym
  def self.abbreviate(name)
    name.split(/[\s-]/).map do |string|
      string[0]
    end.join.upcase
  end
end
