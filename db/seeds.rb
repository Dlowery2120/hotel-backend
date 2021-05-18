User.destroy_all

User.create!(username: "ligmaman", password_digest: "123", first_name: "Devante", last_name: "Lowery")
User.create!(username: "ligmaman", password_digest: "123", first_name: "Devante", last_name: "Lowery")
User.create!(username: "ligmaman", password_digest: "123", first_name: "Devante", last_name: "Lowery")


require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://hotels-com-free.p.rapidapi.com/pde/property-details/v1/hotels.com")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = ENV["KEY"]
request["x-rapidapi-host"] = 'hotels-com-free.p.rapidapi.com'

response = http.request(request)
puts response.read_body
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