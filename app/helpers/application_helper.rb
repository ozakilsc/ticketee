#encoding: utf-8

module ApplicationHelper
  # 数组方式定义title，用" - "来连接
  def title(*parts)
=begin
    unless parts.empty?
      content_for :tilte do
        (parts << "Ticketee").join(" - ") unless parts.empty?
      end
    end
=end
    @title = (parts << "Ticketee").join(" - ") unless parts.empty?
    @title || "Ticketee"
  end

  def error_messages_for(object_name, options = {})
    options = options.symbolize_keys
    object = instance_variable_get("@#{object_name}")
    unless object.errors.empty?
      error_lis = []
      object.errors.each{ |key, msg| error_lis << content_tag("li", msg) }
      content_tag("div", content_tag(options[:header_tag] || "h2", "发生#{object.errors.count}个错误" ) +
          content_tag("ul", raw(error_lis)), "id" => options[:id] || "errorExplanation", "class" => options[:class] || "errorExplanation" )
    end
  end

end
