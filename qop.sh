# Some bash functions for working with PBS jobs
# 
# Copyright (c) 2018 Andrew Johnson, GTRC
# Goverened by MIT License
# More info at https://github.com/drewejohnson/qop
#
# $ qop-release [N]
#     Release N jobs from a UserHold. If not given, release all
# $ qop-hold [N]
#     Apply a UserHold to N jobs. If not given, apply the hold to all
# 

#TODO Option to reverse order of jobs released/held

_job_iterator() {
	# Arg1 - number of jobs to act upon
	# Arg2 - Command to call with the job id as the only argument
	# Arg3 - Verbosity flag = 1 means echo jobids
	# Arg4+ - jobs overwhich to iterate
	local c=1
	for j in ${@:4}; do
		if (( $1 > 0 )) && (( $c > $1 )); then
			break
		else
			c=$(( c + 1 ))
		fi
		if [ $3 -eq 1 ]; then echo $j; fi
		$2 $j
	done
}
# function to release some number of jobs
qop-release () {
    if [ -z $1 ]; then
        echo N not given. Releasing all jobs
        N=-1
    else
        N=$1
    fi
    jobs=$( showq -u $( whoami ) | awk '{if($3 == "UserHold") print $1;}' )
    _job_iterator $N "qrls" 1 $jobs 
}
    
# function to apply a hold on some number of jobs in the queue
qop-hold() {
    if [ -z $1 ]; then
        echo N not given. Apply hold to all jobs
        N=-1
    else
        N=$1
    fi
    jobs=$(showq -u $( whoami ) | awk '{if($3 == "Idle") print $1;}')
    _job_iterator $N "qhold -h u" 1 $jobs
}
