require_relative '../../lib/website_parser'


describe WebsiteParser do

  describe "#initialize" do

    it "should accept an url as parameter and return the html from that website" do

      parser = WebsiteParser.new("http://bundler.io")
      expect(parser.url).to eql "http://bundler.io"
      result = parser.fetch
      expect(result).to include("Bundler")

    end

  end

end