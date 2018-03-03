#input (-piece 'Knight' -location 'd5')
unless ARGV.length == 4
  puts 'please enter all the input data'
  exit
end

rook_moves = [{ x: 1, y: 0, steps: 7},
              { x: 0, y: 1, steps: 7},
              { x: 0, y: -1, steps: 7},
              { x: -1, y: 0, steps: 7}]

piece_type = ARGV[1].to_s
location = ARGV[3].downcase
puts piece_type, location

unless ['KNIGHT','ROOK','QUEEN'].include?(piece_type.upcase)
  puts 'please enter a valid piece type. KNIGHT or ROOK or QUEEN'
  exit
end

#setting up location coordinates
location_coords = location.split(//)
x = location_coords[0].ord - 96
y = location_coords[1]

if x < 1 || y < 1 || y > 8 || x > 8 || location.length!=2
  puts 'please provide a valid location for the piece'
  exit
end

def calculate_possible_moves(piece, location)
  'h1 h2' #sample output
end

#output
puts calculate_possible_moves(piece_type, location)


