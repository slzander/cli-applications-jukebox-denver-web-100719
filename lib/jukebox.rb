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


def list(songs)
  songs.each_with_index do |a, index|
    puts "#{index += 1}. #{a}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  if songs.include?(response)
    puts "Playing #{response}"
  elsif response.to_i > 0 && response.to_i < songs.length 
    puts "Playing #{songs[response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end 
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  while input != "exit" 
    if input == "list"
      list(songs)
      puts "Please enter a command:"
      input = gets.strip
    elsif input == "play"
      play(songs)
      puts "Please enter a command:"
      input = gets.strip
    else input == "help"
      help
      puts "Please enter a command:"
      input = gets.strip
    end
  end 
  exit_jukebox
end







