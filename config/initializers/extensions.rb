# hack redcloth into html5 compliance
module RedCloth::Formatters::HTML
  def acronym(opts)
    opts[:block] = true
    "<abbr#{pba(opts)}>#{caps(:text => opts[:text])}</abbr>"
  end
end

# w3c compatible date format (sitemap.xml) date.to_s(:w3c)
Time::DATE_FORMATS[:w3c] =
    lambda { |date| date.strftime( "%Y-%m-%dT%H:%M:%SZ" ) }
