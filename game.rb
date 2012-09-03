class Game
  def initialize(difficulty)
    @diff = difficulty
  end

  def calculateCpuNumber(sum, diff)
    if @diff == 1
      generateRandomNumber
    else
      if sum >= 71 && sum <= 79
        return 80 - sum
      elsif sum >= 81 && sum <= 88 && [3, 4].include?(@diff)
        return 89 - sum
       elsif sum >= 90 && @diff == 4
        return 100 - sum
       else
        generateRandomNumber
       end
    end
  end

  def generateRandomNumber
    return (1 + rand(10))
  end

end
