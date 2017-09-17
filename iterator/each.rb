class Array
    def find
        each do |value|
            return value if yield(value)
        end
        nil
    end
end

[1, 3, 5, 7, 9].find { |v| v*v > 30 }   # => 7