--绝灯自
print(math.abs(-11))
--弧度转角度
print(math.deg(math.pi))
--三角函数传弧度
print(math.cos(math.pi))
--向下向上取整
print(math.floor(2.6))
print(math.ceil(5.2))
--最大最小值
print(math.max(1, 2))
print(math.min(4, 5))
--小数分离分成整数部分和小数部分
print(math.modf(1.2))

--此方法已经废弃
-- print(math.pow(2, 5))

--在 Lua 5.3 版本之后，math.pow 函数已经被废弃。取而代之的是使用内置的 ^ 运算符来进行幂运算
--例如，如果你想计算 x 的 y 次方，你可以写成 x^y 而不是 math.pow(x, y)。
print(2 ^ 5) -- 32


--随机数
-- 先设置随机数种子,随机数种子变化时,随机数也会变化
math.randomseed(os.time())
print(math.random(100))
print(math.random(100))
--开方
print(math.sqrt(4))
