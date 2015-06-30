#!/usr/bin/env ruby

require 'net/http'
require 'uri'
require 'nokogiri'
require 'openssl'

uri = URI.parse("https://en.wikipedia.org/wiki/Steve_Wozniak");
http = Net::HTTP.new(uri.host, uri.port)
if uri.scheme == "https"
	http.use_ssl=true
	http.verify_mode = OpenSSL::SSL::VERIFY_NONE
end
begin
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  if response.code == "302"
	   response = Net::HTTP.get_response(URI.parse(response.header['location']))
end

document = Nokogiri::HTML(response.body)
somefile = File.open("sample.html", "w")
somefile.puts document
somefile.close

rescue Exception => details    # or the Exception class name may be SocketError
		p "Failed to load the data: #{details}"
		version = "offline"
end
