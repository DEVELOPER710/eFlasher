all:
	@echo "\e[1;31m eFlasher : Error - No command specified ! \e[0m"
	@echo "\e[1;31m Exiting now .... \e[0m"

info:
	#########################################################################################################
	# Welcome to eFlasher v1.01 !                                                                           #
	#                                                                                                       #
	# This tool uses x86_64 or x86 based Linux distros to flash to a Mounted USB Drive !                    #
	# Available OS are : raspbian, debian, ubuntu, arch-linux                                               #
	# Note : Arch Linux is only for x86_64, Debian is only for amd64, Raspbian is only for i386             #
	#   and Ubuntu is only for amd64 !                                                                      #
	# Execute "make archlinux", "make debian", "make raspbian" or "make ubuntu"                             #
	#                                                                                                       #
	# Thank You for Downloading it !                                                                        #
	#                                                                                      -DEVELOPER710    #
	#########################################################################################################


archlinux:
	@echo "\e[1;31m Arch Linux is only for "x86_64" Architecture ! \e[0m"
	@echo "DOWNLOADING archlinux-2022.04.05-x86_64.iso ...."
	@wget -O archlinux.iso https://mirrors.piconets.webwerks.in/archlinux-mirror/iso/2022.04.05/archlinux-2022.04.05-x86_64.iso
	@echo "Listing Drives ...."
	@df
	@echo "//////////////////////////////////////////////////////////"
	@echo "Enter the Target drive path below, shown in the above list (usually as '/media/', '/mnt/', or '/dev/') !"
	@read -p 'Target Drive : ' adrive
	@echo "DEPLOYING TO $adrive"
	@sudo dd if=archlinux.iso of=$adrive bs=4M && sync
	@echo "Done ! Exiting Now...."
	@echo "Good Bye !    :)"

debian:
	@echo "\e[1;31m Debian is only for "amd64" Architecture ! \e[0m"
	@echo "DOWNLOADING debian-live-11.3.0-amd64-standard.iso ...."
	@wget -O debian.iso http://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-11.3.0-amd64-standard.iso
	@echo "Listing Drives ...."
	@df
	@echo "//////////////////////////////////////////////////////////"
	@echo "Enter the Target drive path below, shown in the above list (usually as '/media/', '/mnt/', or '/dev/') !"
	@read -p 'Target Drive : ' ddrive
	@echo "DEPLOYING TO $ddrive ...."
	@sudo dd if=debian.iso of=$ddrive bs=4M && sync
	@echo "Done ! Exiting Now...."
	@echo "Good Bye !    :)"

raspbian:
	@echo "\e[1;31m Raspbian is only for "i386" Architecture ! \e[0m"
	@echo "DOWNLOADING 2021-01-11-raspios-buster-i386.iso ...."
	@wget -O raspbian.iso https://downloads.raspberrypi.org/rpd_x86/images/rpd_x86-2021-01-12/2021-01-11-raspios-buster-i386.iso
	@echo "Listing Drives ...."
	@df
	@echo "//////////////////////////////////////////////////////////"
	@echo "Enter the Target drive path below, shown in the above list (usually as '/media/', '/mnt/', or '/dev/') !"
	@read -p 'Target Drive : ' rdrive
	@echo "DEPLOYING TO $rdrive ...."
	@sudo dd if=raspbian.iso of=$rdrive bs=4M && sync
	@echo "Done ! Exiting Now...."
	@echo "Good Bye !    :)"

ubuntu:
	@echo "\e[1;31m Ubuntu is only for "amd64" Architecture ! \e[0m"
	@echo "DOWNLOADING ubuntu-22.04-beta-desktop-amd64.iso ...."
	@wget -O ubuntu.iso https://cdimage.ubuntu.com/daily-canary/current/jammy-desktop-canary-amd64.iso
	@echo "Listing Drives ...."
	@df
	@echo "//////////////////////////////////////////////////////////"
	@echo "Enter the Target drive path below, shown in the above list (usually as '/media/', '/mnt/', or '/dev/') !"
	@read -p 'Target Drive : ' udrive
	@echo "DEPLOYING TO $udrive ...."
	@sudo dd if=ubuntu.iso of=$udrive bs=4M && sync
	@echo "Done ! Exiting Now...."
	@echo "Good Bye !    :)"