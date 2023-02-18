<h2>PriorityGrep</h2>

A shell script that processes and analyzes log files based on priority level.

<h4>Prerequisites</h4>

    - A Unix-based operating system (e.g. Linux, macOS)
    - The tar and grep commands

<h4>Usage</h4>

To use the script, pass in a .tar.gz file containing log files as the first argument:

`./arg.sh log_file.tar.gz`

The script will extract the log files, prompt the user for a priority level (1, 2, or 3), and then generate an output file with counts of various log entries based on the specified priority.
  
  <h4>Additional Details</h4>
The script assumes that the log files are located in a directory within the .tar.gz file (e.g. log_file.tar.gz/log_directory/*). If the log files are not contained in a directory, the script may not function properly.

The script also assumes that the log files have a specific format and contain certain keywords. Modifications to the script may be necessary if the log files do not conform to this format.
