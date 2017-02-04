require 'yaml'

File.open('mydata.yml') do |io|
	YAML.load_documents(io) do |d|
		p d
	end
end
