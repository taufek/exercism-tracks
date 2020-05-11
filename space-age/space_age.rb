# frozen_string_literal: true

class SpaceAge
  MERCURY = 0.2408467
  VENUS = 0.61519726
  MARS = 1.8808158
  JUPITER = 11.862615
  SATURN = 29.447498
  URANUS = 84.016846
  NEPTUNE = 164.79132

  def initialize(age)
    @age = age
  end

  def on_earth
    (age / (60 * 60 * 24 * 365.25)).round(2)
  end

  def on_mercury
    on_earth / MERCURY
  end

  def on_venus
    on_earth / VENUS
  end

  def on_mars
    on_earth / MARS
  end

  def on_jupiter
    on_earth / JUPITER
  end

  def on_saturn
    on_earth / SATURN
  end

  def on_uranus
    on_earth / URANUS
  end

  def on_neptune
    on_earth / NEPTUNE
  end

  private

  attr_reader :age
end
