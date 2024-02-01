a = { [0] = 1.2, [-1] = 3, 4, 5, [10] = 'a' }

-- ipairs迭代器遍历
for i, v in ipairs(a) do
  -- print('ipairs便利键值' .. i .. '-' .. v)
  -- ipairs便利键值1-4
  -- ipairs便利键值2-5

  -- 它是从1开始遍历,所以小于1的都不会遍历到,比如这里的[0] = 1.2
  -- 且只遍历连续索引,断续的索引不再遍历,比如这里的[10] = 'a'
end

--pairs迭代器遍历
for i, v in pairs(a) do
  print('pairs便利键值' .. i .. '-' .. v)
  -- pairs便利键值1-4
  -- pairs便利键值2-5
  -- pairs便利键值0-1.2
  -- pairs便利键值10-a
  -- pairs便利键值-1-3

  -- pairs可以遍历所有信息,建议使用
end
