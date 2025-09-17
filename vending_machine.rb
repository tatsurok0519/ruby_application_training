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

  def pay(user)
    puts "商品を選んでください"
    chosen_drink = user.choose_drink
    change = user.money - self.drinks[chosen_drink].fee
    if change >= 0
      puts "ご利用ありがとうございました！お釣りは#{change}円です。"
      SlotGame.new.play_slot
    else
      puts "投入金額が足りません"
    end
  end
end