#!/data/data/com.termux/files/usr/bin/bash

# disable microphone/camre permission of: mm,wm,aliay

su -c "pm revoke --user 0 com.tencent.mm android.permission.RECORD_AUDIO"
su -c "pm revoke --user 0 com.tencent.mm android.permission.CAMERA"
su -c "pm revoke --user 0 com.wm.dmall android.permission.CAMERA"
su -c "pm revoke --user 0 com.eg.android.AlipayGphone android.permission.CAMERA"
