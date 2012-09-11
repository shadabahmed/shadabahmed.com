class EnkiFormatter
  class << self
    def format_as_xhtml(text, type)
      formatter = lambda do |text|
        text = CGI::unescapeHTML(text)
        if type == 'markdown'
          Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true).render(text)
        else
          RedCloth.new(text).to_html
        end
      end
      Lesstile.format_as_xhtml(text, :text_formatter => formatter, :code_formatter => Lesstile::CodeRayFormatter)
    end
  end
end
