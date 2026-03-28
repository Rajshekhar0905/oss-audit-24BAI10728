# OSS Audit Project

**Student Name:** Rajshekhar  
**Roll Number:** 24BAI10728  
**Chosen Software:** Git  

---

## Project Overview
This project is an **Open Source Audit** aimed at exploring Linux systems and open-source software through hands-on shell scripting. The report and scripts together provide insights into:

- The origin and philosophy of open-source software  
- Licensing and ethical considerations  
- Linux footprint and configuration  
- Open-source ecosystem mapping  
- Comparison with proprietary alternatives  

The project consists of **five Bash scripts** that demonstrate Linux system analysis, software inspection, log auditing, and generating open-source philosophy statements.

---

## Scripts Overview

### 1. System Identity Report (`script1.sh`)
Displays a welcome-style screen with system details:

- Linux distribution and kernel version  
- Current logged-in user and home directory  
- System uptime and current date/time  
- License information for the OS  

**Concepts used:** variables, `echo`, command substitution, basic formatting  

**Run:**
```bash
chmod +x script1.sh
./script1.sh

chmod +x script2.sh
./script2.sh

chmod +x script3.sh
./script3.sh

chmod +x script4.sh
sudo ./script4.sh /var/log/syslog error

chmod +x script5.sh
./script5.sh
