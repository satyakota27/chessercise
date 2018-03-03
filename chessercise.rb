#input (-piece 'Knight' -location 'd5')
unless ARGV.length == 4
  puts 'please enter all the input data'
  exit
end


piece_type = ARGV[1].to_s
location = ARGV[3].to_s
puts piece_type, location


def calculate_possible_moves(piece, location)
  'h1 h2' #sample output
end

#output
puts calculate_possible_moves(piece_type, location)


