def prompt_user
  puts "Please enter a command:"
end

def help
  puts "I accept the following commands:"
  puts"- help : displays this help message"
  puts"- list : displays a list of songs you can play"
  puts"- play : lets you choose a song to play"
  puts"- exit : exits this program"
end

def invalid_input
  puts "Invalid input, please try again"
end

def list(songs_array)
  songs_array.each_with_index do |song, i|
    puts "#{i + 1}. " + song
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  response = gets.strip
  if songs_array.find{ |name| name == response }
    puts "Playing #{response}"
  elsif response.to_i > 0 && response.to_i <= songs_array.size
    puts "Playing #{songs_array[response.to_i - 1]}"
  else
    invalid_input
  end
end

def exit_jukebox
  puts "Goodbye"

end

def run(songs)
  loop do
    prompt_user
    input = gets.strip
    case input
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      else
        invalid_input
    end
  end
end