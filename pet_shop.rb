def pet_shop_name(name)
  name = @pet_shop[:name]
  return name
end

def total_cash (cash)
cash = @pet_shop[:admin][:total_cash]
return cash
end 

def add_or_remove_cash (cash,amount)
new_amount= @pet_shop[:admin][:total_cash]=@pet_shop[:admin][:total_cash]+amount
return new_amount
end

def pets_sold(pets)
pets = @pet_shop[:admin][:pets_sold]
return pets
end

def increase_pets_sold(new_number_pets,increase)
  new_number_pets= @pet_shop[:admin][:pets_sold]=@pet_shop[:admin][:pets_sold]+increase
  return new_number_pets
end

def stock_count (stock_number)

  stock_number= @pet_shop[:pets].length
  return stock_number
end

def pets_by_breed(pet_shop, breed)
  type_animal = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      type_animal << pet
    end
  end
  return type_animal
end

def find_pet_by_name(pet_shop, name)
  pet_name = nil
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_name = pet
    end
  end
  return pet_name
end


def remove_pet_by_name (pet_shop, name)
   pet_name = nil
   for pet in pet_shop[:pets]
     if pet[:name] == name
       pet_name  = pet
     end
   end
   return pet_name.delete(:name)
 end

 def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
  customer = customers[:pets].length
    return customer
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
end


#whyyyyyy??? :(
def customer_can_afford_pet(customer,pets_shop)
  customer_money=customer[:cash]
  for pet in pets_shop[:pets]
    if pet[:price]>= customer_money
      return false
    else
      return true
    end
  end
end