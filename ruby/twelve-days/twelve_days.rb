class TwelveDays
    def self.song
        words_hash = {
                    12 => {position: "twelfth", gift: "twelve Drummers Drumming, "},
                    11 => {position: "eleventh", gift: "eleven Pipers Piping, "},
                    10 => {position: "tenth", gift: "ten Lords-a-Leaping, "},
                    9 => {position: "ninth", gift: "nine Ladies Dancing, "},
                    8 => {position: "eighth", gift: "eight Maids-a-Milking, "},
                    7 => {position: "seventh", gift: "seven Swans-a-Swimming, "},
                    6 => {position: "sixth", gift: "six Geese-a-Laying, "},
                    5 => {position: "fifth", gift: "five Gold Rings, "},
                    4 => {position: "fourth", gift: "four Calling Birds, "},
                    3 => {position: "third", gift: "three French Hens, "},
                    2 => {position: "second", gift: "two Turtle Doves, "},
                    1 => {position: "first", gift: "a Partridge in a Pear Tree.\n"}
                    }

        for day in 1..12 do
            string = "On the #{words_hash.dig(day, :position)} day of Christmas my true love gave to me: "

            for repeat in 1..day do
                index = day + 1 - repeat
                if index != 1 || day == 1
                    string += words_hash.dig(index, :gift)                  
                else
                    string += "and " + words_hash.dig(index, :gift)
                end
            end
            
        end 

        return string
    end
end