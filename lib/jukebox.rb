def help 
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end
  
def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end 

def play(song_array)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if  song_array.include?(user_response.to_s)
      puts "Playing #{user_response.to_s}"
  elsif (user_response.to_i - 1) <= song_array.length && user_response.length < song_array.length
      puts "Playing #{song_array[user_response.to_i - 1]}"
  else
   puts "Invalid input, please try again"
 end
end 

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_response = ""
  until user_response == 'exit'
    puts "Please enter a command:"
    user_response = gets.strip
    if user_response =='help'
      help
    elsif user_response == 'list'
      list(songs)
    elsif user_response == 'play'
      play(songs)
    end
  end
  exit_jukebox
end