ActiveAdmin.register Answer do


  # form to add answers to questions
  # the questions are currently shown as their explanation 
  form do |f|
    f.inputs "Answer" do
      # the line below shows question_id as the question.explanation
      f.input :question_id, :as => :select, :collection => Question.all.map{ |question| [question.explanation, question.id]}
      f.input :answer
    end
    
    f.actions
  end
  
end
