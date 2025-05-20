#!/bin/bash

echo "List all running processes:"
ps aux

echo "Filter processes by name (bash):"
ps aux | grep bash

echo "Display top processes (Press q to quit):"
top -n 1

# Create process_info.sh script
echo -e "#!/bin/bash
" > process_info.sh
echo "echo "Current date and time: \$(date)"" >> process_info.sh
echo "echo "Listing all bash processes:"" >> process_info.sh
echo "ps aux | grep bash | grep -v grep" >> process_info.sh
echo "echo "Process count: \$(ps aux | grep bash | grep -v grep | wc -l)"" >> process_info.sh
chmod +x process_info.sh

# Create loop_demo.sh script
echo -e "#!/bin/bash
for i in {1..5}; do
  echo "Number \$i"
done" > loop_demo.sh
chmod +x loop_demo.sh

echo "To kill a process, use: kill <PID>"