 #!/bin/bash
if crossystem wp_sw?1; then
    echo "Disable Write Protection or ;("
    return
fi
futility gbb --flash -s --flags=0x8090
crossystem block_devmode=0
vpd -i RW_VPD block_devmode=0
clear
echo "GBB flags set. Devmode should now be unblocked"
read -p "Press enter to continue" t
