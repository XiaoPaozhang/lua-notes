-- 局部变量
-- 使用 local 关键字,保证变量只在语句块中可以被访问

function fn()
  local a = 1
end

print(a) -- nil

require('02-变量')
-- 执行 01-HelloWorld 的代码,且能获取到代码中的非本地(local)变量

print(d) -- 你好世界

require("02-变量") -- 再次require不会重复执行

-- 返回值为 该文件是否被执行
print(package.loaded["02-变量"]) -- true

-- 赋值为nil之后就相当于卸载了
package.loaded["02-变量"] = nil

-- 再次加载,发现代码再次执行
-- 在lua脚本最后一行return一个值,可以作为其他脚本require时该方法的返回值
res = require("02-变量")
print('res' .. res) --res	1


-- 大G表,_G存储了我们声明的所有全局变量(非local变量)
for k, v in pairs(_G) do
  -- print(k, v)
end
