
require 'pry'
require 'rest-client'
require 'uri'
require 'net/http'
require 'openssl'

User.destroy_all
Hotel.destroy_all
Room.destroy_all
Booking.destroy_all


# endpoints = [106346, 106347, 106341, 106349, 106354, 10655, 10656, 10661, 10662, 10663, 10667, 10670]
# endpoints.each do |endpoint|
#     url = URI("https://hotels-com-free.p.rapidapi.com/pde/property-details/v1/hotels.com/#{endpoint}?rooms=1&checkIn=2021-01-27&checkOut=2021-01-28&locale=en_US&currency=USD&include=neighborhood")
    
#     http = Net::HTTP.new(url.host, url.port)
#     http.use_ssl = true
#     http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
#     request = Net::HTTP::Get.new(url)
#     request["x-rapidapi-key"] = '0c909ee324msh24ce65d9b57297cp180852jsn5b71f97c1723'
#     request["x-rapidapi-host"] = 'hotels-com-free.p.rapidapi.com'
    
#     response = http.request(request)
    
#     data = JSON.parse(response.body)
# end
u1 = User.create(username: "username", password: "password", first_name: "Devante", last_name: "Lowery")

h1 = Hotel.create(name: 'Holiday Inn', stars: 3, address: '1604 Walker St', location: 'Houston, TX', img: 'https://digital.ihg.com/is/image/ihg/holiday-inn-houston-4650545414-2x1?wid=2880&hei=1440&qlt=85,0&resMode=sharp2&op_usm=1.75,0.9,2,0&qlt=85,0&resMode=sharp2&op_usm=1.75,0.9,2,0')
h2 = Hotel.create(name: 'Comfort Suites', stars: 3, address: '3803 Millbridge Dr', location: 'Houston, TX', img: 'https://www.choicehotels.com/hotelmedia/US/TX/katy/TXE90/1280/Exterior4.webp')
h3 = Hotel.create(name: 'SpringHill Suites', stars: 2, address: '11227 Vienna Trails Ln', location: 'Houston, TX', img: 'https://cache.marriott.com/marriottassets/marriott/HOURP/hourp-exterior-8163-hor-feat.jpg')
h4 = Hotel.create(name: 'Hyatt Place', stars: 4, address: '3814 Gardenia Bend Dr', location: 'Houston, TX', img: 'https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2017/03/27/1445/Hyatt-Place-Houston-Katy-P006-Exterior.jpg/Hyatt-Place-Houston-Katy-P006-Exterior.16x9.jpg?imwidth=1920')
h5 = Hotel.create(name: 'Country Inn', stars: 3, address: '2000 Holly Hall St', location: 'Houston, TX', img: 'https://cf.bstatic.com/images/hotel/max1024x768/438/43866751.jpg')
h6 = Hotel.create(name: 'Comfort Suites', stars: 3, address: '5907 Wisdom Creek Dr', location: 'Dallas, TX', img: 'https://www.choicehotels.com/hotelmedia/US/TX/katy/TXE90/1280/Exterior4.webp')
h7 = Hotel.create(name: 'SpringHill Suites', stars: 3, address: '6363 W Camp Wisdom Rd', location: 'Dallas, TX', img: 'https://cache.marriott.com/marriottassets/marriott/HOURP/hourp-exterior-8163-hor-feat.jpg')
h8 = Hotel.create(name: 'Comfort Suites', stars: 4, address: '2435 Marfa Ave', location: 'Dallas, TX', img: 'https://www.choicehotels.com/hotelmedia/US/TX/katy/TXE90/1280/Exterior4.webp')
h9 = Hotel.create(name: 'Holiday Inn', stars: 2, address: '9236 Church Rd', location: 'Dallas, TX', img: 'https://digital.ihg.com/is/image/ihg/holiday-inn-houston-4650545414-2x1?wid=2880&hei=1440&qlt=85,0&resMode=sharp2&op_usm=1.75,0.9,2,0&qlt=85,0&resMode=sharp2&op_usm=1.75,0.9,2,0')
h10 = Hotel.create(name: 'Hyatt Place', stars: 3, address: '104 Lido', location: 'Austin, TX', img: 'https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2017/03/27/1445/Hyatt-Place-Houston-Katy-P006-Exterior.jpg/Hyatt-Place-Houston-Katy-P006-Exterior.16x9.jpg?imwidth=1920')
h11 = Hotel.create(name: 'Comfort Suites', stars: 2, address: '1407 Dapplegrey Ln', location: 'Austin, TX', img: 'https://www.choicehotels.com/hotelmedia/US/TX/katy/TXE90/1280/Exterior4.webp')
h12 = Hotel.create(name: 'Country Inn', stars: 3, address: '2000 Cedar Bend Dr', location: 'Austin, TX', img: 'https://cf.bstatic.com/images/hotel/max1024x768/438/43866751.jpg')
h13 = Hotel.create(name: 'Sharaton', stars: 5, address: '1903 Willow Creek Dr', location: 'Austin, TX', img: 'https://cf.bstatic.com/images/hotel/max1024x768/382/38275629.jpg')

