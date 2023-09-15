# CloneLinux2SD
Easily clone a Linux build to a .img file to be used for backup, Pi deployment, and more!


Cloning an Image to an SD Card on Ubuntu (x86 & ARM64) 

 

These instructions guide you through the process of cloning an image to an SD card on an x86 or ARM64-based Ubuntu system using a script. Cloning allows you to create an exact copy of an image file onto the SD card, which can be used to boot and run your system. 

 

Before You Begin: 

    Ensure you have a backup of any important data on the target SD card, as the cloning process will overwrite its contents. 

    Insert the target SD card into your computer's card reader. 

 

Step 1: Download the Script 

    Ensure you have the CloneLinux2SD.sh file downloaded from the Git repo.
 

Step 2: Make the Script Executable 

    Open a terminal window. 

    Navigate to the directory where you saved the script using the cd command, e.g., cd /path/to/script. 

    Make the script executable by running the following command: 
    
    chmod +x CloneLinux2SD.sh 

 

Step 3: Configure the Script 

    Open the script file in a text editor using the command: 
    
    nano CloneLinux2SD.sh 

    Inside the script, locate and modify the following variables: 

    ‘image_file’: Set this variable to the path of your image file (e.g., ‘/path/to/backup.img’). 

    ‘target_device’: Set this variable to the device name of your SD card (e.g., ‘/dev/sdX’). 

    Save the changes and exit the text editor. 

 

Step 4: Run the Script 

    Execute the script with root privileges using the sudo command: 
    
    sudo ./CloneLinux2SD.sh 

 

Step 5: Monitor Progress 

    The script will start the cloning process and display progress information. 

    You can monitor the progress in the terminal. 

 

Step 6: Safely Eject the SD Card 

    After the script completes, it will display a message indicating the cloning process has finished. 

    To ensure all data is written to the SD card, run the command: 
    
    sync 

    Safely eject the SD card from your computer using your system's eject or unmount feature. 

 

Step 7: Complete 

You have successfully cloned an image to an SD card on your ARM64-based Ubuntu system. The SD card is now ready for use in booting and running your system. 

Please note that the script should be used with caution, and you should ensure that you have selected the correct target device (SD card) to avoid data loss. 

 
