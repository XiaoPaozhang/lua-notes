num = 0
-- while循环 条件do....end
while num < 5 do
  print(num)
  num = num + 1
end

-- do while循环  repeat until条件（注意：条件是结束条件
num = 0
repeat
  print(num)
  num = num + 1
until num > 5 -- 满足条件跳出结束条件

-- for循环,默认i自增加1
-- for 初始值,结束条件 do
for i = 2, 5 do
  print(i)
end

-- 也可以自定义增量为2
-- for 初始值,结束条件,增量 do
for i = 2, 5, 2 do
  print(i)
end
