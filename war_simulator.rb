
class WarSimulator
  puts "Enter First Army number of units:"
  first_army =  Integer(gets)

  until first_army > 0
    puts "Army units should be > 0, Please enter valid unit number"
    first_army =  Integer(gets)
  end

  puts "Enter Second Army number of units:"
  second_army = Integer(gets())
  until second_army > 0
    puts "Army units should be > 0, Please enter valid unit number"
    second_army =  Integer(gets)
  end

  # Ramdom method to check it fist army id winning.
  def self.first_army_winner?
    [true, false].sample
  end

  while (first_army > 0 && second_army >0)
    if first_army_winner?
      second_army-=1
    else
      first_army-=1
   end
  end

  # cheking who is the winner
  if first_army > 0
    puts "Winner is: First Army"
  elsif second_army > 0
    puts "Winner is: Second Army"
  end
end

