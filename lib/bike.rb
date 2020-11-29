# frozen_string_literal: true

require 'docking_station'

class Bike
  attr_reader :broken

  def initialize; end

  def working?
    true
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end
end

# bike = docking_station.release_bike
