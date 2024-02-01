a = {
  name = 'xpz', -- 其实也可以这么写自定义索引,越来越像js的对象了
  ['age'] = 2,
  [1] = false
}
-- 两种获取值的写法
print(a["name"])
print(a.age)
-- print(a.1) -- 如果是数字,不允许这么写
print(a[1])


-- 字典就必须用pairs来遍历,ipairs不行
for k, v in pairs(a) do
  print(k, v)
end
-- 1	false
-- name	xpz
-- age	2
