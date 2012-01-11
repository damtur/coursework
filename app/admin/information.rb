ActiveAdmin.register Information do
    form do |f|
      f.inputs "Details" do
        f.input :title
				f.input :picture
      end
      f.inputs "Content" do
        f.text_area :content
      end
      f.buttons
    end
end
