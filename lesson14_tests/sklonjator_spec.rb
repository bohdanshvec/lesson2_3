require 'rspec'

require_relative 'sklonjator.rb'

describe Sklonjator do
  
  it 'should do ok for KROKODILOV' do

    expect(Sklonjator.sklonenie(0, 'krokodil', 'krokodila', 'krokodilov')).to eq 'krokodilov'
    expect(Sklonjator.sklonenie(5, 'krokodil', 'krokodila', 'krokodilov')).to eq 'krokodilov'
    expect(Sklonjator.sklonenie(6, 'krokodil', 'krokodila', 'krokodilov')).to eq 'krokodilov'
  end

  it 'should do ok for KROKODIL' do
    [1, 31, 41].each do |i|
      expect("#{i} #{Sklonjator.sklonenie(i, 'krokodil', 'krokodila', 'krokodilov')}").to eq "#{i} krokodil"
    end
  end

  it 'should do ok for KROKODIA' do
    [2, 3, 4, 22, 33].each do |i|
    expect(Sklonjator.sklonenie(i, 'krokodil', 'krokodila', 'krokodilov')).to eq 'krokodila'
    end
  end

  it 'should do ok for KROKODILOV' do
    [10, 11, 14, 215, 1114].each do |i|
      expect("#{i} #{Sklonjator.sklonenie(i, 'krokodil', 'krokodila', 'krokodilov')}").to eq "#{i} krokodilov"
    end
  end
  
end
