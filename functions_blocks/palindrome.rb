require './integer_palindrome.rb'
require './string_palindrome.rb'


module Palindrome

    def palindrome?
        #processed_content = downcase #we can ommit the self.
        processed_content == processed_content.reverse
    end

    private

        # Returns content for palindrome testing
        def processed_content
            self.to_s.downcase
        end
end


