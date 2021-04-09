=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  attr_accessor :words, :result

  def self.abbreviate(text)
    
    @result = String.new
    
    @words = text.split(/[\W,']+/)
    @words.each do |letters|
        @result << letters[0].upcase
    end
    
    return @result
  end
end
