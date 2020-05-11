# frozen_string_literal: true

module Pangram
  extend self

  def pangram?(sentence)
    return false if sentence.length < 26

    alphabets_count = ('a'..'z').each_with_object({}) { |value, carry| carry[value] = 0 }

    sentence.split('').each do |alphabet|
      next if alphabets_count[alphabet.downcase].nil?

      alphabets_count[alphabet.downcase] += 1
    end

    alphabets_count.keys.all? do |alphabet|
      alphabets_count[alphabet] > 0
    end
  end
end
