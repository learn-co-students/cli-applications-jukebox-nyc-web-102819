def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |val, index|
    new_index = index + 1
    puts "#{new_index}. #{val}"
  end
end
  
# def play(songs)
#   puts "Please enter a song name or number:"
#   input = gets.strip
#   songs.each_with_index do |val, index|
#     new_index = index + 1
#     if input.to_i == new_index || input == val
#       puts "Playing #{val}"
#     else input.to_i == new_index && input == val
#       puts "Invalid input, please try again"
#     end
#   end
# end

def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp()
  
  if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{my_songs[input.to_i - 1]}"
  elsif my_songs.index(input) != nil
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  songs
  puts "Please enter a command:"
  user_input = nil
  until user_input == "exit" do
  user_input = gets.strip
    if user_input == 'help'
      help
    elsif user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    end
  end
  exit_jukebox
end
