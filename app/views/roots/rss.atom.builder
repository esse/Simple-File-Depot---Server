atom_feed do |feed|
  feed.title APP_CONFIG['feed_title']
  feed.author APP_CONFIG['feed_author']
  if @rss.first
    feed.updated @rss.first.created_at
    for file in @rss
      feed.entry(file) do |entry|
        entry.title "#{file.name}"
        entry.summary :type => 'xhtml' do |xhtml|
          xhtml.p {
            xhtml.text(file.tag_list.join(", ")) }
        end   
      end
    end
  else
    feed.updated DateTime.now
  end
end
