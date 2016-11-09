require 'docking_station_class'

describe 'DockingStation' do
#it 'DockingStation instances to respond to method release_bike' do
it {expect(DockingStation.new.release_bike).to eq true}
#end


end
