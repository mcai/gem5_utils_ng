# Prerequisites

Download and put aarch-system-20210904.tar.bz2 and ubuntu-18.04-arm64-docker.img.bz2 (from gem5 guest images webpage) in the current folder.

# VSCode integration

Install "Docker" and "Remote - Containers" extension in VSCode.

# Docker Usage

First install Docker Desktop on Windows 10 or Mac OS, Docker engine on Linux.

Then use the following scripts:

docker_build.sh - Build gem5 docker image locally
docker_run.sh - Run the previously built docker image named as "gem5"

# gem5

In VSCode "Docker" view, select and attach to the previous "gem5" Docker container.

Then use the following scripts:

0.build.sh - Build gem5
1.img.sh - Copy full system files to the disk image
2.ckpt.sh - Take checkpoint
3.run.sh - Restore from checkpoint
4.term.sh - m5term 3456
