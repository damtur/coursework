ActiveAdmin.register Publication do
    form do |f|
      f.inputs "Details" do
        f.input :title
				f.input :short_title
        f.input :price
				f.input :image_path
      end
      f.inputs "Content" do
        f.text_area :content
      end
      f.buttons
    end
end
