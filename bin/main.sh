export MyTool_HOME="$(dirname "$(pwd)")"
chmod +x $MyTool_HOME
cd $MyTool_HOME

case "$1" in
"version")
    sh bin/version.sh
    ;;
"wifi-list")
    sh bin/wifi_list.sh
    ;;
*)
    echo "\033[32m  参数:\033[34m"
    echo "    wifi-list  --列出附近WiFi名称"
    echo "    version  --查看部分软件版本"
    ;;
esac