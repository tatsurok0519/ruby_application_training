require "./drink"
require "./vending_machine"
require "./user"
require "./slot_game"

puts "商品を用意してください。"
drinks = []
3.times do |i|
  puts "商品名を入力してください。"
  drink_name = gets.chomp
  puts "金額を入力してください。"
  drink_fee = gets.to_i
  drinks << Drink.new(drink_name,drink_fee)
end

vending_machine = VendingMachine.new(drinks)
vending_machine.show_drinks

puts "あなたはお客さんです。投入金額を決めてください。"
money = gets.to_i
user = User.new(money)

vending_machine.pay(user)