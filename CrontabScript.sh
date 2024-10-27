#!/bin/bash

# Variables
STIG_FILE="/path/to/your/stig_file.xml"    # Path to your STIG file
PROFILE="stig-rhel7-server-upstream"       # Change if needed for your version
RESULTS_FILE="/path/to/output/results.xml" # Path to save results
REPORT_FILE="/path/to/output/report.html"  # Path to save report
LOG_FILE="/path/to/output/stig_scan.log"   # Path to save log file

# Log the date and time of the scan
echo "STIG scan started at $(date)" >>$LOG_FILE

# Run the STIG scan
if sudo oscap xccdf eval \
    --profile $PROFILE \
    --results $RESULTS_FILE \
    --report $REPORT_FILE \
    $STIG_FILE >>$LOG_FILE 2>&1; then
    echo "STIG scan completed successfully at $(date)" >>$LOG_FILE
else
    echo "STIG scan failed at $(date)" >>$LOG_FILE
fi
