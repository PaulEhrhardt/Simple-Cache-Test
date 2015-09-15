require "sinatra"
require "date"

get '/foo' do
 ## cache_control OR expires are used determine 
 ## if the cached content must be revalidated

 cache_control :private, :max_age => 30
 #expires DateTime.new(2015,9,16,4,5,6,'+7') 

 ## etag is used on revalidation to determine if the resource has changed
 etag "639e0322a4536d060b00b455a0112e11"

 ## follow self referencing link to test cache_control in browser
 "Cache-Control Test"
 "<a href='/foo'>Foo</a>"
end
