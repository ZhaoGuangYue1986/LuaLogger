---
-- Created by zhao guangyue (jeky_zhao@qq.com)
-- DateTime: 2020/3/1 9:45
-- Copyright (c) 2015 ostack. http://www.ostack.cn
-- This source code is licensed under BSD 3-Clause License (the "License").
-- You may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     https://opensource.org/licenses/BSD-3-Clause
--/

local Log = { _l_log_curr_level_ = 1,
              _l_log_level_debug = 0,
              _l_log_level_info = 1,
              _l_log_level_warn = 2,
              _l_log_level_error = 3,
              _l_log_level_call_back_ = nil,
              setLogCallBack = setLogCallBack,
              setLogLevel = setLogLevel,
              debug = debug,
              info = info,
              warn = warn,
              error = error,
}

function Log:setLogCallBack(callback)
    self._l_log_level_call_back_ = callback
end

function Log:setLogLevel(level)
    self._l_log_curr_level_ = level
end

function Log:debug(msg)
    self:print(self._l_log_level_debug, "[DEBUG]", msg)
end
function Log:info(msg)
    self:print(self._l_log_level_info, "[INFO ]", msg)
end
function Log:warn(msg)
    self:print(self._l_log_level_info, "[WARN ]", msg)
end
function Log:error(msg)
    self:print(self._l_log_level_info, "[ERROR]", msg)
end

function Log:print(level, prefix, msg)
    if self._l_log_curr_level_ <= level then
        if nil ~= self._l_log_level_call_back_ then
            self._l_log_level_call_back_(self._l_log_level_info, msg)
        else
            print(prefix .. " " .. msg)
        end
    end
end

return Log;
