t1 = { { age = 1, name = '123' }, { age = 2, name = '345' } }
t2 = { name = '小炮仗', sex = true }

table.insert(t1, t2) -- 插入,合并
print(t1[3] == t2)   -- true

-- arr....{index}
-- arr 操作目标
-- index 删除指定索引元素 可选,不指定默认为最后一个索引
table.remove(t1) -- 移除 t1 的最后一个元素

table.sort(t1, function(a, b)
  return b.age < a.age --降序
end)

for key, value in pairs(t1) do
  print(key, value.age)
end


tb = { 'xpz', 'hnl' }
str = table.concat(tb, ';') -- 拼接,不修改原表,返回一个字符串
print(str)                  -- xpz;hnl
