module OenologistsHelper

  def jobs_for_select
    
    Job.order(:name).map.with_index{|x| [x.name, x.id]}
    
  end

  
  def magazines_for_select
    Magazine.order(:Name).map.with_index{|x| [x.Name, x.id]}
  end

end
