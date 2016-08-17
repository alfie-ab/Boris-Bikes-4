require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'gets a bike from docked bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike
  end
  it {is_expected.to respond_to(:dock_bike).with(1).argument}
  it 'docks a bike' do
   bike = Bike.new
   expect(subject.dock_bike(bike)).to eq bike
  end
  it {is_expected.to respond_to :bike}
  it 'returns docked bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end

end
