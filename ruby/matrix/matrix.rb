=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
    
    attr_reader :matrix 

    def initialize(text)
        @matrix = []
        raw_rows = text.split(/\n/)
        raw_rows.each do |selected_row|
            matrix.append(selected_row.split(/\b[\D]\b/).map {|num| num.to_i})
        end
    end

    def rows 
        return @matrix
    end

    def columns
        return @matrix.transpose
    end

end
