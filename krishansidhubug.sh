#!/data/data/com.termux/files/usr/bin/bash

RESET='\033[0m'
CYAN='\033[1;36m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'
RED='\033[1;31m'
WHITE='\033[1;37m'

banner() {
    clear

    printf "${CYAN}"
    figlet -f standard "KRISHAN"
    printf "${MAGENTA}"
    figlet -f standard "SIDHUBUG"
    printf "${RESET}"

    printf "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}\n"
    printf "${GREEN}        BUG BOUNTY RESOURCE HUB${RESET}\n"
    printf "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}\n\n"

    printf "${CYAN}[+]${RESET} Maintained by ${WHITE}KRISHAN SINGH SIDHU${RESET}\n"
    printf "${GREEN}[+]${RESET} Security Research • Bug Bounty • Learning\n\n"
}
learning_mode() {
    banner

    printf "${MAGENTA}━━━ LEARNING MODE ━━━${RESET}\n\n"

    printf "${CYAN}1.${RESET} Reconnaissance\n"
    printf "${CYAN}2.${RESET} Web Application Security\n"
    printf "${CYAN}3.${RESET} Authentication & Access Control\n"
    printf "${CYAN}4.${RESET} API Security\n"
    printf "${CYAN}5.${RESET} Defensive Security\n"
    printf "${CYAN}6.${RESET} Back\n\n"

    read -rp "Select topic: " topic

    case "$topic" in
        1)
            printf "\n${YELLOW}Reconnaissance${RESET}\n"
            printf "Learn how authorized researchers identify assets,\n"
            printf "technologies, domains, endpoints, and exposed information.\n"
            ;;
        2)
            printf "\n${YELLOW}Web Application Security${RESET}\n"
            printf "Study concepts such as input validation, XSS,\n"
            printf "SQL injection, CSRF, security headers, and sessions.\n"
            ;;
        3)
            printf "\n${YELLOW}Authentication & Access Control${RESET}\n"
            printf "Study authentication flows, authorization,\n"
            printf "sessions, permissions, and access-control concepts.\n"
            ;;
        4)
            printf "\n${YELLOW}API Security${RESET}\n"
            printf "Learn about API authentication, authorization,\n"
            printf "input validation, rate limits, and data exposure.\n"
            ;;
        5)
            printf "\n${YELLOW}Defensive Security${RESET}\n"
            printf "Learn secure configuration, logging, monitoring,\n"
            printf "patching, threat modeling, and vulnerability management.\n"
            ;;
        6)
            return
            ;;
        *)
            printf "\n${RED}[!] Invalid option.${RESET}\n"
            sleep 1
            ;;
    esac

    printf "\n"
    read -rp "Press Enter to continue..."
}

checklist() {
    banner

    printf "${MAGENTA}━━━ AUTHORIZED TESTING CHECKLIST ━━━${RESET}\n\n"

    printf "${GREEN}[ ]${RESET} Confirm you have permission to test\n"
    printf "${GREEN}[ ]${RESET} Confirm the target is inside the allowed scope\n"
    printf "${GREEN}[ ]${RESET} Read the program's rules and restrictions\n"
    printf "${GREEN}[ ]${RESET} Record the target and testing date\n"
    printf "${GREEN}[ ]${RESET} Avoid collecting unnecessary personal data\n"
    printf "${GREEN}[ ]${RESET} Avoid destructive or disruptive testing\n"
    printf "${GREEN}[ ]${RESET} Keep evidence minimal and relevant\n"
    printf "${GREEN}[ ]${RESET} Follow the program's reporting process\n"
    printf "${GREEN}[ ]${RESET} Stop testing when authorization ends\n\n"

    printf "${RED}⚠ Only test systems you own or are explicitly\n"
    printf "authorized to assess.${RESET}\n\n"

    read -rp "Press Enter to continue..."
}

menu() {
    banner

    printf "${CYAN}[1]${RESET} 🔎 Recon Resources\n"
    printf "${CYAN}[2]${RESET} 💥 Web Security Resources\n"
    printf "${CYAN}[3]${RESET} 🧰 Miscellaneous Resources\n"
    printf "${CYAN}[4]${RESET} 🤖 AI & Security\n"
    printf "${CYAN}[5]${RESET} 📚 Learning Mode\n"
    printf "${CYAN}[6]${RESET} ✅ Testing Checklist\n"
    printf "${CYAN}[7]${RESET} 📖 Full README\n"
    printf "${CYAN}[8]${RESET} 🌐 GitHub Repository\n"
    printf "${CYAN}[9]${RESET} ℹ️  About\n"
    printf "${CYAN}[0]${RESET} 🚪 Exit\n\n"

    read -rp "$(printf "${YELLOW}Select an option [0-9]: ${RESET}")" choice

    case "$choice" in
        1) less -R README.md ;;
        2) less -R README.md ;;
        3) less -R README.md ;;
        4) less -R README.md ;;
        5) learning_mode ;;
        6) checklist ;;
        7) less -R README.md ;;
        8)
            if command -v termux-open-url >/dev/null 2>&1; then
                termux-open-url "https://github.com/kp13-cloud/krishansidhubug"
            else
                printf "\nGitHub: https://github.com/kp13-cloud/krishansidhubug\n"
                read -rp "Press Enter to continue..."
            fi
            ;;
        9)
            banner
            printf "${GREEN}KrishanSidhuBug${RESET}\n\n"
            printf "A curated security-research resource collection.\n\n"
            printf "${YELLOW}Maintainer:${RESET} KRISHAN SINGH SIDHU\n"
            printf "${YELLOW}Repository:${RESET} kp13-cloud/krishansidhubug\n\n"
            printf "Use resources only where testing is authorized.\n\n"
            read -rp "Press Enter to continue..."
            ;;
        0)
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
