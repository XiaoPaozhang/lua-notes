-- lua中是默认没有面向对象的 需要我们自己实现
a = {
  name = 'xpz',
  age = 18,
  say = function(b) -- b接收的就是表a
    print(b.name)
  end
}

--有个语法是冒号语法糖,它和点类似,区别是它可以默认将调用者传入第一个参数

-- 注意这里是冒号
a:say()
-- 'xpz'
-- 与 a.say(a) 等效



-- 在表外声明的方法,可以用self关键字,它代表调用者
function a:fn()
  -- 这里 self 代表 表a
  print(self.age)
end

a:fn();
for key, value in pairs(a) do
  print(key, value)
end
