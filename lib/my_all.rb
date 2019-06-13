require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []

  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end

  if block_return_values.include?(false) # If any of the values passed into the block are false...
    false # Then return false
  else
    true # Otherwise, return true (all values are tr)
  end  
end
