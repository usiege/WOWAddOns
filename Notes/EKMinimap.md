# 小地图插件笔记

## `EKMinimap.lua`

```lua
local C, G = unpack(select(2, ...))
```

```
unpack --函数是接受一个数组来作为输入参数，并默认从下标为1开始返回所有元素。
local t = {"a","b","c","d"}
print(unpack(t))
--[[
运行结果：
a   b   c   d
--]]

print(unpack(t,2))
--[[
运行结果：
b   c   d
从下标2开始返回所有元素。
--]]
```

```
select(n, ...)  --数字n表示起点，select(n, ...)返回从起点n到结束的可变参数
select('#', ...)  --返回可变参数的数量
--[[

--]]
```