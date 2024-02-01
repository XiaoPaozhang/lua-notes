-- lua 基本数据类型
-- nil
-- number
-- booleans
-- tring
-- 声明变量不需要写类型
a = nil; -- 类似 null
b = 123;
c = true;
d = '你好世界' -- 可以用单,双引号,不过反引号不行

-- type()
-- 函数,其返回值为该变量的类型,string类型
-- 同c#
print(type(a)) -- nil

-- 没有声明的变量,获取其值默认是nil
-- 比如这里我并没有声明过 变量e 直接打印
print(e) -- nil

-- 复杂数据类型(面试考点)
-- function 函数
-- table 表
-- userdata 数据结构
-- thread 协同程序


--这行代码用于 13-多脚本执行.lua文件测试
return 1
