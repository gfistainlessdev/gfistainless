module ApplicationHelper
  def nested_categories(productcategories,path,div_class_name)
     productcategories.map do |productcategory, subcategories|
       render(path, productcategory: productcategory) + content_tag(:div, nested_categories(subcategories,path,div_class_name), class: div_class_name)
     end.join.html_safe
   end
  
end
