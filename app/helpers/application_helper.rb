module ApplicationHelper
  def format_date(date_integer, separator = '-')
    return "%04d" % (date_integer / 10000) + separator + 
      "%02d" % (date_integer % 10000 / 100) + separator + 
      "%02d" % (date_integer % 100)
  end
end
