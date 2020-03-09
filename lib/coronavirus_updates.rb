require "./coronavirus_updates/version"

module CoronavirusUpdates
  class Error < StandardError; end
  # Your code goes here...

  class Day
  	def self.updates(date)
	  	require 'csv'
	  	require 'json'

	  	logo_path = File.join( File.dirname(__FILE__), 'reports/03-08-2020.csv' )
			
			rows = []
			CSV.foreach(logo_path, headers: true, converters: :all) do |row|
			  rows << row.to_hash
			end
			prows.to_json
	  end
	end
end

