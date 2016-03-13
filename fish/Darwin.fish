# Disables OS X's audio ducking, which normally reduces system volume during a call.
# FaceTime uses the same function but it can't be changed due to SIP.
alias disable_line_ducking="printf \"p *(char*)(void(*)())AudioDeviceDuck=0xc3\nq\" | lldb -n LINE"
