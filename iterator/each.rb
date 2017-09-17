class Array
    def find
        each do |value|
            return value if yield(value)
        end
        nil
    end
end


if __file__ == $0
    # <each> sample
    [1, 3, 5, 7, 9].find { |v| v*v > 30 }   # => 7

    # <collect> sample
    ["H", "A", "L"].collect { |x| x.succ } # => ["I", "B", "M"]

    # Find within File I/O
    f = File.open("testfile")
    f.each.with_index do |line, index|
        puts "Line #{index} is: #{line}"
    end
    f.close

    