ActiveAdmin.register Question do
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Question", :multipart => true do
      f.input :lesson_id, :as => :select, :collection => Lesson.all
      f.input :question
      f.input :audioclip
    end
   
   # BELOW CODE IS TO ADD IN ANSWERS TO QUESTIONS SO IT CAN BE DONE AT SAME TIME 
   # f.has_many :items do |app_f|
    #  app_f.inputs "Item" do
     #   if !app_f.object.nil?
      #    app_f.input :_destroy, :as => :boolean, :label => "Destroy?"
       # end
        
      #  app_f.input :name
       # app_f.input :description
       # app_f.input :price
      #  app_f.input :image
    #  end
    # end
    
    # SUBMIT BUTTON BELOW
    f.actions
  end
  
end
