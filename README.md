# Boot Time Benchmark
To benchmark your Raspberry Pi's boot time it requires a two step process.
1. Create a bechmark script
2. Edit Startup Scripts to execute upon boot

### Create a benchmark script
sudo su -
cd /
git clone https://github.com/dataslayermedia/RPi-Benchmarks.git

sudo vim /etc/rc.local

Add the following line

sudo bash /RPi-Benchmarks/boot_benchmark.sh

reboot now


Log back into your device

read the results

cat /uptime_result.txt





