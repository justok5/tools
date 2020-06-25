插入USB优盘/移动硬盘，自动备份

1. 先运行 lsusb，找到usb设备的厂商ID码
例如：Bus 002 Device 004: ID 125f:abcd Kingston Technology
其中"125f"是厂商代码,"abcd"是设备代码。
2. 新建 /etc/udev/rules.d/10.autobackup.rules
内容如下:
SUBSYSTEM=="block", ACTION=="add", ATTRS{idVendor}=="125f" SYMLINK+="external%n", RUN+="/bin/autobackup.sh"
3. 文件autobackup.sh内容如下:
#!/usr/bin/bash 
BACKUP_SOURCE="/home/user/important" 
BACKUP_DEVICE="/dev/external1" 
MOUNT_POINT="/mnt/external" 

#准备工作 
if [ ! -d “MOUNT_POINT” ] ;
 then 	/bin/mkdir “$MOUNT_POINT”; 
fi 
/bin/mount -t auto “$BACKUP_DEVICE” “$MOUNT_POINT” 

#执行rsync备份 
/usr/bin/rsync -auz "$MOUNT_POINT" "$BACKUP_SOURCE" && /bin/umount "$BACKUP_DEVICE" 
exit

4.最后重启udev
udevadm control --reload


