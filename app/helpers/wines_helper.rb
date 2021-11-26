module WinesHelper

  def strains_for_select
    
    Strain.order(:name).map.with_index{|x| [x.name, x.id]}
    
  end

  # Method to get oenologists ordered by age
  def oenologists_for_select
    Oenologist.order(:Age).map.with_index{|x| [x.Name, x.id]}
  end


end
