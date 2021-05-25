
require 'pry'
require 'rest-client'
require 'uri'
require 'net/http'
require 'openssl'

User.destroy_all
Hotel.destroy_all
Room.destroy_all
Booking.destroy_all

u1 = User.create(username: "ligmaman", password: "123", first_name: "Devante", last_name: "Lowery")

h1 = Hotel.create(name: 'Holiday Inn', location: 'Houston, TX', img: 'https://images.unsplash.com/photo-1517840901100-8179e982acb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80')
h2 = Hotel.create(name: 'Comfort Suites', location: 'Austin, TX', img: 'https://images.unsplash.com/photo-1517840901100-8179e982acb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80')
h3 = Hotel.create(name: 'Sharaton', location: 'Dallas, TX', img: 'https://images.unsplash.com/photo-1517840901100-8179e982acb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80')

r1 = Room.create(room_num: 311, price: 75, suite: 'King', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: h1.id)
r2 = Room.create(room_num: 205, price: 75, suite: 'Twin', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: h1.id)
r3 = Room.create(room_num: 115, price: 90, suite: 'Double Bed', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: h1.id)

b1 = Booking.create(reservation_number: 12345, check_in: '2021-04-01', check_out: '2021-04-05', user_id: u1.id, room_id: r1.id)
b2 = Booking.create(reservation_number: 67890, check_in: '2021-05-03', check_out: '2021-05-20', user_id: u1.id, room_id: r2.id)
b3 = Booking.create(reservation_number: 29150, check_in: '2021-03-14', check_out: '2021-03-26', user_id: u1.id, room_id: r2.id)
b4 = Booking.create(reservation_number: 29150, check_in: '2021-03-14', check_out: '2021-03-26', user_id: u1.id, room_id: r3.id)

    # 10.times do 
    # endpoints = [106346, 106347, 106341].sample
    # end

    # url = URI("https://hotels-com-free.p.rapidapi.com/pde/property-details/v1/hotels.com/#{endpoints}?rooms=1&checkIn=2021-01-27&checkOut=2021-01-28&locale=en_US&currency=USD&include=neighborhood")
   
    # http = Net::HTTP.new(url.host, url.port)
    # http.use_ssl = true
    # http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    # request = Net::HTTP::Get.new(url)
    # request["x-rapidapi-key"] = ENV["KEY"]
    # request["x-rapidapi-host"] = 'hotels-com-free.p.rapidapi.com'

    # response = http.request(request)

    # data = JSON.parse(response.body)

    # address = data["data"]["body"]["propertyDescription"]["address"]["addressLine1"]
    # hotel_name = data["data"]["body"]["propertyDescription"]["name"]
    # hotel_stars = data["data"]["body"]["propertyDescription"]["starRating"]
    # hotel_id = data["data"]["body"]["pdpHeader"]["hotelId"]
    # price = data["data"]["body"]["propertyDescription"]["featuredPrice"]["currentPrice"]["plain"]

   
    # Hotel.create(name: hotel_name, location: address)

    # end






# GET request with modified headers
# RestClient.get 'https://hotels-com-free.p.rapidapi.com/pde/property-details/v1/hotels.com', {:Authorization => 'Bearer 0c909ee324msh24ce65d9b57297cp180852jsn5b71f97c1723'}

# POST request with modified headers
# RestClient.post 'http://example.com/resource', {:foo => 'bar', :baz => 'qux'}, {:Authorization => 'Bearer cT0febFoD5lxAlNAXHo6g'}

# # DELETE request with modified headers
# RestClient.delete 'http://example.com/resource', {:Authorization => 'Bearer cT0febFoD5lxAlNAXHo6g'}


########### PARK SEEDS ##############

# park_response = RestClient.get 'https://developer.nps.gov/api/v1/parks?limit=500&api_key=wYSrUWm0QzfFhZOe2ZhqKexlygpTBfp0N1cJoek5'
# data = JSON.parse(park_response)
#     park_data = data['data']

#         park_data.each do |park|
#             Park.create(
#                 fullName: park['fullName'] != [] ? park['fullName'] : 'Data Not Available',
#                 description: park['description'] != [] ? park['description'] : 'Data Not Available',
#                 latitude: park['latitude'] != [] ? park['latitude'] : 'Data Not Available',
#                 longitude: park['longitude'] != [] ? park['longitude'] : 'Data Not Available',
#                 entranceFee: park['entranceFees'] != [] ? park['entranceFees'][0]['cost'] : 'Data Not Available',
#                 city: park['addresses'] != [] ? park['addresses'][0]['city'] : 'Data Not Available',
#                 state: park['addresses'] != [] ? park['addresses'][0]['stateCode'] : 'Data Not Available',
#                 imageUrl: park['images'] != [] ? park['images'][0]['url'] : 'Data Not Available',
#                 weatherInfo: park['weatherInfo'] != [] ? park['weatherInfo'] : 'Data Not Available'
#             )
#         end