# Disables OS X's audio ducking, which normally reduces system volume during a call.
# FaceTime uses the same function but it can't be changed due to SIP.
if test (uname) = Darwin
    function disable_line_ducking --description "Disable OS X audio output ducking in the running LINE session"
        printf "p *(char*)(void(*)())AudioDeviceDuck=0xc3\nq" | lldb -n LINE
    end
end