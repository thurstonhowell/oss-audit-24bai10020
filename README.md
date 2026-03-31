# OSS Audit Project

This repository contains a simple open source audit project built as a collection of Bash scripts. The scripts demonstrate basic system inspection, package checking, directory auditing, log analysis, and open source manifesto generation.

## Contents

- `scripts/script_1.sh` — System Identity Report
- `scripts/script_2.sh` — FOSS Package Inspector
- `scripts/script_3.sh` — Disk and Permission Auditor
- `scripts/script_4.sh` — Log File Analyzer
- `scripts/script_5.sh` — Open Source Manifesto Generator

## Overview

These scripts are designed for Linux environments and were created as part of an open source software audit exercise.

- `script_1.sh` collects system information such as distro, kernel, uptime, and current user.
- `script_2.sh` checks whether the VLC package is installed and prints a short description for several open source packages.
- `script_3.sh` inspects file permissions and sizes for several important directories and checks the Git configuration file.
- `script_4.sh` scans a log file for a keyword and reports the number of matches plus the last matching lines.
- `script_5.sh` prompts for open source-related input and generates a small manifesto text file.

## Requirements

- Linux or Unix-like environment
- `bash`
- `lsb_release` available for distro detection (`script_1.sh`)
- `dpkg` available for package checking (`script_2.sh`)
- read access to the directories and files used by the scripts

## Usage

Open a terminal, navigate to the repository, and run the desired script.

Example:

```bash
cd /path/to/oss-audit-24bai10020/scripts
bash script_1.sh
bash script_2.sh
bash script_3.sh
bash script_4.sh /var/log/syslog error
bash script_5.sh
```

### `script_4.sh` example

```bash
bash script_4.sh /var/log/syslog error
```

This will search `/var/log/syslog` for the keyword `error` and display the count and last 5 matches.

## Notes

- `script_2.sh` currently checks for `vlc` by default.
- `script_5.sh` creates a manifesto file named `manifesto_<username>.txt` in the current directory.

## License

This repository contains exercise scripts for open source auditing. Individual scripts include their own comments and author attribution.
