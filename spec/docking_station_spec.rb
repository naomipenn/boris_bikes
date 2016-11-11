require 'docking_station_class'

describe DockingStation do
station = DockingStation.new

it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
  it "releases a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
    end
  end

  # it "releases a bike that works" do
  #   expect(subject.release_bike).to be_working
  #   end

it 'docks something' do
  bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end


it 'raises an error when no bikes are available' do
  expect { subject.release_bike }.to raise_error "No bikes available"
  end


end
