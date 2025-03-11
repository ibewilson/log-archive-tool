# Log Archive Tool

## Project Overview
The **Log Archive Tool** is a command-line utility that helps **archive logs** on a scheduled basis.
It **compresses logs into a `.tar.gz` file**, stores them in a new directory, and logs the archive details.
This tool is useful for **system maintenance**, keeping logs organized while saving disk space.


## Features
- Accepts a **log directory** as an argument.
- Compresses logs into a **timestamped archive**(`logs_archive_YYYYMMDD_HHMMSS.tar.gz`).
- Stores archives in a dedicated `archives/` folder.
- Logs the **date and time** of each archive.
- Supports **cron jobs** for automation.


## Installation & Usage

### 1️ Clone the Repository

In bash:

git clone https://github.com/ibewilson/log-archive-tool.git
cd log-archive-tool

### 2️ Make the Script Executable
chmod +x log-archive.sh

### 3️ Run the Script
Provide a log directory as an argument:
./log-archive.sh /var/log

##Example Output:
Logs successfully archived: ./archives/logs_archive_20240311_143215.tar.gz

##Automate with Cron Jobs

To schedule log archiving daily at midnight:

###1️ Open the cron editor:
crontab -e

###2️ Add this line:
0 0 * * * /path/to/log-archive.sh /var/log
(Replace /path/to/log-archive.sh with the actual script path.)

##Project Page
https://github.com/ibewilson/log-archive-tool

##Author
Ibewilson

##License
This project is open-source under the MIT License.

####Roadmap Project URL:https://roadmap.sh/projects/log-archive-tool 
