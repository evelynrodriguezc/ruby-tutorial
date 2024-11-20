require 'sinatra'
require './day'

get '/' do
#    dayname = Date::DAYNAMES[Time.now.wday]
#    "Hello, world! Happy #{dayname}"
    "Hello, world! Happy #{day_of_the_week(Time.now)}"
end