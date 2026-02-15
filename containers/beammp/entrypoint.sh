#!/bin/bash
# /$$   /$$ /$$$$$$$$ /$$     /$$ /$$ /$$
#| $$  | $$| $$_____/|  $$   /$$/| $$| $$
#| $$  | $$| $$       \  $$ /$$/ | $$| $$
#| $$$$$$$$| $$$$$     \  $$$$/  | $$| $$
#| $$__  $$| $$__/      \  $$/   |__/|__/
#| $$  | $$| $$          | $$            
#| $$  | $$| $$$$$$$$    | $$     /$$ /$$
#|__/  |__/|________/    |__/    |__/|__/
 
#You're not supposed to be here!!
#Leave or else >:(

export TERM=xterm-256color

green=$(tput setaf 2)
red=$(tput setaf 1)
gray=$(tput setaf 8)
yellow=$(tput setaf 3)
mike=$(tput setaf 87)
porple=$(tput setaf 183)
reset=$(tput sgr0)

motds=(
    "It's Raspin' time!"
    "Downtime? Never heard of her!"
    "running on duct tape and hope"
    "I'm thinking Miku Miku ooeeoo!"
    "hosted from a potato"
    "im terminally online"
    "Running on 1MB of ram!"
    "Running on efficient ARM cores!"
    "ur bald"
    "Tax_Reports is the baldest person in the world!"
    "News 39!"
    "Mitchie M is the goat"
    "Pi 0's are the best Pis!"
    "I have successfully obtained 15 Miku figurines"
    "I bought 393938.xyz for no reason"
    "Did someone say Bald MC?"
    "10gbps?!? Network goes zooooooooooooooooooom"
    "Show me your Ai Dee!"
    "1% CPU upgrade when you mention mikumiku39 in a ticket"
    "EU node when? EU node now!"
    "1% off when using code imthebaldestpersonintheworld at checkout"
    "Viva viva happy chu-lu-chu-chu"
    "I have a 367 day reddit streak"
    "Check out osu!"
    "Check out RDR2!"
    "Inspired by DBH"
    "Free 39MB storage upgrade when you mention the code mitchiemisthegoat39 in a ticket"
    "Hard drives? I've never heard of her! Wait a minute..."
    "DDR3? I've never heard of her!"
    "Contact me at @raspi_dude on Discord!"
    "Wanna go far away..."
    "Inside was a blank letter, blank space and line breaks... That's about it"
    "Did you know that they delisted Never Gonna Give You Up? Check for yourself here https://www.youtube.com/watch?v=dQw4w9WgXcQ"
    "308 Negra Arroyo Lane, Albuquerque, New Mexico 87104"
    "Hard off and Book off are goated"
    "Our next node will run on a Raspberry Pi 0 with a 16gb micro SD card!"
    "Does anyone actually read these?"
    "First person who sends a screenshot of this motd gets a free 314mb storage upgrade (get it? pi? 3.14? hilarious right?) <-This has been claimed, sorry :("
    "Running on 75GXP drives!"
    "Let's Ishukan Communication!"
    "|  ||  ||  |_"
    "Check out Fantastic Plastic Machine!"
    "Check out Serani Poji!"
    "More More Jump!"
    "Raspihost cup noodle prohibition"
	"Pertizm is the goat!"
	"61 62 63 64 I do something in the premade salads at the store (iykyk)"
	"What's brown and sticky? A stick! What did you think I was going to say?"
	"I'm a Linux fan and an Apple hater >:)"
	"Come help me annihilate all Apple products"
	"Motorola One 5g Ace the goat"
	"The term 'Raspi' was first used in 1831"
	"We are Raspi_dude, we carry the leek! We'll fight for the Miku, we'll honor her song!"
	"Fun fact: In the year 1516, the word 'Bussy' was used more than ever"
	"Get some gummy bears, some kitty kitty..."
	"Fun fact: The word 'Skibidi' was first used in 1969"
	"Debian is the best!"
	"Alpine is peak!"
	"'Diddy is being used more than pepperoni!' -Fishstick 2026"
	"コトコトコトコトコト グツグツグツグツ...グゥ こころ躍る  ハッピーハッピークッキング 🍳"
	"Check out our node stats at https://status.raspihost.org/"
	"https://hellothereim.raspidude.eu.org/"
	"https://static.corp.google.com/corpsso/images/dwendwen.jpg"
	"Do you use CraftBukkit for b1.7.3? Check out project Posiden!"
	"Better than Embotic!"
	"Come back after you collect 100 golden walnuts!"
	"Check out Folding at Home!"
	"Check out LowEndTalk!"
	"Check out Nodeseek!"
	"Sata Andagi!"
	"She's just like you and me, but she's homeless, she's homeless... 🎵 (Gypsy Woman reference)"
	"La da dee, la dee da"
	"3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679 (I'm Raspi_dude so of course I memorized pi to 100 digits!)"
	"And it's a wonder men can eat at all, when things are big that should be small..."
	"Now there is no sound, if we all live underground... Wait, is that a Linux reference in a Jamiroquai song?"
	"Man, this week was exhausting / But at least it's finally Friday / Wait, what was so special about Friday / Man, I could've sworn there was something 🎵"
	"Bro, it’s FQDN Friday, domains by my side, ay 🎵"
	"Check out Azumanga Daioh!"
	"Mambo, Mambo! Omatsuri Mambo!"
	"Uchira ga uwasa no UMAMUSUME!! \ Saisoku saikyou \ Saikou no men! 🎵"
	"WEII!"
	"https://youtu.be/8YtqqjskAME"
	"Daisy, Daisy, give me your answer do 🎵"
	"The baldness gene was cause for dread \ But that's a fear that you can put to bed 🎵"
	"つくりましょう、つくりましょう、さてさて何ができるかな。"
	"idk why but the Flycycle Team ost from Wii Party is lowk goated"
	"Dansa med oss \ Klappa era händer \ Gör som vi gör \ Ta några steg åt vänster 🎵"
	"IPv6? In this economy??"
	"Blue hair, blue tie, hidden in your server rack"
	"Check out Teto Territory!"
	"The cake is a lie, but the promo codes are real!"
	"Hello there Badcake :)"
	"Racknerd the goat"
	"My celery server has 825 days of uptime"
	"Also check out Kasane Teto!"
	"Minio is lowk bald, Garage for the win!"
	"Raspberry heaven 🎵"
	"I now have a room full of Miku merch :D"
	"Surprisingly, CA-1 gets more https requests than the panel server"
	"I LOVE KDE PLASMA!!!"
	"Don't you lecture me with your 30 dollar server!"
	"Shikanoko nokonoko koshitantan"
	"https://youtu.be/owy8-bOXNic"
	"ウイスキーがお好きでしょ, もう少ししゃべりましょ 🎵"
	"https://youtu.be/l-baM0t3H90"
	"24 Dragon Magic 🎵"
)

