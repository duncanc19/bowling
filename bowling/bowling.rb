
  
class Bowling

  def to_array(score)
    
    return score.split

  end

  def to_subarray(score_array)
    new_array = []
    score_array.each do |round|
      new_array.push(round.split(""))
    end
    
    return new_array

  end



  def add_pairs(score_array)
    new_array = []
    score_array.each do |n|
      if n[0] == "X"
        new_array.push("X")
      elsif n[1] == "/"
        new_array.push("/")
      else
        new_array.push(n[0].to_i+n[1].to_i)
      end
    end  
    new_array

  end

end