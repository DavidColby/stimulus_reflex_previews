module PostsHelper
  def to_markdown(content)
    return '' if content.blank?

    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      fenced_code_blocks: true,
      autolink: true
    )
    markdown.render(liquified(content)).html_safe
  end

  def liquified(content)
    Liquid::Template
      .parse(content)
      .render('company_name' => 'Hotwiring Rails')
  end
end
