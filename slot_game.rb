class SlotGame
  def play_slot
    result = []
    3.times do 
      result << rand(0..9)
    end
    puts "スロットゲームの結果は#{result.join}です！"
    if result[0] == result[1] && result[0] == result[2]
      puts "おめでとうございます！"
    else
      puts "残念でした〜"
    end 
  end
end