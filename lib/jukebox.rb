require "pry"

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play_prompt
  puts "Please enter a song name or number:"
end

def validate_selection(song_request, songs)
  song_number = song_request.to_i

  #if song_request is not an integer, song_number will be zero
  if song_number > 0 && song_number <= songs.length
    puts "Playing #{songs[song_number - 1]}" 
  
  #song_request == valid song title
  elsif songs.include?(song_request) 
    puts "Playing #{song_request}" 
  else 
    puts "Invalid input, please try again"
  end
end

def play(songs)
  play_prompt
  song_request = gets.strip
  validate_selection(song_request, songs)
end

def list(songs)
  songs.each_index {|x| 
    puts "#{x + 1}. #{songs[x]}" 
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_input = ""
  
  until user_input == "exit"
    puts "Please enter a command:"
    user_input = gets.strip
    
    case user_input
      when "help"
        help
      when "play"
        play(songs)
      when "list"
        list(songs)
      when "exit"  
        break
      else
        puts "I don't understand."
    end
  end
  
  exit_jukebox
end

