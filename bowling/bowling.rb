
  
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

  def get_total_score(frame_scores)
    sum = 0
    frame_scores.each do |i|
      sum += i
    end
    sum
  end

  def check_for_spares(score_array)
    previous_frame_spare = false
    score_array.each do |frame|
      if previous_frame_spare == true
        frame[0] = (frame[0].to_i * 2).to_s
      end
      if frame[1] == "/"
        previous_frame_spare = true
      else 
        previous_frame_spare = false
      end
    end
  end

end