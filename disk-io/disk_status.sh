#/bin/sh
device=$1
DISK=$2

case $DISK in
         read.ops)
            /bin/cat /proc/diskstats | grep "\b$device\b" | head -1 | awk '{print $4}'    
            ;;
         read.ms)
            /bin/cat /proc/diskstats | grep "\b$device\b" | head -1 | awk '{print $7}'    
            ;;
         write.ops)
            /bin/cat /proc/diskstats | grep "\b$device\b" | head -1 | awk '{print $8}'     
            ;;
         write.ms)
            /bin/cat /proc/diskstats | grep "\b$device\b" | head -1 | awk '{print $11}' 
            ;;
         io.active)
            /bin/cat /proc/diskstats | grep "\b$device\b" | head -1 | awk '{print $12}'   
            ;;
         read.sectors)
            /bin/cat /proc/diskstats | grep "\b$device\b" | head -1 | awk '{print $6}'      
            ;;
         write.sectors)
            /bin/cat /proc/diskstats | grep "\b$device\b" | head -1 | awk '{print $10}'    
            ;;
         io.ms)
            /bin/cat /proc/diskstats | grep "\b$device\b" | head -1 | awk '{print $13}'     
            ;;
    
esac
