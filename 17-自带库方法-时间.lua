--杀观的日
print(os.time())                                     -- 1706591717 时间戳
--自己传入参数得到时间
print(os.time({ year = 2014, month = 8, day = 14 })) -- 1407988800 时间戳

--os.date("*t")
local nowTime = os.date("*t")
for k, v in pairs(nowTime) do
  print(k, v)
end
-- hour	13
-- min	15
-- wday	3
-- day	30
-- month	1
-- year	2024
-- sec	17
-- yday	30
-- isdst  false

--当前时间的小时数
print(nowTime.hour) -- 13
