def pet_shop_name(shop_name)
  shop_name = @pet_shop[:name]
end

def total_cash(sum)
  sum = @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(sum, num_2)
  Array @pet_shop[:admin][:total_cash] += num_2
end

def pets_sold(sold)
  sold = @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(current, sold)
  Array @pet_shop[:admin][:pets_sold] += sold
end

def stock_count(count)
  return count[:pets].length
end

def pets_by_breed(pet_shop, breed)
  pets_array = pet_shop[:pets]
  pets = 0
  for pet in pets_array
    if pet[:breed] == breed
      pets += 1
    end
  end
  return pets
end

def find_pet_by_name(pet_name, query)
  pets_array = pet_name[:pets]
  for pet in pets_array
    if query == pet[:name]
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_name, query)
  pets_array = pet_name[:pets]
  for pet in pets_array
    if query == pet[:name]
      pets_array.delete(pet)
      return nil
    end
  end
end

def add_pet_to_stock(pet_name, addition)
  pets_array = pet_name[:pets]
  pets_array << @new_pet
end

def customer_pet_count(customers)
  count = customers[:pets].count()
  return count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, pet)
  customer_cash = customer[:cash]
  pet_price = pet[:price]
    if pet_price <= customer_cash
      return true
    else
      return false
    end
end