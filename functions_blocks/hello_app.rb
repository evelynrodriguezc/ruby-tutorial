require 'sinatra'
#require './day'
require '/functions_blocks/day'

get '/' do
    #"Hello, world! Happy #{day_of_the_week(Time.now)}"
    greeting(Time.now)
end