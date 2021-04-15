=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
    
    COLORS = {
        black: 0,
        brown: 1,
        red: 2,
        orange: 3,
        yellow: 4,
        green: 5,
        blue: 6,
        violet: 7,
        grey: 8,
        white: 9
    }


    def self.value(input_array)
        @return_value = String.new
        input_array.each do |col|
            @return_value << COLORS[col.to_sym].to_s
        end
        return @return_value[0,2]
    end

end
