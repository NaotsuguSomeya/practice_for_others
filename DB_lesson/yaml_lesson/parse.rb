require 'yaml'

users = [
	{'name' => 'someya', 'score' => 90},
	{'name' => 'yocchan', 'score' => 100},
]
# YAMLに変換
puts users.to_yaml
