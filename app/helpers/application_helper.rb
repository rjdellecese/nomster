module ApplicationHelper
  def conditional_wrapper(condition=true, options={}, &block)
    options[:tag] ||= :div
    if condition == true
      concat content_tag(options[:tag], capture(&block), options.delete_if{|k,v| k == :tag})
    else
      concat capture(&block)
    end
  end  
end
