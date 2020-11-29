# frozen_string_literal: true

require 'bike'

describe Bike do
  it 'responds to working method' do
    expect(Bike.new).to be_working
  end

  it 'responds to a broken method' do
    subject.report_broken
    expect(subject).to be_broken
  end
end
