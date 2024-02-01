-- lua里面优先考虑转换为 number
-- js中是优先转为字符串的
print('-101.1' + 1) ---100.1

-- print('-101.1' + true) ---不过这样会报错,并没有js那么灵活

-- 不等于符号 ~=
print(1 ~= 3) -- true

-- && || ! 换作 and or not
print(true and false) -- false
print(true or false)  -- true
print(not true)       -- false

-- lua也支持短路
print(false and print("因为lua有短路,我是不会打印出来的")) -- false

-- lua不支持位运算符

-- 没有 += -= %= /= 自增 自减 三目
