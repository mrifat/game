class Game
  def initialize(difficulty)
    @diff = difficulty
  end

  def calculateCpuNumber(sum,diff)
    if @diff == 2
      if sum >= 71 && sum <= 79
        return 80 - sum
      else
        generateRandomNumber
      end# end @diff == 2

    elsif @diff == 3
      if sum >= 71 && sum <=79
        return 80 - sum
      elsif sum >= 81 && sum <= 88
        return 89 - sum
      else
        generateRandomNumber
      end#end @diff == 3

    elsif @diff == 4
      if sum >= 71 && sum <=79
        return 80 - sum
      elsif sum >= 81 && sum <= 88
        return 89 - sum
      elsif sum >= 90
        return 100 - sum
      else
        generateRandomNumber
      end#end of @diff == 4

    else
      generateRandomNumber
    end#end of big if

  end

  def generateRandomNumber
    return (1 + rand(10))
  end

end
