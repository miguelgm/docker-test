require 'sinatra'
require 'redis'
require 'rack'
require 'puma'
 
redis = Redis.new(:host => ENV["REDIS_HOST"] || "127.0.0.1" , :port => ENV["REDIS_PORT"] || 6379)

get '/' do
  redis.ping
  "Hello World!"
end
 
