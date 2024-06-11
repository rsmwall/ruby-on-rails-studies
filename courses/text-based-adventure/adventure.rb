# frozen_string_literal: true

# Text based adventure game in ruby

# 1. Check if player is alive
# 2. Let the player leave the room
# 3. Check to see if are monsters in the room
# 4.Allow searching for treasures
# 5. Different types of rooms
# 6. RNG (random number generator)
# 7. Did we find treasure? - naming the treasures
# 8. Monsters deal damage - health to zero = game over

number_of_rooms_explored = 1
treasure_count = 0
damage_points = 5
escaped = false
monster = false
current_room = ''

# Introduction
puts 'You are traped in a dangeon. See if you can find treasures before you escape!'
puts 'Watch out for monsters! They will get you!'
puts 'To play, type one of the given commands.'

while damage_points.positive? && escaped == false
  # Game code

  actions = ['m - move', 's - search']

  puts "Room ##{number_of_rooms_explored}"
  puts current_room

  # Monster Encounter
  if monster
    puts 'Ah! Real monsters! A monster is approaching!'
    actions << 'f - fight'
  end

  print "What do you do? (#{actions.join(', ')})\n> "
  player_action = gets.chomp

  # Monster Attacks
  if monster && monster_attack?
    damage_points -= 1
    puts 'OUCH, you got hit!'
  end

  # Player commands
  if player_action == 'm'
    current_room = create_room
    number_of_rooms_explored += 1
    monster = has_monster?
    escaped = has_escaped?
  elsif player_action == 's'
    if has_treasure?
      puts "WOW THATS SUPER COOL YOU FIND #{treasure}!"
      treasure_count += 1
    else
      puts 'You searched, but you found NOTHING!'
    end

    # Rigged condition - searching triggers monsters

    if monster == false
      monster = has_monster?
    end
  elsif player_action == 'f'
    if defeat_monster?
      monster = false
      puts 'You defeated the monster!'
    else
      puts 'You missed!'
    end
  end
end

if damage_points.positive?
  puts 'Good job, you made it!'
  puts "You explored #{number_of_rooms_explored} rooms and found #{treasure_count} treasures."
else
  puts 'Oh no! You didnt made it!'
  puts "You explored #{number_of_rooms_explored} rooms before YOUR DOOM!"
  puts 'You tried so hard, and got so far...'
  puts 'But in the end, it doesn\'t matter...'
end
