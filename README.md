# LuaLogger
一个超简单的LUA 日志工具（A very simple Lua Logger tool）
## 使用方法（How to use）
使用前需要require 本模块，通过返回的变量来调用提供的方法
Should require Log first, then use the return val's function
##使用示例
local Log = require("LuaLogger.Log")
##直接调用Log的方法，（use defual log print function）
Log:debug("this msg is teat use log");
Log:info("this msg is teat use log");
Log:warn("this msg is teat use log");
Log:error("this msg is teat use log");
##设置自己的log日志方法（set self log fuction）
local function log_callBack(level, msg)
    print(level .. msg)
end
Log:setLogCallBack(log_callBack)
Log:info("this msg is teat use self define log call back");
##修改日志级别，默认打印info以上级别（Set log level，default is info）
Log:setLogLevel(Log._l_log_level_error);
