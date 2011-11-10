module ProductcategoriesHelper
  def nested_categories(productcategories)
    productcategories.map do |productcategory, subcategories|
      render(productcategory) + content_tag(:div, nested_categories(subcategories), class: "nested_categories")
    end.join.html_safe
  end
end
