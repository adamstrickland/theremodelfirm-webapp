# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Product.delete_all
Product.create(:title => 'Faucet 1',
  :description => 
    %{<p>
        Glacier Bay Builders 4 in. 2-Handle Low-Arc Bathroom Faucet in Brushed Nickel.
      </p>},
  :image_url =>   '/images/faucet1.jpg',    
  :price => 34.00,
  :est_install_time_mins => 15)
# . . .
Product.create(:title => 'Faucet 2',
  :description =>
    %{<p>
        Glacier Bay Constructor 4 in. 2-Handle Low-Arc Bathroom Faucet in Chrome.
      </p>},
  :image_url => '/images/faucet2.jpg',
  :price => 24.86,
  :est_install_time_mins => 15)
# . . .
Product.create(:title => 'Faucet 3',
  :description =>
    %{<p>
        Price Pfister Pasadena 8 in. 2-Handle High-Arc Bathroom Faucet in Brushed Nickel.
      </p>},
  :image_url => '/images/faucet3.jpg',
  :price => 98.00,
  :est_install_time_mins => 30)
