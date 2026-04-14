#!/system/bin/sh
# NEBULA G85 OVERRIDE - V1.0
sleep 10

# 1. KILL SAMSUNG THROTTLING
pm disable-user com.samsung.android.game.gos
pm disable-user com.samsung.android.game.gamelab
settings put global game_driver_all_apps 1

# 2. HELIO G85 TURBO
echo "performance" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo "1" > /sys/kernel/gpu/gpu_clock_lock

# 3. 4-FINGER CLAW SENSITIVITY FIX
setprop debug.performance.tuning 1
setprop persist.sys.touch.pressure 1
setprop persist.sys.touch.size 1
setprop windowsmgr.max_events_per_sec 150

# 4. MEMORY OVERRIDE
sync; echo 3 > /proc/sys/vm/drop_caches

log -t NEBULA_CORE "Nebula Engine Active for Samsung A05"
