require 'pry'
require 'rest-client'
require 'json'

response = RestClient.get('https://dog.ceo/api/breeds/list/all')
# response = RestClient.get('https://api.github.com/users/vburroughs21')

data = JSON.parse(response)

australian =  data["message"]["bulldog"]

binding.pry