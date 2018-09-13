module ApplicationHelper

  def ui_status_label(content)
    unless content
      content = "?"
    end
    case content
    when "due"
      class_name = "yellow"
    when "overdue"
      class_name = "red"
    when "paid"
      class_name = "green"
    else
      class_name = ""
    end

    content_tag(:div, content.capitalize, class:['ui','label',class_name])
  end

  def link_to_associate(link_name, association, association_name_plural, class_names )
    if association
      link_to(link_name, "/#{association_name_plural}/#{association.id}", class: class_names)
    end
  end
end
