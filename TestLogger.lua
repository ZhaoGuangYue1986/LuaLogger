---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhao.
--- DateTime: 2020/3/1 10:39
---
---

local Log = require("LuaLogger.Log")
Log:setLogLevel(Log._l_log_level_error);
Log:info("this msg is teat use log");

local function log_callBack(level, msg)
    print(level .. msg)
end

Log:setLogCallBack(log_callBack)
Log:info("this msg is teat use self define log call back");