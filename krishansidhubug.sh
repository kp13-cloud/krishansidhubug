#!/data/data/com.termux/files/usr/bin/bash

clear

printf '\033[1;36m'
printf '╔══════════════════════════════════════════╗\n'
printf '║              KRISHANSIDHUBUG             ║\n'
printf '║        BUG BOUNTY RESOURCE HUB           ║\n'
printf '╚══════════════════════════════════════════╝\n'
printf '\033[0m'

printf '\n\033[1;33m[+] Maintained by KRISHAN SINGH SIDHU\033[0m\n'
printf '\033[1;32m[+] Security Research • Bug Bounty • Learning\033[0m\n\n'

printf '\033[1;35m[1]\033[0m View README\n'
printf '\033[1;35m[2]\033[0m Open GitHub repository\n'
printf '\033[1;35m[3]\033[0m Exit\n\n'

read -rp $'\033[1;36mSelect an option: \033[0m' choice

case "$choice" in
    1)
        less README.md
        ;;
    2)
        if command -v termux-open-url >/dev/null 2>&1; then
            termux-open-url "https://github.com/kp13-cloud/krishansidhubug"
        else
            printf '\nGitHub: https://github.com/kp13-cloud/krishansidhubug\n'
        fi
        ;;
    3)
        exit 0
        ;;
    *)
        printf '\n\033[1;31m[!] Invalid option.\033[0m\n'
        ;;
esac
