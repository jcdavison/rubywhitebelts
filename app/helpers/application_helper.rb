module ApplicationHelper 

  def complete?(user_id, challenge_id)
   User.find(user_id).completions.where("challenge_id = ?", challenge_id).exists?
  end
  
  def belt_progress(user_id, belt_id)
    @completions = User.find(user_id).completions.collect do |completion|
      completion.challenge_id
    end
    @challenges = Belt.find(belt_id).challenges.collect do |challenge|
      challenge.id
    end
    # @progress = ((((@completions & @challenges).count) / @challenges.count) * 100).round(0)
    @progress = @completions & @challenges
    ((@progress.count.to_f / @challenges.count.to_f ) * 100).round(0)
    
  end

end
