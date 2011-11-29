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
end
