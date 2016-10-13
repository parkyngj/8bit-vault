module GbApiAdapter
  include HTTParty

  KEY = ENV['GB_KEY']

  def self.query_for_gameboy(name)
    url = "http://www.giantbomb.com/api/games/?api_key=#{KEY}&filter=platforms:57,name:#{name}&format=json&limit=100"

    response = HTTParty.get(url)

  end

  def self.platform_query(name)
    url = "http://www.giantbomb.com/api/platforms/?api_key=#{KEY}&filter=name:#{name}&format=json&limit=100&field_list=abbreviation,api_detail_url,company,deck,id,image,name,original_price,release_date&developers=true"

    response = HTTParty.get(url)
    parsed_response = response.parsed_response
    response_hash = parsed_response["results"][0]

    Platform.create(name: response_hash['name'])
  end
end
