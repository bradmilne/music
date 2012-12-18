ActiveAdmin.register Answer do

  form do |f|
    f.inputs "Answer" do
      f.input :question_id, :as => :select, :collection => Question.all.map(&:explanation)
      f.input :answer
    end
    
    f.actions
  end
  
end
