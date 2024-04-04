#!/bin/bash

# System Health Reporter
# Collects comprehensive system health information and emails the report.
#
# @author BASHCAVE
# @version 1.0.0
# @license MIT

recipient_email="admin@example.com" # Change to the recipient's email address
subject="System Health Report for $(hostname) - $(date)"
report_file="system_health_report_$(date +%Y%m%d_%H%M%S).txt"

generate_report() {
    echo "Generating System Health Report..."
    echo "Report for $(date)" > "$report_file"
    echo "-------------------------------" >> "$report_file"
    
    echo "CPU Load:" >> "$report_file"
    uptime >> "$report_file"
    
    echo "Memory Usage:" >> "$report_file"
    free -h >> "$report_file"
    
    echo "Disk Usage:" >> "$report_file"
    df -h >> "$report_file"
    
    echo "Network Interfaces:" >> "$report_file"
    ip addr >> "$report_file"
    
    echo "-------------------------------" >> "$report_file"
    echo "Report generated at $(date)" >> "$report_file"
}

send_report() {
    echo "Sending System Health Report to $recipient_email"
    mail -s "$subject" "$recipient_email" < "$report_file"
    echo "Report sent."
}

# Main
generate_report
send_report
