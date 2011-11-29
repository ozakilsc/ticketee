#encoding: utf-8

module NavigationHelpers

  def path_to(page_name)
    case page_name
    # 符合'首页'或'首 页'的链接时
    when /首\s?页/
      '/'
    when /"([^\"]*)"的工程页面/
      # $1: 第一个参数
      project_path(Project.find_by_name!($1))
    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "不能从页面\"#{page_name}\" 进行路由。\n" +
          "在 #{__FILE__}文件里增加一个吧。"
      end
    end
  end
end
World(NavigationHelpers)