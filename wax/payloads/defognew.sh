if crossystem wp_sw?1; then
    echo "Cannot Un-enroll without disabling WP"
    read -p "enter to continue"
    return
fi
vpd -l
echo "WRITE DOWN YOUR SERIAL NUMBER"
read -p "Press enter to Delete the Serial Number"
vpd -d serial_number
echo "Deleted!"

echo "You have Been SN Un-enrolled"
