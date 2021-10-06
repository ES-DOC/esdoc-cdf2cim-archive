#!/bin/bash

# Import utils.
source $CDF2CIM_ARCHIVE_HOME/sh/utils.sh

# Main entry point.
main()
{
	log "compression: begins ..."

	pushd $CDF2CIM_ARCHIVE_HOME
	rm -rf blobs_*
	tar cz data | split -b 50m - blobs_
	popd -1

	log "compression: complete"
}

# Invoke entry point.
main
