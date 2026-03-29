# Open Source Software Audit - VLC Media Player
**Student Name:** Vidhi  
**Roll Number:** 24BAI10834

## Project Description
This repository contains five Bash scripts developed for a technical audit of VLC Media Player on Ubuntu Linux. This project fulfills the requirements for the VITyarthi Open Source Software course.

## Script Details
- **script1.sh:** Displays system identity and auditor information.
- **script2.sh:** Checks if VLC is installed and retrieves package metadata.
- **script3.sh:** Audits directory permissions and disk usage for key system paths.
- **script4.sh:** Analyzes system logs for errors (requires sudo).
- **script5.sh:** Interactive FOSS manifesto generator and file writer.

## Instructions to Run
1. Open terminal in the script directory.
2. Grant permissions: `chmod +x *.sh`
3. Run scripts 1, 2, 3, and 5: `./scriptNAME.sh`
4. Run script 4: `sudo ./script4.sh /var/log/syslog`

## Dependencies
- Linux Environment (Ubuntu 22.04 LTS recommended)
- VLC Media Player installed via apt.