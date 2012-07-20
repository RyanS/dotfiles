# Setup hs* commands
HSPATH=/usr/local/share/hs
if [ -d $HSPATH ]; then
	HSFILES=(`ls $HSPATH`)
	HSCOUNT=${#HSFILES[*]}
	for (( HSI=0 ; $HSI < $HSCOUNT ; HSI=$HSI+1 )); do
		HSFILE=${HSFILES[HSI]}
		HSFILE=${HSFILE:6}
		alias hs$HSFILE='hs '$HSFILE
	done
fi
unset HSPATH HSFILES HSCOUNT HSI HSFILE