r1 = Room.create(room_num: 311, price: 75, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r2 = Room.create(room_num: 205, price: 75, suite: 'Queen Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r3 = Room.create(room_num: 202, price: 90, suite: 'Twin Suite', img: 'https://www.choicehotels.com/hotelmedia/US/TX/katy/TXE90/1280/SuitesSpecialtyRooms5.webp', hotel_id: Hotel.all.sample.id)
r4 = Room.create(room_num: 100, price: 100, suite: 'King Suite', img: 'https://www.choicehotels.com/hotelmedia/US/TX/katy/TXE90/1280/SuitesSpecialtyRooms1.webp0', hotel_id: Hotel.all.sample.id)
r5 = Room.create(room_num: 115, price: 125, suite: 'Twin Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r6 = Room.create(room_num: 115, price: 145, suite: 'Queen Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r7 = Room.create(room_num: 100, price: 120, suite: 'Twin Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r8 = Room.create(room_num: 330, price: 65, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r9 = Room.create(room_num: 200, price: 85, suite: 'Twin Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r10 = Room.create(room_num: 450, price: 95, suite: 'Twin Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r11 = Room.create(room_num: 130, price: 100, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r12 = Room.create(room_num: 245, price: 110, suite: 'Twin Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r13 = Room.create(room_num: 185, price: 300, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r14 = Room.create(room_num: 305, price: 350, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r15 = Room.create(room_num: 210, price: 150, suite: 'Twin Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r16 = Room.create(room_num: 105, price: 130, suite: 'Queen Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r17 = Room.create(room_num: 150, price: 150, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r18 = Room.create(room_num: 200, price: 95, suite: 'Twin Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r19 = Room.create(room_num: 105, price: 120, suite: 'Queen Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r20 = Room.create(room_num: 230, price: 110, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r21 = Room.create(room_num: 310, price: 90, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r22 = Room.create(room_num: 115, price: 130, suite: 'Queen Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r23 = Room.create(room_num: 213, price: 90, suite: 'Twin Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r24 = Room.create(room_num: 310, price: 100, suite: 'Queen Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r25 = Room.create(room_num: 140, price: 75, suite: 'Queen Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r26 = Room.create(room_num: 230, price: 113, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r27 = Room.create(room_num: 217, price: 95, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r28 = Room.create(room_num: 222, price: 67, suite: 'Twin Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r29 = Room.create(room_num: 180, price: 300, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r30 = Room.create(room_num: 200, price: 250, suite: 'Twin Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r31 = Room.create(room_num: 150, price: 250, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r32 = Room.create(room_num: 100, price: 85, suite: 'Queen Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r33 = Room.create(room_num: 120, price: 75, suite: 'King Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)
r34 = Room.create(room_num: 320, price: 95, suite: 'Queen Suite', img: 'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80', hotel_id: Hotel.all.sample.id)


b1 = Booking.create(reservation_number: 12345, check_in: '2021-04-01', check_out: '2021-04-05', user_id: u1.id, room_id: r1.id)
b2 = Booking.create(reservation_number: 67890, check_in: '2021-05-03', check_out: '2021-05-20', user_id: u1.id, room_id: r2.id)
b3 = Booking.create(reservation_number: 29150, check_in: '2021-03-14', check_out: '2021-03-26', user_id: u1.id, room_id: r2.id)
b4 = Booking.create(reservation_number: 29150, check_in: '2021-03-14', check_out: '2021-03-26', user_id: u1.id, room_id: r3.id)


    # address = data["data"]["body"]["propertyDescription"]["address"]["addressLine1"]
    # hotel_name = data["data"]["body"]["propertyDescription"]["name"]
    # hotel_stars = data["data"]["body"]["propertyDescription"]["starRating"]
    # hotel_id = data["data"]["body"]["pdpHeader"]["hotelId"]
    # price = data["data"]["body"]["propertyDescription"]["featuredPrice"]["currentPrice"]["plain"]

   
    # Hotel.create(name: hotel_name, location: address)

    # end

# url = URI("https://hotels-com-free.p.rapidapi.com/nice/image-catalog/v2/hotels/106346")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-key"] = '0c909ee324msh24ce65d9b57297cp180852jsn5b71f97c1723'
# request["x-rapidapi-host"] = 'hotels-com-free.p.rapidapi.com'

# response = http.request(request)
# puts response.read_body




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

# hotelData = {
#     "result": "OK",
#     "data": {
#         "body": {
#             "pdpHeader": {
#                 "hotelId": "106346",
#                 "destinationId": "1493604",
#                 "pointOfSaleId": "HCOM_US",
#                 "currencyCode": "USD",
#                 "occupancyKey": "A1",
#                 "hotelLocation": {
#                     "coordinates": {
#                         "latitude": 37.805559,
#                         "longitude": -122.417529
#                     },
#                     "resolvedLocation": "CITY:1493604:PROVIDED:PROVIDED",
#                     "locationName": "San Francisco"
#                 }
#             },
#             "overview": {
#                 "overviewSections": [
#                     {
#                         "title": "Main amenities",
#                         "type": "HOTEL_FEATURE",
#                         "content": [
#                             "285 smoke-free guestrooms",
#                             "Housekeeping (on request)",
#                             "Near the beach",
#                             "Restaurant and bar/lounge",
#                             "Fitness center",
#                             "Valet parking",
#                             "Business center",
#                             "Limo/town car service",
#                             "24-hour front desk",
#                             "Coffee/tea in a common area",
#                             "Front desk safe",
#                             "ATM/banking services"
#                         ],
#                         "contentType": "LIST"
#                     },
#                     {
#                         "title": "What’s around",
#                         "type": "LOCATION_SECTION",
#                         "content": [
#                             "In North Beach",
#                             "Ghirardelli Square - 5 min walk",
#                             "Lombard Street - 7 min walk",
#                             "Pier 39 - 12 min walk",
#                             "Exploratorium - 24 min walk",
#                             "San Francisco Museum of Modern Art - 35 min walk",
#                             "Presidio of San Francisco - 35 min walk",
#                             "Moscone Convention Center - 36 min walk",
#                             "Palace of Fine Arts - 38 min walk",
#                             "Alcatraz Island - 39 min walk",
#                             "Orpheum Theater - 41 min walk"
#                         ],
#                         "contentType": "LIST"
#                     },
#                     {
#                         "type": "TAGLINE",
#                         "content": [
#                             "<b>4-star hotel with restaurant, near Ghirardelli Square </b>"
#                         ],
#                         "contentType": "LIST"
#                     }
#                 ]
#             },
#             "hotelWelcomeRewards": {
#                 "applies": true,
#                 "info": "You can collect Hotels.com® Rewards stamps here"
#             },
#             "propertyDescription": {
#                 "clientToken": "ZMvP7IB3Pjau34108bxy8_tTHN4.",
#                 "address": {
#                     "countryName": "United States of America",
#                     "cityName": "San Francisco",
#                     "postalCode": "94133",
#                     "provinceName": "CA",
#                     "addressLine1": "1250 Columbus Ave",
#                     "countryCode": "USA",
#                     "pattern": "AddressLine1,#AddressLine2,#CityName,#ProvinceName,#PostalCode,#CountryName",
#                     "fullAddress": "1250 Columbus Ave, San Francisco, CA, 94133, United States of America"
#                 },
#                 "priceMatchEnabled": false,
#                 "name": "Marriott San Francisco Fisherman's Wharf",
#                 "starRatingTitle": "4 stars",
#                 "starRating": 4,
#                 "featuredPrice": {
#                     "beforePriceText": "Lowest price",
#                     "afterPriceText": "",
#                     "pricingAvailability": "available on 06/07/21",
#                     "pricingTooltip": "Price may be available on other dates",
#                     "currentPrice": {
#                         "formatted": "$159",
#                         "plain": 159
#                     },
#                     "taxInclusiveFormatting": false,
#                     "bookNowButton": false
#                 },
#                 "mapWidget": {
#                     "staticMapUrl": "https://maps-api-ssl.google.com/maps/api/staticmap?center=37.805559,-122.417529&format=jpg&sensor=false&key=AIzaSyDaDqDNrxWrxcURixO2l6TbtV68X0Klf4U&zoom=16&size=834x443&scale&signature&signature=aieIzKJJc6Ju6vIi7Faj-4e-WVE="
#                 },
#                 "roomTypeNames": [
#                     "Room, 1 King Bed, Non Smoking",
#                     "Room, 1 King Bed, Non Smoking, Courtyard View",
#                     "Junior Suite, 1 King Bed, Non Smoking",
#                     "Room, 2 Queen Beds, Non Smoking",
#                     "Room, 2 Queen Beds, Non Smoking, Courtyard View",
#                     "Suite, 2 Queen Beds, Non Smoking"
#                 ],
#                 "tagline": [
#                     "<b>4-star hotel with restaurant, near Ghirardelli Square </b>"
#                 ],
#                 "freebies": []
#             },
#             "guestReviews": {
#                 "brands": {
#                     "scale": 5,
#                     "formattedScale": "5",
#                     "rating": 4.3,
#                     "formattedRating": "4.3",
#                     "lowRating": false,
#                     "badgeText": "Fabulous",
#                     "total": 806
#                 }
#             },
#             "atAGlance": {
#                 "keyFacts": {
#                     "hotelSize": [
#                         "This hotel has 285 rooms",
#                         "This hotel is arranged over 5 floors"
#                     ],
#                     "arrivingLeaving": [
#                         "Check-in time 4:00 PM-anytime",
#                         "Check-out time is  noon",
#                         "Express check-in/out"
#                     ],
#                     "specialCheckInInstructions": [
#                         "Front desk staff will greet guests on arrival. "
#                     ],
#                     "requiredAtCheckIn": [
#                         "Credit card, debit card, or cash deposit required for incidental charges",
#                         "Government-issued photo ID may be required"
#                     ]
#                 },
#                 "travellingOrInternet": {
#                     "travelling": {
#                         "children": [
#                             "Children stay free when occupying the parent or guardian's room, using existing bedding"
#                         ],
#                         "pets": [
#                             "Pets allowed*",
#                             "Up to 50 lbs"
#                         ],
#                         "extraPeople": []
#                     },
#                     "internet": [
#                         "WiFi and wired Internet access in rooms*"
#                     ]
#                 },
#                 "transportAndOther": {
#                     "transport": {
#                         "transfers": [],
#                         "parking": [
#                             "Covered onsite valet parking (USD 62 per night; includes in/out privileges)",
#                             "Wheelchair-accessible parking on site",
#                             "Height restrictions apply for onsite parking"
#                         ],
#                         "offsiteTransfer": []
#                     },
#                     "otherInformation": [
#                         "Smoke-free property"
#                     ],
#                     "otherInclusions": []
#                 }
#             },
#             "amenities": [
#                 {
#                     "heading": "In the hotel",
#                     "listItems": [
#                         {
#                             "heading": "Food and drink",
#                             "listItems": [
#                                 "Restaurant",
#                                 "Bar/lounge",
#                                 "Room service (during limited hours)",
#                                 "Coffee/tea in a common area"
#                             ]
#                         },
#                         {
#                             "heading": "Things to do",
#                             "listItems": [
#                                 "Fitness facilities",
#                                 "Bicycle rentals nearby",
#                                 "Golfing nearby",
#                                 "Hiking/biking trails nearby",
#                                 "Sailing nearby",
#                                 "Scooter/moped rentals nearby",
#                                 "Windsurfing nearby"
#                             ]
#                         },
#                         {
#                             "heading": "Working away",
#                             "listItems": [
#                                 "Business center",
#                                 "Conference space",
#                                 "Meeting rooms"
#                             ]
#                         },
#                         {
#                             "heading": "Services",
#                             "listItems": [
#                                 "24-hour front desk",
#                                 "Concierge services",
#                                 "Tours/ticket assistance",
#                                 "Limo or Town Car service available",
#                                 "Dry cleaning/laundry service",
#                                 "Laundry facilities",
#                                 "Free newspapers in lobby",
#                                 "Luggage storage",
#                                 "Multilingual staff",
#                                 "Porter/bellhop"
#                             ]
#                         },
#                         {
#                             "heading": "Facilities",
#                             "listItems": [
#                                 "Elevator",
#                                 "ATM/banking",
#                                 "Safe-deposit box at front desk",
#                                 "Television in common areas"
#                             ]
#                         },
#                         {
#                             "heading": "Accessibility",
#                             "listItems": [
#                                 "Braille or raised signage",
#                                 "Accessible bathroom",
#                                 "In-room accessibility",
#                                 "Wheelchair accessible",
#                                 "Wheelchair-accessible path of travel",
#                                 "Wheelchair-accessible parking",
#                                 "Assistive listening devices available",
#                                 "Wheelchair-accessible registration desk",
#                                 "Wheelchair-accessible fitness center",
#                                 "Wheelchair-accessible meeting spaces/business center",
#                                 "Wheelchair-accessible on-site restaurant",
#                                 "Visual alarms in hallways",
#                                 "Closed-captioned TV",
#                                 "Raised toilet seat",
#                                 "Lowered locks/deadbolt",
#                                 "Grab bar - near toilet",
#                                 "Grab bar - in bathtub",
#                                 "Lever door handles"
#                             ]
#                         },
#                         {
#                             "heading": "Languages Spoken",
#                             "listItems": [
#                                 "English"
#                             ]
#                         }
#                     ]
#                 },
#                 {
#                     "heading": "In the room",
#                     "listItems": [
#                         {
#                             "heading": "Home comforts",
#                             "listItems": [
#                                 "In-room climate control (air conditioning)",
#                                 "Coffee/tea maker",
#                                 "Bathrobes",
#                                 "Iron/ironing board"
#                             ]
#                         },
#                         {
#                             "heading": "Sleep well",
#                             "listItems": [
#                                 "Hypo-allergenic bedding available",
#                                 "Blackout drapes/curtains",
#                                 "Premium bedding",
#                                 "Pillowtop mattress"
#                             ]
#                         },
#                         {
#                             "heading": "Things to enjoy",
#                             "listItems": [
#                                 "In-room massage available"
#                             ]
#                         },
#                         {
#                             "heading": "Freshen up",
#                             "listItems": [
#                                 "Partially open bathroom",
#                                 "Shower/tub combination",
#                                 "Designer toiletries",
#                                 "Hair dryer"
#                             ]
#                         },
#                         {
#                             "heading": "Be entertained",
#                             "listItems": [
#                                 "27-inch Smart TV",
#                                 "Netflix",
#                                 "Pay movies",
#                                 "Cable/satellite TV channels"
#                             ]
#                         },
#                         {
#                             "heading": "Stay connected",
#                             "listItems": [
#                                 "Desk",
#                                 "Free newspaper",
#                                 "WiFi (surcharge)"
#                             ]
#                         },
#                         {
#                             "heading": "Food and drink",
#                             "listItems": [
#                                 "Refrigerator"
#                             ]
#                         },
#                         {
#                             "heading": "More",
#                             "listItems": [
#                                 "In-room safe",
#                                 "Connecting/adjoining rooms available"
#                             ]
#                         }
#                     ]
#                 }
#             ],
#             "hygieneAndCleanliness": {
#                 "title": "COVID-19: Hygiene and cleanliness",
#                 "hygieneQualifications": {
#                     "title": "Official standards",
#                     "qualifications": [
#                         "This property advises that it adheres to Commitment to Clean (Marriott) and SafeStay (AHLA - USA) cleaning and disinfection practices. "
#                     ]
#                 },
#                 "healthAndSafetyMeasures": {
#                     "title": "Enhanced health and safety measures",
#                     "description": "This property advises that enhanced cleaning and guest safety measures are currently in place.",
#                     "measures": [
#                         "Property is cleaned with disinfectant",
#                         "Staff wears personal protective equipment",
#                         "Property confirms they are implementing enhanced cleaning measures",
#                         "Shield between guests and staff in main contact areas",
#                         "Social distancing measures are in place",
#                         "48 hours Gap period enforced between guest stays - ",
#                         "Contactless check-in is available",
#                         "Individually-wrapped food options are available",
#                         "Guests are provided with free hand sanitizer"
#                     ]
#                 }
#             },
#             "smallPrint": {
#                 "alternativeNames": [
#                     "Marriott Hotel San Francisco Fisherman's Wharf",
#                     "Marriott San Francisco Fisherman's Wharf Hotel San Francisco",
#                     "Marriott San Francisco Fisherman's Wharf",
#                     "San Francisco Fisherman's Wharf Marriott",
#                     "Marriott San Francisco Fisherman's Wharf Hotel",
#                     "San Francisco Marriott",
#                     "Marriott Hotel San Francisco",
#                     "Marriott San Francisco Fisherman`s Wharf Hotel San Francisco",
#                     "Marriott San Francisco Fisherman's Wharf Hotel",
#                     "Marriott San Francisco Fisherman's Wharf San Francisco"
#                 ],
#                 "mandatoryFees": [
#                     "<ul><li>Resort fee: USD 22.84 per accommodation, per night</li></ul><br/>\n<p>Resort fee inclusions: </p><ul><li>Breakfast</li><li>Internet access (may be limited)</li><li>Newspaper</li><li>Additional inclusions</li></ul>"
#                 ],
#                 "optionalExtras": [
#                     "<p><strong>Early check-in</strong> can be arranged for an extra charge (subject to availability, amount varies)</p><p><strong>Late check-out</strong> can be arranged for an extra charge (subject to availability, amount varies)</p>",
#                     "<p><strong>Covered valet parking</strong> costs USD 62 per night with in/out privileges</p>",
#                     "<p><strong>Pets</strong> are allowed for an extra charge of USD 100 per accommodation, per stay</p>",
#                     "<p><strong>WiFi</strong> is available in guestrooms for USD 12.95 per night (rates may vary)</p><p><strong>Wired Internet</strong> access is available in guestrooms for USD 12.95 per day (rates may vary)</p>"
#                 ],
#                 "policies": [
#                     "<p>The property has connecting/adjoining rooms, which are subject to availability and can be requested by contacting the property using the number on the booking confirmation. </p><p>Some facilities may have restricted access. Guests can contact the property for details using the contact information on the booking confirmation. </p><p>Parking height restrictions apply. </p><p>Guests can rest easy knowing there's a carbon monoxide detector, a fire extinguisher, a smoke detector, a security system, a first aid kit, and window guards on site.</p><p>This property advises that enhanced cleaning and guest safety measures are currently in place.</p><p>Disinfectant is used to clean the property; commonly-touched surfaces are cleaned with disinfectant between stays; bed sheets and towels are laundered at a temperature of at least 60°C/140°F.</p><p>Social distancing measures are in place; staff at the property wear personal protective equipment; a shield is in place between staff and guests in main contact areas; periodic temperature checks are conducted on staff; guests are provided with hand sanitizer; masks are required in public areas.</p><p>Contactless check-in and contactless check-out are available.</p><p>Individually-wrapped food options are available for breakfast and through room service.</p><p>Each guestroom is kept vacant for a minimum of 48 hours between bookings.</p><p>This property affirms that it follows the cleaning and disinfection practices of Commitment to Clean (Marriott).</p><p>This property affirms that it adheres to the cleaning and disinfection practices of SafeStay (AHLA - USA).</p><p> This property welcomes guests of all sexual orientations and gender identities (LGBTQ friendly). </p>Please note that cultural norms and guest policies may differ by country and by property. The policies listed are provided by the property. ",
#                     "<p>This property accepts credit cards and cash.</p>"
#                 ],
#                 "mandatoryTaxesOrFees": true,
#                 "display": true
#             },
#             "specialFeatures": {
#                 "sections": [
#                     {
#                         "heading": "Dining",
#                         "freeText": "<strong>Red Fin</strong> - This restaurant serves breakfast, lunch, and dinner. <br/>\n<p></p><strong>Red Fin Lounge</strong> - Onsite bar. Open daily. ",
#                         "listItems": [],
#                         "subsections": []
#                     }
#                 ]
#             },
#             "miscellaneous": {
#                 "pimmsAttributes": "DoubleStamps|TESCO",
#                 "showLegalInfoForStrikethroughPrices": true,
#                 "legalInfoForStrikethroughPrices": "The struck-out price is based on the property’s standard rate on our app, as determined and supplied by the property."
#             },
#             "pageInfo": {
#                 "pageType": "dateless",
#                 "errors": [
#                     {
#                         "fieldName": "arrivalDate",
#                         "errorMessages": [
#                             "Specified arrival date is before today’s date."
#                         ]
#                     }
#                 ],
#                 "errorKeys": [
#                     "MALFORMED_DATEFUL_REQUEST"
#                 ]
#             },
#             "unavailable": {}
#         },
#         "common": {
#             "pointOfSale": {
#                 "numberSeparators": ",.",
#                 "brandName": "Hotels.com"
#             },
#             "tracking": {
#                 "omniture": {
#                     "s.prop34": "2021.06.846",
#                     "s.currencyCode": "USD",
#                     "s.eVar26": "US:TX:KATY:618",
#                     "s.products": "LOCAL;20488",
#                     "s.eVar95": "Unknown",
#                     "s.eVar41": "USD",
#                     "s.eVar4": "|SI:anonymous|VS:returnVisitor|HCR:notApplicable|FC:notApplicable|NS:unknown|TI:notApplicable|SM:notApplicable|IR:anonymous|",
#                     "s.eVar43": "en_US|HCOM_US|www.hotels.com",
#                     "s.eVar34": "H1068:005.001,H1871:007.002,M4869:001.000,M4953:001.000,M5342:000.000,M5756:001.000,M5758:001.000,M5759:001.000,M5760:001.000,M6271:001.000,M6439:000.000,M6553:000.000,M6946:000.000,M7296:000.000,M7305:000.000,M7308:000.000,M7353:000.000,M7362.0,M7635:000.000,M7844:000.000,M7983:000.000,M7990:000.000,M8033:000.000,M8248:000.000,M8336:000.000,M8714:000.000,M8988:000.000,M9035:000.000,M9056:000.000,M9091:000.002,M9167:000.000,M9168:000.000,M9469:000.000,M9475:000.000,M9493:000.000,M9629:000.000,M9636:000.000,M9733:007.001,M9810:000.000,M9890:000.000,M9924:000.000,M9930:000.000,M9974:000.000,M10013:002.001,M10049:000.000,M10057:000.000,M10101:000.000,M10268:000.000,M10291:000.000,M10335:000.000,M10389:000.000,M9215:001.000",
#                     "s.eVar13": "389367",
#                     "s.server": "www.hotels.com",
#                     "s.prop28": "0",
#                     "s.prop27": "7907534a-f458-4f4d-94f7-9057ed3e62ba",
#                     "s.prop5": "389367",
#                     "s.eVar80": "",
#                     "s.prop48": "hotel details without dates description tab",
#                     "s.prop36": "|SI:anonymous|VS:returnVisitor|HCR:notApplicable|FC:notApplicable|NS:unknown|TI:notApplicable|SM:notApplicable|IR:anonymous|",
#                     "s.eVar93": "aws.us-west-2.unknown"
#                 },
#                 "pageViewBeaconUrl": "https://www.egadvertising.com/travelAds/v1/TravelAdPageView?deviceType=App-Phone&rooms=1&destRegionID=1493604&hotelIds=&adults=1&userAgent=PDE.4.1.419&userGuid=7907534a-f458-4f4d-94f7-9057ed3e62ba&pageName=Hotel-IS&slots=HIS_Car_A,HIS_Car_B,HIS_Car_C,HIS_Car_D,HIS_Car_E,HIS_Car_F,HIS_Car_G,HIS_Car_H,HIS_Car_I,HIS_Car_J&children=0&culture=en_US&testVersionOverride=4200.0,7983.0,7561.0,7990.0,8988.0,8434.0,9493.0,9636.0&domain=www.hotels.com&tac=true&action=pageview&publisher=expedia&userIP=127.0.0.1&programId=1"
#             }
#         }
#     },
#     "neighborhood": {
#         "neighborhoodName": "Union Square",
#         "neighborhoodImage": "https://a.cdn-hotels.com/gdcs/production101/d1430/62cad3f0-c19f-11e7-aa7f-0242ac1100ec.jpg",
#         "neighborhoodShortDescription": "",
#         "neighborhoodLongDescription": "Union Square is acclaimed for its architecture and museums, and visitors here can explore SHN Curran Theatre and Powell and Market Cable Car Turnaround. This walkable neighborhood in San Francisco is well-known for its theaters, restaurants, and cafés.    <br/><br/>Appreciated for its art, this neighborhood's cultural attractions include Golden Gate Theatre and Alcove Theater. You can browse for treasures at Westfield San Francisco Centre, Maiden Lane, and Westfield Metreon. "
#     }
# }