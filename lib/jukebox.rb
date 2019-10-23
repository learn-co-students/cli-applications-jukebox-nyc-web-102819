songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  
  if (1..9).to_a.include?(user_response.to_i)
    puts "Playing #{songs[user_response.to_i - 1]}"
  elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index+1}" + ". " + "#{item}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_response = ""
  while user_response
    puts "Please enter a command:"
    user_response = gets.strip
    case user_response
      when "help"
        help
      when "play"
        play(songs)
      when "list"
        list(songs)
      when "exit"
        exit_jukebox
        break
    end 
  end 
end
