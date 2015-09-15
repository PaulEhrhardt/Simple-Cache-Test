require "sinatra"

get '/' do
  cache_control :public, :max_age => 20
  etag "639e0322a4536d060b00b455a0112e11"
  "hello"
end
