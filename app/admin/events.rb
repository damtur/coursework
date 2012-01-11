ActiveAdmin.register Event do
  form do |f|
  f.inputs "Content" do
    f.text_area :content
  end
  f.buttons
end
end
