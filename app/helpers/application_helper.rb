module ApplicationHelper

  def ui_status_label(content)
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
end
