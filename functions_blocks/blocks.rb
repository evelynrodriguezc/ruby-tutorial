def sandwich
    puts "top bread"
    yield # This is where the block is executed
    puts "bottom bread"
end

sandwich do
    puts "mutton, lettuce, and tomato"
end

def tag(tagname, text)
    html = "<#{tagname}>#{text}</#{tagname}>"
    yield html
end

tag("p", "Lorem ipsum dolor sit amet") do |markup|
    puts markup
end