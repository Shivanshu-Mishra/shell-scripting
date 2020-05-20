#1 /bin/bash
cd images 
IMAGES=$(ls *jpg)
TODAYS_DATE=$(date +%Y%m%d)
for image in ${IMAGES}
do
	echo "${image} updated to ${TODAYS_DATE}${image}"
	mv ${image} ${TODAYS_DATE}${image}
done
