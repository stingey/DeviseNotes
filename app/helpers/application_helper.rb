module ApplicationHelper
  def page_title(title = '')
    base_title = 'Note Tracker'
    if title.empty?
      base_title
    elsif user_signed_in?
      title + " | " + current_user.first_name
    else
      title + " | " + base_title
    end

  end
end
