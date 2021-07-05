

def help
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  songs.each_with_index{ |song, index|
    puts "#{index+1}. #{song}"
  }
end

def play(songs)
  puts 'Please enter a song name or number:'
  input = gets.strip
  
  songs.length.times {|i|
    if input.to_i == i+1
      puts "Playing #{songs[i]}"
      return
    end
    if input == songs[i]
      puts "Playing #{songs[i]}"
      return
    end
  }
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  while true
    input = gets.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    end
  end
end