cd $MyTool_HOME/conf
termux-wifi-scaninfo | grep "ssid" > wifi_list
sed '/bssid/d' wifi_list > log && mv log wifi_list
sed '/"ssid": "",/d' wifi_list > log && mv log wifi_list
sed -i 's/[",:]\|ssid//g' wifi_list
sed -i 's/ //g' wifi_list
echo "\033[34m$(cat wifi_list)"
echo
echo
echo
if [ -s wifi_list ]; then
    echo "\033[32m日志文件: wifi_list"
    echo "是否保存在 $MyTool_HOME"
    read -p "[y/n] : " input
    if [ "$input" = "y" ]; then
        echo
        echo
        echo "保存成功"
        echo "文件路径: $MyTool_HOME/conf/wifi_list"
    elif [ "$input" = "n" ]; then
        rm wifi_list
    else
        echo
        echo
        echo "输入错误"
        echo "文件保存"
        echo "文件路径: $MyTool_HOME/conf/wifi_list"
    fi
else
    rm wifi_list
    echo "\033[31附件没有wifi\033[0m"
fi