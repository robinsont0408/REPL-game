
msg1 = "Hello.."
msg2 = "Want to play a game..?"
msg3 = "YES???"
msg4 = "       or"
msg5 = "          NO???"

#<<<<<<<<<<<<<<< print welcome message

puts msg1
  sleep 0.1
puts msg2
  sleep 0.1
puts msg3
  sleep 0.1
puts msg4
  sleep 0.1
print msg5
puts " "
answer = gets.chomp.downcase.gsub(/[^a-z0-9\s]/i, '')#(answer = 0)

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   end of welcome message

y1 = ["yes", "yep", "sure", "ok", "okay", "y", "ye", "yeah", "ofcoarse", "ya"]
n1 = ["no", "nope", "nah", "n", "not"]
y2 = "Great! lets get started.      "
q1 = "How about I try to guess what kind of vehicle you drive?        "
q2 = "How many wheels does it have?          "  

# this is where i left off<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<  

while true

    if y1.include? answer 

        puts y2
          sleep 0.5
        puts q1
          sleep 0.5
        puts q2        
        
car = {"Tesla" => "Model S", "Ferrari" => "360", "Mini" => "Cooper", "Land Rover" => "Defender", "Porsche" => "911","Volkswagen" => "Beetle","Nissan" => "Sentra","Audi" => "A4","Hyundai" => "Elantra","Ford" => "Raptor","Honda" => "Civic", "BMW" => "M5","Mercedes-Benz" => "C-class","Toyota" => "Corolla"}
cars = car.to_a.shuffle.first.to_s.gsub(/[^a-z0-9\s]/i, '')
        
        #         <<<<<<<<<<<<<<        wheels question
        wheel = ["1", "one", "uno"]
        wheels2 = ["2", "two", "dos"]
        wheels3 = ["3", "three", "tres"]
        wheels4 = ["4", "four", "quatro"]
        walk = ["0", "zero", nil, " "]
        wheels = gets.chomp.downcase

        if wheel.include? wheels
            puts "Its a unicycle!        "
        elsif wheels2.include? wheels
            puts "Its a motorcycle!        "
        elsif wheels3.include? wheels
            puts "Its a trike! very cool!     "
        elsif wheels4.include? wheels
            puts "Do you drive a car!?       "
            car = gets.chomp.downcase.gsub(/[^a-z0-9\s]/i, '') 
            if y1.include? car 
                puts "Wow, I love cars, if I wasnt a computer, I would like to be a #{cars}! "
                puts "Looks like I won this rounds"
            else 
                puts "Congratualations! looks like you have bested me! Your reward is a brand new #{cars}! "
                puts "Prizes, including top prizes, are subject to availability at time of playing this game. as of #{Time.local(2008, 7, 8, 9, 10)} our current stock is zero,\n if you would like to claim your prize please call 1.800.010.0011"
                    sleep 0.8
                print "                                                                                                                                                                                                                                "
            end
                    
        elsif walk.include? wheels
            puts "You must walk alot...      "
        else 
            puts "Then you must to be an Ice Road Trucker!"
        end

    elsif n1.include? answer
        puts "Fine...I didnt want to play with you anyways...          "
        break;
    else
        puts "I'm not sure what you are trying to tell me.            "
    end
    
    px2 = "PLAY AGAIN?     (Y/N)    "

    puts px2
    input = gets.chomp.downcase.gsub(/[^a-z0-9\s]/i, '')

    if y1.include? input
        puts "Okay"
    else
        puts "Goodbye!"
        break;
    end
end
