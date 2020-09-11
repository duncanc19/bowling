
  
class Bowling

  def to_array(score)
    
    return score.split

  end

  def add_pairs(score_array)

    score_array.each do |n|
      if Integer(n)
      puts "Current number is: #{n}" 
    end
  end

end