#! /bin/sh

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "$dt"

mkdir a > /dev/null 2>&1

if [ $# -eq 0 ]
then
echo "No argument supplied"
echo -e "\nUsage: ./snortlog [arguments] \n"
fi

#2 if [ $2 == 1 || $2 == 2 || $2 == 3 ]; then

if echo "$1" | grep -q ".tar.gz"; then
   echo "loading file"
   tar -xf $1 -C a
cd a

#	for any files that are simply zipped, (that aren't zipped inside a folder) the 
#	two lines below should be commented out, if working with files that are compressed
#	directly. ie when the files aren't located in a folder inside a compressed
#	directory

# 	so not like >> ../sortlogs.tar.tg/snortlogs/* 
#	but when it's simply >> ../sortlogs.tar.tg/*

dir=${1%.*.*} 
cd $dir
rm entire > /dev/null 2>&1
cat * > entire

#now ask user the priority level
read -p "Enter the priority level:(1, 2, or 3): " priority

#De Morgan's showing its ugly face
if [ "$priority" != "1" ] && [ "$priority" != "2" ] && [ "$priority" != "3" ];
then
echo "Enter something right, not a" $priority 
rm * > /dev/null 2>&1
cd ..
rmdir $dir > /dev/null 2>&1
cd .. 
rmdir a > /dev/null 2>&1
exit 1

else


case "$priority" in
        1) 
		echo 'Priority 1 selected \n'
		#priority 1 instructions
        echo working, stand by.

		grep "Priority: 1" entire > p1	
		touch output
		#frequencies:
		# Web Application Attack
		echo -n "Web Application Attack: " >> output
		grep -c "Web Application Attack" p1 >> output 
		#Network Trojan was detected
		echo -n "Network Trojan was detected: " >> output
		grep -c "Network Trojan" p1 >> output 
		#Potentially Bad Traffic
		echo -n "Potentially Bad Traffic:" >> output
		grep -c "Potentially Bad Traffic" p1 >> output
		#Misc activity
		echo -n "Misc activity: " >> output
		grep -c "Misc activity" p1 >> output
		#Detection of Network Scan
		echo -n "Detection of Network Scan: " >> output
		grep -c "Detection of Network Scan" p1 >> output
		#Attempted User Privilege Gain
		echo -n "Attempted User Privilege Gain:" >> output 
		grep -c "Unsuccessful User Privilege Gain" p1 >> output
		
		#Attempted Info Leak
		#7echo | grep -c "Attempted Information Leak" p1
		
		#Access to vuln. web app
		echo -n "Access to a Potentially Vulnerable Web App: " >> output 
		grep -c "Access to a Potentially" p1 >> output
		#Misc Attack
		echo -n "Misc Attack: " >> output
		grep -c "Misc Attack" p1 >> output
		#Attempted Admin Privilege Gain
		echo -n "Attempted Admin Privilege Gain: " >> output 
		grep -c "Attempted Administrator Privilege Gain" p1 >> output
		#Executable Code detected
		echo -n "Executable Code Detected: " >> output 
		grep -c "Executable Code" p1 >> output
		#Detection of a Non-Standard Protocol/Event
		echo -n "Detection of a Non-Standard Protocol/Event: " >> output 
		grep -c "Detection of a Non-Standard" p1 >> output
		#Sucessful User Privilege Gain
		echo -n "Sucessful User Privilege Gain: " >> output 
		grep -c "Sucessful User Privilege Gain" p1 >> output
		#Attempted Denial of Service
		echo -n "Attempted Denial of Service: " >> output 
		grep -c "Attempted Denial of Service" p1 >> output
		#Successful Administrator Privilege Gain
		echo -n "Successful Administrator Privilege Gain: " >> output 
		grep -c "Successful Administrator Privilege Gain" p1 >> output
		#Not Suspicious Traffic
		echo -n "Not Suspicious Traffic: " >> output 
		grep -c "Not Suspicious Traffic" p1 >> output
		#Potential Corporate Privacy Violation
		echo -n "Potential Corporate Privacy Violation: " >> output 
		grep -c "Potential Corporate Privacy Violation" p1 >> output		
	
			;;
			
		2) 
		echo 'Priority 2 selected \n'
		#priority 2 instructions
        echo working, stand by.

		grep "Priority: 2" entire > p2	
		touch output
		#frequencies:
		# Web Application Attack
		echo -n "Web Application Attack: " >> output
		grep -c "Web Application Attack" p2 >> output 
		#Network Trojan was detected
		echo -n "Network Trojan was detected: " >> output
		grep -c "Network Trojan" p2 >> output 
		#Potentially Bad Traffic
		echo -n "Potentially Bad Traffic:" >> output
		grep -c "Potentially Bad Traffic" p2 >> output
		#Misc activity
		echo -n "Misc activity: " >> output
		grep -c "Misc activity" p2 >> output
		#Detection of Network Scan
		echo -n "Detection of Network Scan: " >> output
		grep -c "Detection of Network Scan" p2 >> output
		#Attempted User Privilege Gain
		echo -n "Attempted User Privilege Gain:" >> output 
		grep -c "Unsuccessful User Privilege Gain" p2 >> output
		
		#Attempted Info Leak
		#7echo | grep -c "Attempted Information Leak" p2
		
		#Access to vuln. web app
		echo -n "Access to a Potentially Vulnerable Web App: " >> output 
		grep -c "Access to a Potentially" p2 >> output
		#Misc Attack
		echo -n "Misc Attack: " >> output
		grep -c "Misc Attack" p2 >> output
		#Attempted Admin Privilege Gain
		echo -n "Attempted Admin Privilege Gain: " >> output 
		grep -c "Attempted Administrator Privilege Gain" p2 >> output
		#Executable Code detected
		echo -n "Executable Code Detected: " >> output 
		grep -c "Executable Code" p2 >> output
		#Detection of a Non-Standard Protocol/Event
		echo -n "Detection of a Non-Standard Protocol/Event: " >> output 
		grep -c "Detection of a Non-Standard" p2 >> output
		#Sucessful User Privilege Gain
		echo -n "Sucessful User Privilege Gain: " >> output 
		grep -c "Sucessful User Privilege Gain" p2 >> output
		#Attempted Denial of Service
		echo -n "Attempted Denial of Service: " >> output 
		grep -c "Attempted Denial of Service" p2 >> output
		#Successful Administrator Privilege Gain
		echo -n "Successful Administrator Privilege Gain: " >> output 
		grep -c "Successful Administrator Privilege Gain" p2 >> output
		#Not Suspicious Traffic
		echo -n "Not Suspicious Traffic: " >> output 
		grep -c "Not Suspicious Traffic" p2 >> output
		#Potential Corporate Privacy Violation
		echo -n "Potential Corporate Privacy Violation: " >> output 
		grep -c "Potential Corporate Privacy Violation" p2 >> output		
	
			;;
		3) 
		echo 'Priority 3 selected \n'
		#priority 3 instructions
        echo working, stand by.

		grep "Priority: 3" entire > p3	
		touch output
		#frequencies:
		# Web Application Attack
		echo -n "Web Application Attack: " >> output
		grep -c "Web Application Attack" p3 >> output 
		#Network Trojan was detected
		echo -n "Network Trojan was detected: " >> output
		grep -c "Network Trojan" p3 >> output 
		#Potentially Bad Traffic
		echo -n "Potentially Bad Traffic:" >> output
		grep -c "Potentially Bad Traffic" p3 >> output
		#Misc activity
		echo -n "Misc activity: " >> output
		grep -c "Misc activity" p3 >> output
		#Detection of Network Scan
		echo -n "Detection of Network Scan: " >> output
		grep -c "Detection of Network Scan" p3 >> output
		#Attempted User Privilege Gain
		echo -n "Attempted User Privilege Gain:" >> output 
		grep -c "Unsuccessful User Privilege Gain" p3 >> output
		
		#Attempted Info Leak
		#7echo | grep -c "Attempted Information Leak" p3
		
		#Access to vuln. web app
		echo -n "Access to a Potentially Vulnerable Web App: " >> output 
		grep -c "Access to a Potentially" p3 >> output
		#Misc Attack
		echo -n "Misc Attack: " >> output
		grep -c "Misc Attack" p3 >> output
		#Attempted Admin Privilege Gain
		echo -n "Attempted Admin Privilege Gain: " >> output 
		grep -c "Attempted Administrator Privilege Gain" p3 >> output
		#Executable Code detected
		echo -n "Executable Code Detected: " >> output 
		grep -c "Executable Code" p3 >> output
		#Detection of a Non-Standard Protocol/Event
		echo -n "Detection of a Non-Standard Protocol/Event: " >> output 
		grep -c "Detection of a Non-Standard" p3 >> output
		#Sucessful User Privilege Gain
		echo -n "Sucessful User Privilege Gain: " >> output 
		grep -c "Sucessful User Privilege Gain" p3 >> output
		#Attempted Denial of Service
		echo -n "Attempted Denial of Service: " >> output 
		grep -c "Attempted Denial of Service" p3 >> output
		#Successful Administrator Privilege Gain
		echo -n "Successful Administrator Privilege Gain: " >> output 
		grep -c "Successful Administrator Privilege Gain" p3 >> output
		#Not Suspicious Traffic
		echo -n "Not Suspicious Traffic: " >> output 
		grep -c "Not Suspicious Traffic" p3 >> output
		#Potential Corporate Privacy Violation
		echo -n "Potential Corporate Privacy Violation: " >> output 
		grep -c "Potential Corporate Privacy Violation" p3 >> output		
	
			;;     
        *)
		#redundant area, the if statement above catches anything that's not a 1 2 or 3
		#echo "Enter something right, not a" $priority "you asswipe. "
        exit 1 
