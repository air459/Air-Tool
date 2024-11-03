echo "\033[34mOpenJDK: v$(java -version 2>&1 | grep -oP 'version ".*?"' | cut -d'"' -f2)"
echo "NeoVim: $(nvim --version | head -n1 | awk '{print $2}') + LazyVim"
echo "Python: v$(python --version 2>&1 | awk -F' ' '{print $2}')"
echo "Pip: v$(pip --version 2>&1 | awk -F' ' '{print $2}')"
echo "GCC: v$(gcc --version | head -n1 | awk '{print $4}')"
echo "Zsh: v$(zsh --version | head -n1 | awk '{print $2}')"
echo "Neofetch: v$(neofetch --version | awk '{print $2}')"
echo "Wget: v$(wget --version | head -n1 | awk '{print $3}')"
echo "Apt: v$(apt --version | head -n1 | awk '{print $2}')"
echo "Git: v$(git --version | awk '{print $3}')"
echo
echo
echo
echo "当前版本: 0.1.2
echo "本项目持续更新中"
echo "下载链接: https://pan1.yukaidi.com/s/JyXvCz"