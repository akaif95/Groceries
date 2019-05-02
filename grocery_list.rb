def create_list
  print "What is the list name: "
  name = gets.chomp
  
  hash = { "name" => name, "items" => Array.new }
  return hash
  
end 


def add_list_item
  print "What is the item you would like to add: "
  item_name = gets.chomp
  
  print "How much do you want: "
  quantity = gets.chomp.to_i
  
  hash = { "name" => item_name, "quantity" => quantity }
  return hash
  
end 

def print_list(list)
  puts "List: #{list['name']}"
  puts "-" * 60

  list["items"].each do |item|
    puts "\tItem: " + item['name'] + "\t\t\t" +
    "Quantity: " + item['quantity'].to_s
    puts "-" * 60
  
  end 
end
