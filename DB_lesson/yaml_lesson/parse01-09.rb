# data = [
# 	'test01@gmail.com',
# 	'test02@gmail.com'
# ]
require 'yaml'

data = YAML.load_file('mydata.yml')
p data
