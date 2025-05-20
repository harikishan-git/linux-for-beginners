#!/bin/bash

mkdir -p ~/linux_lab/week2
cd ~/linux_lab/week2

touch file1.txt file2.txt file3.txt

# Set permissions
chmod 700 file1.txt
chmod 644 file2.txt
chmod 755 file3.txt

# Create group and assign group ownership (requires sudo)
sudo groupadd linuxgroup
sudo chgrp linuxgroup file2.txt

# Change owner of file3.txt (replace otheruser with actual username)
sudo chown otheruser file3.txt

# Create permission setting script
echo -e "#!/bin/bash\nchmod 600 file1.txt\nchmod 640 file2.txt\nchmod 750 file3.txt" > set_permissions.sh
chmod +x set_permissions.sh