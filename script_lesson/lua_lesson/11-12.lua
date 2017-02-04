-- 関数
function greet (name)
	print("hello! " .. name .. " !")
end
function greetRet (name)
	return "hello! " .. name .. " !"
end

greet("Tom")
greet("Bob")
print("--------------")
s1 = greetRet("Tom")
s2 = greetRet("Bob")
print(s1, s2)

-- ローカル変数
function sum (a, b)
	-- local : ローカル変数
	local total = a + b
	return total
end
print(sum(1, 2))
print(sum(11, 22))
-- ローカル変数にアクセスするとnil
print(total)
-- ... : 可変引数（いくつでもOK）※配列になる
function sum2 (...)
	local a = {...}
	local total = 0
	for i=1, #a do
		total = total + a[i]
	end
	return total
end
print(sum2(1,2,4,6))
