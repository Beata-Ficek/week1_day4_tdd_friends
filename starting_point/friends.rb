

def get_name(person)
  return person[:name]
end


def return_fav_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_food(person, food)
  if person[:favourites][:snacks][0] == food
    return true
  else
    return false
  end
end

def add_friend(person, name)
  person[:friends].push(name)
end

def remove_friend(person, name)
  person[:friends].delete(name)
end

def how_much_money(people)
  money = 0
  for person in people
    if person[:monies] >= 0
      money += person[:monies]
    end
  end
  return money
end



def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end
#
# def food_together(people)
# food = ""
#   for person in people
#
#     food + person[:favourites][:snacks][0]
#   end
#   puts food
# end

def food_together(people)
   food = ""

   for person in people
     snacks_string = person[:favourites][:snacks].join(", ")
     food << snacks_string + ", "
   end
   return food.chomp(", ")

end
