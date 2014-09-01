require 'dumpy/version'

module Dumpy
  class Uploader
  	require 'rest_client'
	require 'json'
	require 'clipboard'

    def self.upload(filename)
      	url = "http://dumpy.io/upload.php"
		download_link = "http://dumpy.io/download.php?q="
		begin 
			current_dir = `pwd`
			file = current_dir.strip + "/" + filename
			
			begin
			  data = RestClient.post(url, :file => File.new(file))
			rescue => e
				e.response
			end
			
			data = JSON.parse(data)
			Clipboard.copy download_link+data[0]
			puts "Your link was copied to your clipboard. Just paste it! \nThe download link will be valid for 3 days. \n:-) \n"
		rescue => e
			puts "Something's wrong."
		end
    end
  end
end
