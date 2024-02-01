function fn()
  print('abc')
end

fn()


function fn2(a)
  print(a)
end

fn2() -- nil 如果不传参数,默认为nul

---------------------特殊语法----------------------
--- 可以返回多个返回值
function fn3(a)
  return a, 'ppp'
end

-- 像js的解构赋值一样接收
temp, temp2, temp3 = fn3(123)
print(temp)  -- 123
print(temp2) -- ppp
print(temp3) -- nil

-- 如果没接收完就抛弃
-- 如果接收的变量多了,就默认值为nil
-----------------------end-------------------

-- 函数的类型
print(type(fn)) -- function


-- 不支持重载


-- 边长参数,参数列表
-- 用三个点存起来
function fn4(...)
  print({ ... })
  --相当于js中的arguments
  --也可以装在数组中
  --但不同于js,它的数组是table
  --且用大括号装元素,和c#一样
  arg = { ... }
  print(arg[1]) -- lua索引从1开始
end

fn4(1, 'd', true)


-- lua支持函数嵌套,闭包
function fn5(x)
  -- 这里x就因为闭包函数导致不会被垃圾回收
  -- 面试还是会问lua闭包的问题和js一样
  return function(y)
    print(x + y)
  end
end

fn5(10)(2) -- 12
