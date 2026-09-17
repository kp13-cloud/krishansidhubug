#!/data/data/com.termux/files/usr/bin/bash

# KrishanSidhuBug - Termux Resource Browser

RESET='\033[0m'
CYAN='\033[1;36m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'
RED='\033[1;31m'
BLUE='\033[1;34m'
WHITE='\033[1;37m'

banner() {
    clear
    printf "${CYAN}"
    printf '╔══════════════════════════════════════════════╗\n'
    printf '║                                              ║\n'
    printf '║            KRISHANSIDHUBUG                   ║\n'
    printf '║        BUG BOUNTY RESOURCE HUB               ║\n'
    printf '║                                              ║\n'
    printf '╚══════════════════════════════════════════════╝\n'
    printf "${RESET}\n"

    printf "${YELLOW}[+]${RESET} Maintained by ${WHITE}KRISHAN SINGH SIDHU${RESET}\n"
    printf "${GREEN}[+]${RESET} Security Research • Bug Bounty • Learning\n\n"
}

section() {
    local title="$1"
    banner
    printf "${MAGENTA}━━━ %s ━━━${RESET}\n\n" "$title"

    if command -v less >/dev/null 2>&1; then
        less -R README.md
    else
        cat README.md
    fi
}

menu() {
    banner

    printf "${CYAN}[1]${RESET} 🔎 Reconnaissance\n"
    printf "${CYAN}[2]${RESET} 💥 Exploitation Resources\n"
    printf "${CYAN}[3]${RESET} 🧰 Miscellaneous Resources\n"
    printf "${CYAN}[4]${RESET} 🤖 AI & Security\n"
    printf "${CYAN}[5]${RESET} 📚 Learning & Contributing\n"
    printf "${CYAN}[6]${RESET} 📖 Browse Full README\n"
    printf "${CYAN}[7]${RESET} 🌐 Open GitHub Repository\n"
    printf "${CYAN}[8]${RESET} ℹ️  About\n"
    printf "${CYAN}[9]${RESET} 🚪 Exit\n\n"

    read -rp "$(printf "${YELLOW}Select an option [1-9]: ${RESET}")" choice

    case "$choice" in
        1)
            section "RECONNAISSANCE"
            ;;
        2)
            section "EXPLOITATION"
            ;;
        3)
            section "MISCELLANEOUS"
            ;;
        4)
            section "AI AGENTS"
            ;;
        5)
            section "CONTRIBUTE"
            ;;
        6)
            banner
            less -R README.md
            ;;
        7)
            if command -v termux-open-url >/dev/null 2>&1; then
                termux-open-url "https://github.com/kp13-cloud/krishansidhubug"
            else
                printf "\n${BLUE}GitHub:${RESET} https://github.com/kp13-cloud/krishansidhubug\n"
            fi
            ;;
        8)
            banner
            printf "${GREEN}About KrishanSidhuBug${RESET}\n\n"
            printf "A curated collection of bug-bounty and\n"
            printf "security-research resources.\n\n"
            printf "${YELLOW}Maintainer:${RESET} KRISHAN SINGH SIDHU\n"
            printf "${YELLOW}GitHub:${RESET} kp13-cloud/krishansidhubug\n\n"
            printf "${RED}Use resources only on systems you own or\n"
            printf "where testing is explicitly authorized.${RESET}\n\n"
            read -rp "Press Enter to return to menu..."
            ;;
        9)
            clear
            printf "${GREEN}Thanks for using KRISHANSIDHUBUG!${RESET}\n"
            exit 0
            ;;
        *)
            printf "\n${RED}[!] Invalid option.${RESET}\n"
            sleep 1
            ;;
    esac
}

while true; do
    menu
done
