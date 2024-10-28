#!/bin/bash

# Variables
STIG_FILE="/path/to/your/stig_file.xml"    # Path to your STIG file
PROFILE="stig-rhel7-server-upstream"       # Change if needed for your version
RESULTS_FILE="/path/to/output/results.xml" # Path to save results
REPORT_FILE="/path/to/output/report.html"  # Path to save report

# Run the STIG scan
sudo oscap xccdf eval \
    --profile $PROFILE \
    --results $RESULTS_FILE \
    --report $REPORT_FILE \
    $STIG_FILE

# Output completion message
echo "STIG scan completed. Results saved to $RESULTS_FILE and report saved to $REPORT_FILE."

# to view file - xdg-open report.html