esac



#5 was having weird issues with if statement for this, switched to case, was much easier.

#5if $priority -eq 1; then 
#priority 1 instructions
#5echo 1
#5elif $priority -eq 2; then
#priority 2 instructions
#5echo 2
#5else
#priority 3 instructions
#5echo 3
#5fi


cd ..
cd ..
cp a/maccdc2012_fast_alert/output frequencies.txt
cd a
cd $dir

#sort output

#set up columns, set : as my delimiter then sort by k2
sort -t':' -k2,2rn output.txt >> output.txt

#grab top string variable
top=(head -1 output.txt | cut -d':' -f1)
#grep top variable to new file top.lst
grep $top p1 >> top.lst

#cuts mm/dd
#fixeddate=(head -1 top.lst | cut -d'-' -f1)
cat top.lst | cut -d'-' -f1 >> mmdd.lst


#cuts hour/min/sec
#time=(head -1 top.lst | cut -d' ' -f1 | cut -d'-' -f2 | cut -d'.' -f1)
cat top.lst | cut -d' ' -f1 | cut -d'-' -f2 | cut -d'.' -f1 >> hrminsec.lst


#cuts description
#head -1 top.lst | cut -d']' -f3 | cut -d'[' -f1
cat top.lst | cut -d']' -f3 | cut -d'[' -f1 >> description.lst


#cuts classif.
#classification=(head -1 top.lst | cut -d':' -f6 | cut -d' ' -f2- | cut -d']' -f1)
cat top.lst | cut -d':' -f6 | cut -d' ' -f2- | cut -d']' -f1 >> classifications.lst

#cuts source IP
#ip=(head -1 top.lst | cut -d '}' -f2 | cut -d' ' -f2 | cut -d':' -f1)
cat top.lst | cut -d '}' -f2 | cut -d' ' -f2 | cut -d':' -f1 >> sourceIPs.lst


cd ..
cd ..
cp a/maccdc2012_fast_alert/output2 output.txt


#final touches, sorting, and clean up start
cd a
cd $dir
rmdir * > /dev/null 2>&1
rm * > /dev/null 2>&1
cd ..
rmdir $dir
cd .. 
rmdir a
#clean up done

#having a bitch of a time sorting these files
#11sort -n output.txt > /dev/null 2>&1
#11sort -n frequencies.txt > /dev/null 2>&1

#11echo "Check out output.txt and frequencies.txt" 
#4ls -a


fi

fi