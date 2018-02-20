#!/bin/bash
#a few chapter 6 commands
echo ""
echo "updates currently in place for system"
echo "hit enter to continue"
read
sudo apt-get update
sudo apt-get install systemd
sleep 3s
#shows all units active and non active
systemctl --all
echo ""
echo "the later is a listing of all active and non active units"
echo "please press enter to see a listing of active units alone"
read
#shows list of all active units
systemctl list-units
echo ""
echo "press enter to view the status of timers.target unit"
read
#gets status of a specific unit, in this case, timers.target
systemctl status timers.target
echo ""
echo "press enter to see the log of recent information from  timers.target unit"
read
#shows recent info from the unit's log of recorded diagnostic info
sudo journalctl _SYSTEMD_UNIT=timers.target
echo ""
echo "hit enter to see a listing of current jobs"
read
#views current jobs
systemctl list-jobs
