ActiveAdmin.register Question do
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Question", :multipart => true do
      f.input :lesson_id, :as => :select, :collection => Lesson.all
      f.input :question
      f.input :audioclip
      f.input :explanation
    end
   
   # BELOW CODE IS TO ADD IN ANSWERS TO QUESTIONS SO IT CAN BE DONE AT SAME TIME 
    #f.inputs "Answer", :for => [:answer, f.object.answer || Answer.new] do
      #answer.input :answer
    #end
        
    
    # SUBMIT BUTTON BELOW
    f.actions
  end
  
end
