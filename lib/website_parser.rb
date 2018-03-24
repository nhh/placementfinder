require 'net/http'
require 'faraday'

class WebsiteParser
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def fetch
    Faraday.get(@url).body
  end

end