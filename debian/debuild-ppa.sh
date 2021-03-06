#!/bin/bash
#
# Launchpad PPA build helper.
#

PPA_USER=${PPA_USER:-$(whoami)}
PPA_NAME='zfs'
PPA_DISTRIBUTION_LIST='lucid oneiric precise quantal'
PPA_GENCHANGES='-sa'

if [ ! -d debian/ ]
then
	echo 'Error: The debian/ directory is not in the current working path.'
	exit 1
fi

for ii in $PPA_DISTRIBUTION_LIST
do
	# Change the first line of the debian/changelog file
	# from: MyPackage (1.2.3-4) unstable; urgency=low
	# to: MyPackage (1.2.3-4~distname) distname; urgency=low
	debchange --local="~$ii" --distribution="$ii" dummy
	sed -i -e '2,8d' debian/changelog

	# Ditto for the debian/NEWS file.
	if [ -n "$PPA_NEWS" ]
	then
		debchange --news --local="~$ii" --distribution="$ii" dummy
		sed -i -e '2,8d' debian/NEWS
	fi

	debuild -S "$PPA_GENCHANGES"
	git checkout debian/changelog
	git checkout debian/NEWS

	# Only do a full upload on the first build.
	PPA_GENCHANGES='-sd'
done
