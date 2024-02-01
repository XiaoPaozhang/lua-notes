fn = function()
  print(123)
end

-- 创建协程1 coroutine.create
co = coroutine.create(fn)
print(co) -- thread: 00B4C5F8

-- 创建协程2 coroutine.wrap
co2 = coroutine.wrap(fn)
print(co2) -- function: 00AE7C50


-- 第一种方式对应的是通过create创建的协程
coroutine.resume(co) --123
-- 第二种方式
co2()                -- 123


-- 协程挂起函数,类似迭代器

fn2 = function()
  local i = 1
  while true do
    print(i)
    i = i + 1
    -- print(coroutine.status(co3)) -- running
    -- 协程挂起函数,返回值为多返回值,第一个返回值代表是否成功,第二个返回值为coroutine.yield方法参数列表
    coroutine.yield('ac')
  end
end

co3 = coroutine.create(fn2)
isOk, temp = coroutine.resume(co3) -- 1
print(isOk, temp, temp2)           -- true	ac
isOk, temp = coroutine.resume(co3) -- 2
print(isOk, temp, temp2)           -- true	ac
coroutine.resume(co3)              -- 3
coroutine.resume(co3)              -- 4


-- 协程的状态
print()
print(coroutine.status(co))  --dead 结束状态
print(coroutine.status(co3)) --suspende 暂停状态
-- 运行状态需要在函数内部打印才会得到,参考co3的函数fn2中的第27行代码
