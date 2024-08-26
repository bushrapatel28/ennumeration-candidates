# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here
    @candidates.each do |candidate|
      if candidate[:id] == id 
        return candidate
      end
    end
    nil
  end
  
  def experienced?(candidate)
    # Your code Here
    if candidate[:years_of_experience] >= 2
      true
    else
      false
    end
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    candidates.filter do |candidate|
      if experienced?(candidate) && candidate[:github_points] >= 100
        if ruby_or_python(candidate)
          applied?(candidate) && candidate[:age] > 17
            candidate
        end
      end
    end
  end
  
  # More methods will go below
  
  def applied?(candidate)
    candidate[:date_applied] < 15.days.ago.to_date
  end
  
  def ruby_or_python(candidate)
    candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
  end

  def order_by_qualifications(candidates)
    sorted_candidates = candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
  end
