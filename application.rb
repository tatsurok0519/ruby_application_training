class Drink
  def initialize(name, fee)
    @name = name
    @fee = fee
  end

  def name
    @name
  end

  def fee
    @fee
  end
end

class VendingMachine
  def initialize(drinks)
    @drinks = drinks
  end

  def drinks
    @drinks
  end

  def show_drinks
    puts "いらっしゃいませ。以下の商品を販売しています"
    i = 0
    self.drinks.each do |drink|
      puts "【#{i}】#{drink.name}: #{drink.fee}円"
      i += 1
    end
  end
end

class User
end

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