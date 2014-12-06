xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0", "xmlns:atom" => "http://www.w3.org/2005/Atom" do
  xml.channel do
    # Required to pass W3C validation.
    xml.atom :link, nil, {
      :href => births_url(:format => 'rss'),
      :rel => 'self', :type => 'application/rss+xml'
    }

    # Feed basics.
    xml.title             page_title
    xml.description       @page[:body].to_s.gsub(/<\/?[^>]*>/, "") # .to_s protects from nil errors
    xml.link              births_url(:format => 'rss')

    # News items.
    @births.each do |birth|
      xml.item do
        xml.title         birth.name
        xml.link          birth_url(birth)
        xml.description   truncate(birth.birth_date, :format => 'short')
        xml.pubDate       birth.birth_date.to_s(:rfc822)
        xml.guid          birth_url(birth)
      end
    end
  end
end
