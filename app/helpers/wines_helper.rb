module WinesHelper

  def strains_for_select
    
    Strain.order(:name).map.with_index{|x| [x.name, x.id]}
    
  end



end
