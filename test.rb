require "sinatra"

get '/foo' do
 cache_control :public, :max_age => 2000
 #etag "639e0322a4536d060b00b455a0112e11"
 "Cache-Control Test"
 "<a href='/foo'>Foo</a>"
end