art=(
' /#######                                /##       /##   /##                       /##    '
'| ##__  ##                              |__/      | ##  | ##                      | ##    '
'| ##  \ ##  /######   /#######  /######  /##      | ##  | ##  /######   /####### /######  '
'| #######/ |____  ## /##_____/ /##__  ##| ##      | ######## /##__  ## /##_____/|_  ##_/  '
'| ##__  ##  /#######|  ###### | ##  \ ##| ##      | ##__  ##| ##  \ ##|  ######   | ##    '
'| ##  \ ## /##__  ## \____  ##| ##  | ##| ##      | ##  | ##| ##  | ## \____  ##  | ## /##'
'| ##  | ##|  ####### /#######/| #######/| ##      | ##  | ##|  ######/ /#######/  |  ####/'
'|__/  |__/ \_______/|_______/ | ##____/ |__/      |__/  |__/ \______/ |_______/    \___/  '
'                              | ##                                                        '
'                              | ##                                                        '
'                              |__/                                                        '


)

bar=(
# '###########################################################################################'
' '
)

clear
echo "${bar:0}" 
for line in "${art[@]}"; do

    part1="${line:0:47}"

    part2="${line:47}"
    

    processed_part1=""
    for (( i=0; i<${#part1}; i++ )); do
        char="${part1:$i:1}"
        if [[ "$char" == "_" || "$char" == "/" || "$char" == "|" || "$char" == "\\" ]]; then
            processed_part1+="${gray}${char}${reset}"
        else
            processed_part1+="${green}${char}${reset}"
        fi
    done
    
    processed_part2=""
    for (( i=0; i<${#part2}; i++ )); do
        char="${part2:$i:1}"
        if [[ "$char" == "_" || "$char" == "/" || "$char" == "|" || "$char" == "\\" ]]; then
            processed_part2+="${gray}${char}${reset}"
        else
            processed_part2+="${red}${char}${reset}"
        fi
    done
    
    printf "%b%b\n" "$processed_part1" "$processed_part2"
done
echo "${bar:0}" 
printf "%b%b\n" "${yellow}                     Welcome to Raspi Host! - No BS hosting since 2024"
printf "%b\n" "${reset} "
random_motd=${motds[$RANDOM % ${#motds[@]}]}
printf "%b%b\n" "${mike}Raspi_dude's MOTD: " "${porple}$random_motd"
printf "%b%b\n" "${yellow}Pro tip: Instead of editing the ServerConfig.toml file, edit the values under the Startup tab"

#the actual server stuff starts here

cd /home/container || exit 1

rm -f BeamMP-Server

ARCH=$(uname -m)
case "$ARCH" in
  x86_64)
    MATCH="BeamMP-Server.alpine.x86_64"
    ;;
  aarch64)
    MATCH="BeamMP-Server.alpine.arm64"
    ;;
  *)
    echo "Unsupported architecture: $ARCH"
    exit 1
    ;;
esac

echo "Downloading latest BeamMP server for architecture: $ARCH"

# Try to get download URL from GitHub API
DOWNLOAD_URL=$(
  curl -fsSL https://api.github.com/repos/raspi-dude/BeamMP-Server-Alpine-Linux/releases/latest 2>/dev/null \
  | grep browser_download_url \
  | grep "$MATCH" \
  | head -n 1 \
  | cut -d '"' -f 4
)

# If GitHub API fails or returns empty, go straight to fallback
if [ -z "$DOWNLOAD_URL" ]; then
    echo "GitHub API failed or rate limited, using fallback server..."
    FALLBACK_URL="https://assets.raspihost.org/files/$MATCH"
    
    if ! curl -fsSL "$FALLBACK_URL" -o BeamMP-Server; then
        echo "Error: Fallback server failed to download BeamMP binary."
        exit 1
    fi
    
    echo "Successfully downloaded from fallback server!"
else
    # Try downloading from GitHub
    echo "Attempting download from GitHub..."
    HTTP_CODE=$(curl -fsSL -w "%{http_code}" "$DOWNLOAD_URL" -o BeamMP-Server 2>/dev/null)
    
    # If GitHub download fails, fall back to assets server
    if [ "$HTTP_CODE" != "200" ]; then
        echo "GitHub download failed (HTTP $HTTP_CODE), falling back to assets.raspihost.org..."
        rm -f BeamMP-Server
        
        FALLBACK_URL="https://assets.raspihost.org/files/$MATCH"
        
        if ! curl -fsSL "$FALLBACK_URL" -o BeamMP-Server; then
            echo "Error: Both GitHub and fallback server failed to download BeamMP binary."
            exit 1
        fi
        
        echo "Successfully downloaded from fallback server!"
    else
        echo "Successfully downloaded from GitHub!"
    fi
fi

chmod +x BeamMP-Server

#mount init pause for first boot

while [ ! -d "Resources/Server/RaspiHostUtils" ]; do
  echo "Finishing initial server setup..."
  sleep 5
  mkdir -p Resources/Client
  mkdir -p Resources/Server/RaspiHostUtils
  echo "Rebooting..."
  sleep 1
  exit 1
done

rm -f core.* 2>/dev/null

#go go go!

MODIFIED_STARTUP=$(eval echo "$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')")
echo ":/home/container$ ${MODIFIED_STARTUP}"

eval ${MODIFIED_STARTUP} 2>&1 | while IFS= read -r line; do
    echo "$line"
    
    if echo "$line" | grep -q "\[INFO\] Shutdown\." && ! echo "$line" | grep -q "\[CHAT\]"; then
        (sleep 2; pkill -9 -f "BeamMP-Server") &
    fi
done

exit 0
