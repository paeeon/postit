module ApplicationHelper
  def formatted_time(time)
    time.strftime("%B %e %Y at %l:%M%p %Z")
  end

  def fix_url(str)
    str.starts_with?('http://') ? str : "http://#{str}"
  end
end
