atom_feed :language => 'en-US' do |feed|
  feed.title @title
  feed.updated @updated

  @posts.each do |item|
    next if item.updated_at.blank?

    feed.entry( item ) do |entry|
      entry.url post_url(item)
      entry.title item.title
      entry.content item.content, :type => 'html'
      entry.updated(item.updated_at.to_s(:w3c))
      entry.author "KD0PNS"
    end
  end
end
