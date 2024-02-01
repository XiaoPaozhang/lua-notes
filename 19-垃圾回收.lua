test = { id = 1, name = "123123" }
-- 垃圾回收关键字
--collectgarbage
--获取当前1ua占用内存数K字节用返回值*1024就可以得到具体的内存占用字节数
print(collectgarbage("count"))
--Iua中的机制和c#中垃圾回收机制很类似解除羁绊就是变垃圾
test = nil
--进行垃圾回收理解有点像C#的GC
collectgarbage("collect")
print(collectgarbage("count"))

-- 20.4296875
-- 19.2568359375
