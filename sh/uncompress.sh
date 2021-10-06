#!/bin/bash

# Import utils.
source $CDF2CIM_ARCHIVE_HOME/sh/utils.sh

# Main entry point.
main()
{
	log "uncompression: begins ..."

	pushd $CDF2CIM_ARCHIVE_HOME
	rm -rf ./data
	cat blobs_* | tar xz
	popd -1

	log "uncompression: complete"
}

# Invoke entry point.
main
