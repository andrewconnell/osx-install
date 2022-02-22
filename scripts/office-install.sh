#!/bin/sh

# Office installer
case $input in
    [yY][eE][sS]|[yY])
        echo "Getting Microsoft Office patch..."
        brew install cask microsoft-office
 ;;
    [nN][oO]|[nN])
         echo "Skipping"
       ;;
    *)
 echo "Invalid input..."
 break
 ;;
esac

# Delete non-standard office apps
read -r -p "Do you want to keep only standard office apps? (Word, Excel & PowerPoint) [Y/n] " input
 
case $input in
    [yY][eE][sS]|[yY])
        echo "Removing..."
        sudo rm -r /Applications/Microsoft\ OneNote.app
        sudo rm -r /Applications/Microsoft\ Outlook.app
        sudo rm -r /Applications/OneDrive.app
        echo "Removed!"
 ;;
    [nN][oO]|[nN])
  echo "Skipping..."
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac

# Office patcher
read -r -p "Do you want to patch Office Apps? [Y/n] " input
 
case $input in
    [yY][eE][sS]|[yY])
         echo "Getting Microsoft Office patch..."
        wget -c https://gist.github.com/zthxxx/9ddc171d00df98cbf8b4b0d8469ce90a/raw/Microsoft_Office_2019_VL_Serializer.pkg -P ~/Downloads/

        echo "Closing Office apps..."
        OFFICE=(
            Microsoft Word
            Microsoft Excel
            Microsoft Outlook
            Microsoft PowerPoint
            Microsoft OneNote
            OneDrive
        )
        killall ${OFFICE[@]} -target /

        echo "Installing Office patch..."
        sudo installer -verbose -pkg ~/Downloads/Microsoft_Office_2019_VL_Serializer.pkg -target /

        rm ~/Downloads/Microsoft_Office_2019_VL_Serializer.pkg
 ;;
    [nN][oO]|[nN])
         echo "Skipping"
       ;;
    *)
 echo "Invalid input..."
 break
 ;;
esac