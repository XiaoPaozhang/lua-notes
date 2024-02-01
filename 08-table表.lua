-- 所有的复杂类型都是table(表)
a = { 1, 'xpz', nil, function(a)
  return a
end, true, nil }

-- lua中索引从1开始
print(a[1])
print(a[2])
print(a[3])
print(a[4])
print(a[5])
print(a[6])
-- 1
-- xpz
-- nil
-- function: 00ADBDA8
-- true
-- nil

--#a 获取表a的长度
--历史版本更新问题
--在5.1.5版本之前的niI会干扰 # 对表长度的获取
--#a 的值为 第一次遇到nil之前的元素数量
print(#a) -- 旧版本会打印2

--但是现在版本,问题更多
--分为两种情况:

--结尾元素是否为nil
--是,则与旧版规则相同,打印2
--不是,则长度正常


-- 二维表
a = {
  { 1,   2, 3 },
  { 'a', 1, false },
}
print(a[2][3]) -- false


--自定义索引
aa = { 1, [-'1.34'] = false, 'lll' }

print(aa[-'1.34']) -- false
print(aa[1])       -- 1
print(aa[2])       -- lll,此时略过了自定义索引语句
print(aa[3])       -- nil,因为后面已经没有元素了,所以默认为空
