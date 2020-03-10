require "./coronavirus_updates/version"
require 'csv'
require 'json'

module CoronavirusUpdates
  class Error < StandardError; end
  # Your code goes here...

  class Day
  	def self.updates(date)
  		rows = []

  		path = 'reports/'+date.to_s+'.csv'
	  	file_existance = File.file?(path)

	  	if file_existance
		  	logo_path = File.join( File.dirname(__FILE__), path )
				puts logo_path

				CSV.foreach(logo_path, headers: true, converters: :all) do |row|
				  rows << row.to_hash
				end
			end

			puts rows.to_json
	  end
	end
end

CoronavirusUpdates::Day.updates("03-06-2020")