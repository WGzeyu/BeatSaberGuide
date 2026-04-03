# Jekyll插件：处理自定义语法
# 1. 将 [彩虹]...[/彩虹] 标签转换为带CSS类的HTML
# 2. 将 mp4 视频引用转换为 video 标签
# 3. 将 [彩虹框]...[/彩虹框] 转换为彩虹背景警告框（整段）
# 4. 将 [警告框]...[/警告框] 转换为红色背景警告框（整段）
# 5. 将 [懒加载]alt|占位符|真图[/懒加载] 转换为懒加载图片

# 在渲染前处理所有页面和文档
Jekyll::Hooks.register [:pages, :documents], :pre_render do |document|
  if document.extname == '.md' && document.content
    content = document.content

    # 1. 处理彩虹标签：使用特殊标记保护彩虹内容
    content = content.gsub(/\[彩虹\](.*?)\[\/彩虹\]/m) do |match|
      inner = match.match(/\[彩虹\](.*?)\[\/彩虹\]/m)[1]
      "<!--RAINBOW_START-->#{inner}<!--RAINBOW_END-->"
    end

    # 2. 处理彩虹框标签：整段彩虹背景警告框
    content = content.gsub(/\[彩虹框\](.*?)\[\/彩虹框\]/m) do |match|
      inner = match.match(/\[彩虹框\](.*?)\[\/彩虹框\]/m)[1]
      "<!--RAINBOWBOX_START-->#{inner}<!--RAINBOWBOX_END-->"
    end

    # 3. 处理警告框标签：整段红色背景警告框
    content = content.gsub(/\[警告框\](.*?)\[\/警告框\]/m) do |match|
      inner = match.match(/\[警告框\](.*?)\[\/警告框\]/m)[1]
      "<!--WARNBOX_START-->#{inner}<!--WARNBOX_END-->"
    end

    # 4. 处理懒加载图片：[懒加载]alt|占位符|真图[/懒加载]
    content = content.gsub(/\[懒加载\]([^\|]+)\|([^\|]+)\|([^\|]+)\[\/懒加载\]/) do |match|
      parts = match.match(/\[懒加载\]([^\|]+)\|([^\|]+)\|([^\|]+)\[\/懒加载\]/)
      alt = parts ? parts[1].strip : ""
      placeholder = parts ? parts[2].strip : ""
      real_img = parts ? parts[3].strip : ""
      img_id = "lazy_" + real_img.gsub(/[^a-zA-Z0-9]/, '_').gsub(/_+/, '_')
      "<!--LAZYIMG_START#{alt}||#{placeholder}||#{real_img}||#{img_id}LAZYIMG_END-->"
    end

    # 5. 处理 mp4 视频：将 ![alt](path.mp4) 转换为 video 标签占位符
    content = content.gsub(/!\[([^\]]*)\]\(([^\)]+\.mp4)\)/) do |match|
      alt_match = match.match(/!\[([^\]]*)\]/)
      path_match = match.match(/\]\(([^\)]+\.mp4)\)/)
      alt = alt_match ? alt_match[1] : ""
      path = path_match ? path_match[1] : ""
      path_no_ext = path.sub(/\.mp4$/, '')
      video_id = "video_" + path_no_ext.gsub(/[^a-zA-Z0-9]/, '_')
      "<!--VIDSTART#{alt}||#{path_no_ext}||#{video_id}VIDEND-->"
    end

    document.content = content
  end
end

# 在渲染后转换临时标记为最终HTML
Jekyll::Hooks.register [:pages, :documents], :post_render do |document|
  if document.output
    output = document.output

    # 1. 将彩虹标记转换为最终的HTML
    output = output.gsub(/<!--RAINBOW_START-->(.*?)<!--RAINBOW_END-->/m) do
      inner = $1 || ""
      '<b class="rainbow2">' + inner + '</b>'
    end

    # 处理原始的 [彩虹]...[/彩虹] 标签（用于 markdownify 处理的内容）
    output = output.gsub(/\[彩虹\](.*?)\[\/彩虹\]/m) do
      inner = $1 || ""
      '<b class="rainbow2">' + inner + '</b>'
    end

    # 2. 将彩虹框标记转换为最终的HTML
    output = output.gsub(/<!--RAINBOWBOX_START-->(.*?)<!--RAINBOWBOX_END-->/m) do
      inner = $1 || ""
      # 移除 markdown 生成的 <p> 和 </p> 标签
      inner = inner.gsub(/<\/p>/, '').gsub(/<p>/, '').strip
      '<div class="intro2 clearfix rainbownote"><p><i class="fa fa-exclamation-triangle"></i> ' + inner + '</p></div>'
    end

    # 处理原始的 [彩虹框]...[/彩虹框] 标签
    output = output.gsub(/\[彩虹框\](.*?)\[\/彩虹框\]/m) do
      inner = $1 || ""
      inner = inner.gsub(/<\/p>/, '').gsub(/<p>/, '').strip
      '<div class="intro2 clearfix rainbownote"><p><i class="fa fa-exclamation-triangle"></i> ' + inner + '</p></div>'
    end

    # 3. 将警告框标记转换为最终的HTML
    output = output.gsub(/<!--WARNBOX_START-->(.*?)<!--WARNBOX_END-->/m) do
      inner = $1 || ""
      inner = inner.gsub(/<\/p>/, '').gsub(/<p>/, '').strip
      '<div class="intro2 clearfix"><p><i class="fa fa-exclamation-triangle"></i> ' + inner + '</p></div>'
    end

    # 处理原始的 [警告框]...[/警告框] 标签
    output = output.gsub(/\[警告框\](.*?)\[\/警告框\]/m) do
      inner = $1 || ""
      inner = inner.gsub(/<\/p>/, '').gsub(/<p>/, '').strip
      '<div class="intro2 clearfix"><p><i class="fa fa-exclamation-triangle"></i> ' + inner + '</p></div>'
    end

    # 4. 将懒加载图片标记转换为最终的HTML
    output = output.gsub(/<!--LAZYIMG_START([^\|]*)\|\|([^\|]*)\|\|([^\|]*)\|\|([^\|]*)LAZYIMG_END-->/) do
      alt = $1 ? $1.strip : ""
      placeholder = $2 ? $2.strip : ""
      real_img = $3 ? $3.strip : ""
      img_id = $4 ? $4.strip : ""
      '<p><img src="' + placeholder + '" data-src="' + real_img + '" class="lzy_img img-responsive img-thumbnail" id="' + img_id + '" onclick="limg(\'' + img_id + '\');" alt="' + alt + '"></p>'
    end

    # 5. 将视频标记转换为 video 标签
    output = output.gsub(/<!--VIDSTART([^\|]*)\|\|([^\|]*)\|\|([^\|]*)VIDEND-->/) do
      alt = $1 || ""
      path = $2 || ""
      video_id = $3 || ""
      # 直接设置 src，不使用懒加载
      '<video id="' + video_id + '" muted playsinline src="' + path + '.mp4" class="img-responsive img-thumbnail" autoplay="autoplay" loop="loop" style="height:480px !important;width:100%;">你的浏览器不支持播放当前视频</video>'
    end

    # 最后修复：移除多余的 </p> 标签在 </div> 后面
    output = output.gsub(/<\/div><\/p>/, '</div>')

    document.output = output
  end
end