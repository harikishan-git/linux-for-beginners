#!/bin/bash
# Navigate and create folder
cd /tmp
mkdir -p linux_lab
cd linux_lab

# Create files
touch file1.txt file2.txt file3.txt

# Copy file1.txt
cp file1.txt file1_backup.txt

# Rename file2.txt
mv file2.txt file2_renamed.txt

# Remove file3.txt
rm -f file3.txt

# cleanup.sh script content (create a separate file for this)
echo -e '#!/bin/bash\nrm -f /tmp/*.tmp' > cleanup.sh
chmod +x cleanup.sh