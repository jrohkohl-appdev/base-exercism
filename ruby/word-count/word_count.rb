=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase

    attr_reader :word_count_hash, :words

    def initialize(text)
        
        @words = text
        @word_count_hash = {}
        raw_cut = text.scan(/\b[\w']+\b/)
        raw_cut.uniq.each do |unique_element|            
                
            count = raw_cut.find_all {|raw_element| raw_element.downcase == unique_element.downcase}.size
            if unique_element.downcase.empty? == false
                @word_count_hash[unique_element.downcase] = count
            end

        end
    end

    def word_count
        @word_count_hash      
    end



end