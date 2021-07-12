# README

## Purpose

This project is aimed for automating common tasks in running ARM FS experiments in gem5, without modifying gem5 itself.

Default settings should be workable, but can be customized for your needs.

## Enable VSCode Integration for Docker

Install "Docker" and "Remote - Containers" extension in VSCode.

## Docker Usage

First install Docker Desktop on Windows 10 or Mac OS, Docker engine on Linux.

Then use the following scripts:

- docker_build.sh - Build gem5 docker image locally
- docker_run.sh - Run the previously built docker image named as "gem5"

## gem5

In VSCode "Docker" view, select and attach to the previous "gem5" Docker container.

Inside the container, use the following scripts:

- 0.build.sh - Build gem5
- 1.img.sh - Copy full system files to the disk image
- 2.ckpt.sh - Boot to Linux command prompt using simple atomic CPU and take checkpoint
- 3.run.sh - Restore from checkpoint and run benchmark using O3 CPU
- 4.term.sh - m5term 3456
