# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
pools = Pool.create([
  { :name => 'Centennial', :city => 'Christchurch' },
  { :name => 'Graham Condon', :city => 'Christchurch' },
  { :name => 'Jellie Park', :city => 'Christchurch' },
  { :name => 'Ocean Spa', :city => 'Napier' },
  { :name => 'Pioneer', :city => 'Christchurch' },
  { :name => 'QEII', :city => 'Christchurch' },
  { :name => 'Wharenui', :city => 'Christchurch' }
])
