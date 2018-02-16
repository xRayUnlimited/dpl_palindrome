
class Brainteaser

    def initialize
        menu
    end

    def menu
        puts "PALINDROME CHECKER"
        puts "DON'T MESS UP!"
        puts "1) Enter a palindrome"
        puts "2) Exit"
        input = gets.strip.to_i
        case
        when 1
            check
            puts "GET READY!"
        when 2
            exit
        else
            puts "TRY AGAIN! YOU FOOL!"
            menu
        end
    end

    def check(string)
        puts "+++++++++++++++++++++++"
        puts "ENTER YOUR PALINDROME :"
        puts "+++++++++++++++++++++++"
        r = ""
        s = string.downcase.gsub(/[^[:alnum:]]/, '')
        s.each_char { |c| r.insert(0, c) } == r
      end
end