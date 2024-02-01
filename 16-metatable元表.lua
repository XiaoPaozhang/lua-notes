meta = {
  __tostring = function()
    return 'xpz'
  end
}
myTable = {}
-- 设置元表,类似继承?
setmetatable(myTable, meta)

print(myTable) -- xpz
-- myTable继承meta的__tostring方法
-- 在打印时默认会调用这个方法(js是在转换为字符串类型时会调用)
-- 但是注意,只有像__tostring这种特定的方法才会被继承.自己随便写的可不行

-- 元表中还有其他方法

meta = {
  -- 当子表被当作函数调用时执行
  __call = function()
    print('__call执行了')
  end
}
myTable = {}
setmetatable(myTable, meta)


myTable() -- __call执行了



meta = {
  -- 当子表使用加法运算符时执行
  -- 相当于 运算符重载
  __add = function()
    return 2
  end
}
myTable = {}
setmetatable(myTable, meta)

print(1 + myTable) -- 3




-- __index 类似js的__proto__原型链
meta = {
  age = 1
}
myTable = {}

-- 在找子表身上的某个属性时,如果找不到,那就找元表的__index指向的表
-- 我们现在给元表__index指向它自己
-- 这里可以写在元表内的,不过建议写在外面
meta.__index = meta

-- 这个__index指向的表 也可以是某个表的子表
metaFather = { name = 'xpz' }
metaFather.__index = metaFather
setmetatable(meta, metaFather)
setmetatable(myTable, meta)

print(myTable.age) -- 1

-- 打印myTable的a属性时,先在myTable身上找,找不到就去它的__index指向的表meta里去找
-- meta中也没找到,就去meta的元表metaFather中找,再没有就为默认值nill
print(myTable.a) -- nil

-- rawget(表)方法获取到的表的属性只会再表自身中找,而不牵扯__index
print(myTable.name)            -- 'xpz'
print(rawget(myTable, 'name')) -- nil
