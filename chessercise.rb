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
y = location_coords[1].to_i

if x < 1 || y < 1 || y > 8 || x > 8 || location.length!=2
  puts 'please provide a valid location for the piece'
  exit
end

#calculating possible moves of rook
rook_moves.flat_map do |move|
  (1..move[:steps]).collect do |step|
    new_x = x + (move[:x] * step)
    new_y = y + (move[:y] * step)
    puts new_x, new_y
  end
end


