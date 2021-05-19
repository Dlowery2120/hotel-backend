User.destroy_all


require 'pry'
require 'rest-client'
require 'uri'
require 'net/http'
require 'openssl'


User.create!(username: "ligmaman", password_digest: "123", first_name: "Devante", last_name: "Lowery")

url = URI("https://hotels-com-free.p.rapidapi.com/pde/property-details/v1/hotels.com/106346?rooms=1&checkIn=2021-01-27&checkOut=2021-01-28&locale=en_US&currency=USD&include=neighborhood")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = ENV["KEY"]
request["x-rapidapi-host"] = 'hotels-com-free.p.rapidapi.com'

response = http.request(request)

array = JSON.parse(response.body)


binding.pry
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