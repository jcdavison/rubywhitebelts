module BeltsHelper

  def status(completions)
    p "completions"
    p completions
    @completed = completions.count(true).to_f
    @total = completions.count.to_f
    ((@completed/@total) * 100).round(0)
  end

end