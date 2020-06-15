collection = ["ruby", "rspec", "rails"]
collection2 = ["ruby", "rspec", "sails"]

# your code goes here

def begins_with_r(element)
  if element.start_with?("r")
     true
  else
     false
  end
end

begins_with_r(collection2)