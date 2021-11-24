class WineValidator < ActiveModel::Validator

  def validate(record)
    
    if record.wines_strains.present?

      # puts record.wines_strains

      sum = 0.0

      record.wines_strains.each{|n| 
        sum+=n.percentage.to_f
        # puts sum
      }end

      if(sum == 0 || sum != 100 )
        record.errors.add(:percentage, "Each wine must have at least one strain, and strain percentages must add up to 100%")
      end

  end

end