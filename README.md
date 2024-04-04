# System Health Reporter Script

## Overview

The System Health Reporter is an advanced Bash script designed to collect and report on various system health metrics such as CPU load, memory usage, disk usage, and network interfaces. The script generates a report and emails it to a specified recipient, demonstrating scripting automation, data collection, and report distribution.

## Features

- Collects comprehensive system health information.
- Generates a detailed report file.
- Emails the report to a specified recipient.

## Prerequisites

- Bash shell
- `mail` command (ensure mailutils or mailx is installed)
- Network utilities (`ip`, `uptime`, `df`, `free`)

## Usage

To use this script:

1. Open the script with a text editor and set the `recipient_email` variable to the desired email address.

2. Make the script executable:

```bash
chmod +x system-health-reporter.sh
```

3. Run the script

```bash
./system-health-reporter.sh
```

## How It Works

- The script defines a `generate_report` function that collects system health information using various commands (`uptime`, `free`, `df`, `ip addr`) and saves it to a report file.
- The `send_report` function then uses the `mail` command to send the generated report to the specified email address.
- Ensure that the system has an MTA (Mail Transfer Agent) configured for sending emails.

## Important Notes

- Modify the script to include additional system health metrics as needed.
- Ensure the `mail` command is correctly configured on your system to send emails.
- Consider setting up a cron job to automate the running of this script at regular intervals.
