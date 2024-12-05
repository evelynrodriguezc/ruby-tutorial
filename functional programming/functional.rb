states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Returns a URL-friendly version of a string.
# Example: "North Dakota" -> "north-dakota"
def urlify(string)
    string.downcase.split.join("-")
end

#urls: Imperative version
def imperative_urls(states)
    urls = []
    states.each do |state|
        urls << urlify(state)
    end
    urls
end

p imperative_urls(states)
# puts imperative_urls(states).inspect

#urls: Functional version
def functional_urls(states)
    states.collect { |state| urlify(state) }
    #states.map { |state| urlify(state) }
end

p functional_urls(states)

# Returns a full URL for each state.
def full_urls(states)
    states.collect { |state| "https://example.com/#{urlify(state)}" }
    #states.map { |state| "https://example.com/#{urlify(state)}" }
end

p full_urls(states)


# singles: Imperative version
def imperative_singles(states)
    singles = []
    states.each do |state|
        if state.split.length == 1
            singles << state
        end
    end
    singles
end

p imperative_singles(states)


# singles: Functional version
def functional_singles(states)
    states.reject { |state| state.split.length == 1 }
    #states.select { |state| state.split.length == 1 }
end

p functional_singles(states)


def dakota_states(states)
    states.select { |state| state.include?("Dakota") }
end

p dakota_states(states)

def double_states(states)
    states.select { |state| state.split.length == 2 }
end

p double_states(states)


numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# sum: Imperative version
def imperative_sum(numbers)
    total = 0
    numbers.each do |n|
        total += n
    end
    total
end

puts imperative_sum(numbers)

# sum: Functional version
def functional_sum(numbers)
    numbers.inject { |total, n| total + n }
    #numbers.reduce { |total, n| total + n }
end

puts functional_sum(numbers)


# lengths: Imperative version
def imperative_lengths(states)
    lengths = {}
    states.each do |state|
        lengths[state] = state.length
    end
    lengths
end

puts imperative_lengths(states)


# lengths: Functional version
def functional_lengths(states)
    states.inject({}) do |lengths, state| # you can use inject or reduce
    #states.reduce({}) do |lengths, state|
        lengths[state] = state.length;
        lengths
    end
end

puts functional_lengths(states)

# multiplitacion: Imperative version
def imperative_multiplication(numbers)
    total = 1
    numbers.each do |n|
        total *= n
    end
    total
end

puts imperative_multiplication(numbers)

# multiplitacion: Functional version
def functional_multiplication(numbers)
    numbers.inject { |total, n| total * n }
    #numbers.reduce { |total, n| total * n }
end

puts functional_multiplication(numbers)
