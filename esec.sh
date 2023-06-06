 # !/bin/bash
# automate find vulnerabelity
# create by K1M4K-ID
# projectdiscovery
# settingan
path=$(pwd)
file="js.txt"
directory="result_js"
bul=$(date +"%B")
tan=$(date +"%d")
tim=$(date +"%T")
yer=$(date +"%Y")
waktu=$(printf "\33[36;1m$bul \033[31;1m$tan \033[37;1m$tim \033[31;1m$yer")
# clear layar
clear
# header
logo1(){
printf "\033[31;3m""""
▀█████████▄  ████████▄     ▄████████   ▄▄▄▄███▄▄▄▄   
  ███    ███ ███   ▀███   ███    ███ ▄██▀▀▀███▀▀▀██▄ 
  ███    ███ ███    ███   ███    █▀  ███   ███   ███ 
 ▄███▄▄▄██▀  ███    ███   ███        ███   ███   ███ 
▀▀███▀▀▀██▄  ███    ███ ▀███████████ ███   ███   ███ 
  ███    ██▄ ███    ███          ███ ███   ███   ███ 
  ███    ███ ███   ▄███    ▄█    ███ ███   ███   ███ 
▄█████████▀  ████████▀   ▄████████▀   ▀█   ███   █▀  
                                                     
	    Project Discovery - V.1
	  Automate Find Vulnerability 
	    {$waktu}


usage: bash esec [options] --help
"""
}
logo2(){
printf "\033[32;3m""""
⢠⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢧⠉⠓⠲⠤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠈⢇⠀⠀⠀⠀⠉⠑⠒⠤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠘⡆⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠢⣄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢳⠀⠀⠀⠀⢀⣀⣠⠤⠴⠒⠒⠒⠒⠒⠽⢦⣀⠀⠀⠀
⠀⠀⠀⠀⠈⡧⢴⡒⠋⠉⣀⣀⠀⠀⠀⠀⠀⠀⢠⡄⠀⠈⢧⡀⠀
⠀⠀⠀⠀⠀⠀⠀⣗⢋⣭⣍⣁⠈⠁⠀⠀⠀⡤⠞⠀⠀⠀⠀⢧⠀
⠀⠀⠀⠀⠀⠀⡰⠃⠫⣧⣿⣽⠽⠂⠀⠀⠀⠃⠀⠀⠀⠀⠀⢸⡄
⠀⠀⠀⠀⢀⡜⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⢤⠀⠀⠀⢸⠃
⠀⠀⠀⣠⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⠀⠧⠛⡆⡇⠀⠀⡾⠀
⠀⠀⢰⣇⠀⢈⣉⠳⠀⠀⠀⠀⠀⠀⠀⢹⣆⠘⢯⣡⠃⠀⣰⡇⠀   kerja bagus!!
⠀⠀⠀⠈⠉⣩⠾⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⡆⠀⢤⠀⠐⠁⣇⠀   kucing malas
⠀⠀⠀⠀⠸⡥⠤⠤⢿⠀⠀⠀⠀⠀⢀⡠⠞⠀⠀⢸⠀⠀⠀⢻⠀
⠀⠀⠀⠀⠀⠳⡖⠊⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⢀⡾⠀⠀⠀⢸⠀
⠀⠀⠀⢀⠔⠊⠁⠀⠀⠀⠀⠀⠀⢀⣀⠤⠖⠊⠉⠀⠀⠀⠀⢸⠀
⠀⠀⠀⠸⣄⣀⠀⠀⠀⣠⠴⠚⠙⣏⠀⠀⠀⠀⢸⠀⠀⠀⠀⠸⡆
⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠙⡆⠀⢀⡴⠋⠀⡀⠀⠀⠰⠇
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡓⠐⠋⠐⠊⠀⠀⠀⠀⠀⠀


usage: bash esec [options] --help
"""
}
logo3(){
printf "\033[32;3m""""

 ██▓    ▄▄▄      ▒███████▒▓██   ██▓ ▄████▄   ▄▄▄     ▄▄▄█████▓
▓██▒   ▒████▄    ▒ ▒ ▒ ▄▀░ ▒██  ██▒▒██▀ ▀█  ▒████▄   ▓  ██▒ ▓▒
▒██░   ▒██  ▀█▄  ░ ▒ ▄▀▒░   ▒██ ██░▒▓█    ▄ ▒██  ▀█▄ ▒ ▓██░ ▒░
▒██░   ░██▄▄▄▄██   ▄▀▒   ░  ░ ▐██▓░▒▓▓▄ ▄██▒░██▄▄▄▄██░ ▓██▓ ░ 
░██████▒▓█   ▓██▒▒███████▒  ░ ██▒▓░▒ ▓███▀ ░ ▓█   ▓██▒ ▒██▒ ░ 
░ ▒░▓  ░▒▒   ▓▒█░░▒▒ ▓░▒░▒   ██▒▒▒ ░ ░▒ ▒  ░ ▒▒   ▓▒█░ ▒ ░░   
░ ░ ▒  ░ ▒   ▒▒ ░░░▒ ▒ ░ ▒ ▓██ ░▒░   ░  ▒     ▒   ▒▒ ░   ░    
  ░ ░    ░   ▒   ░ ░ ░ ░ ░ ▒ ▒ ░░  ░          ░   ▒    ░      
    ░  ░     ░  ░  ░ ░     ░ ░     ░ ░            ░  ░        
                 ░         ░ ░     ░                          
            <./>semoga harimu senin terus<./>
                       {Pakyu!!}


usage: bash esec [options] --help
"""
}
logo4(){
printf "\033[35;3m""""

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⣸⣿⣿⣷⣄⠀⠀⠀⠀⣀⡀⠀⠀⠀⢀⣠⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣿⣿⣿⣿⡿⣿⣿⣷⣦⣴⣿⣿⣿⣄⣠⠶⣿⡿⢿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣠⣶⣿⡿⠿⢛⣿⣿⣿⣷⣮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣯⠽⢿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⠟⠉⠀⠀⠀⠀⠈⠛⠻⠿⣽⣿⣿⣿⢻⣿⡹⣶⡾⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢀⣿⣿⢟⣾⢏⡤⠴⠶⠆⠀⠀⠀⠀⠀⠤⠤⣄⣻⣿⣿⣾⡏⣷⠽⣿⡋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣠⣾⣿⣧⣾⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢹⣿⣿⣿⡇⣿⣷⣿⣿⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢠⣾⠿⠛⣿⣿⣿⣠⣤⡴⣦⣝⣦⠀⠀⠀⠀⠖⣋⣡⣤⣸⡇⢻⣿⣿⣿⣿⣼⢻⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠈⠁⠀⠀⣿⣿⣧⠟⢁⣠⣄⡉⠹⠀⠀⠀⠀⠚⠉⢹⡉⠙⠻⣦⣿⣿⣯⣭⡿⢦⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣹⣿⣿⣦⣮⣶⣷⣽⣤⠀⠀⠀⠀⣰⣯⣅⡙⢧⠀⢹⣿⣿⣿⣿⣇⠀⠹⣷⣆⠀⠀⠀./maju maju maju⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣰⣋⣿⡇⠈⢻⣿⣿⠿⠁⠀⠀⠀⠀⠻⣿⣿⣿⣿⠁⠀⣾⣿⡆⣀⡌⢧⠀⠘⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀yunistasya & putrapedo
⠀⠀⠀⣾⣬⣹⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠁⠀⢰⣿⣿⣿⠙⡆⢸⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠘⢦⣽⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡟⣿⣿⡏⣡⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣸⣿⡿⢳⡀⠀⠀⠀⠀⠐⢶⠀⠀⠀⠀⠀⠀⠀⣸⣿⡇⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣿⣿⡇⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠶⣿⣿⣇⣿⢻⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣿⠻⣿⣿⣿⣷⡙⠦⣤⡀⠀⢀⣠⡤⠖⠛⣡⣾⣿⣿⣿⣿⠈⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠟⠀⢹⣿⢻⣿⣿⣦⣌⡉⠉⠉⢀⣀⣠⣾⣿⣿⣿⡏⢹
⠀⠀⠀⠀⠀⠀⠸⡏⠀⣹⣿⣿⣿⡏⠀⢸⣿⣿⣿⣿⣿⣯⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢁⡼⠁⡿⣿⣿⣧⣀⣜⣿⣿⡿⢟⣡⡞⠀⠙⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⡴⠋⠀⣸⣿⡿⢿⣴⣿⣿⣷⣶⣿⣿⣿⠁⠀⠀⠈⢻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⡾⠁⠀⢀⣿⢷⣶⣿⠋⠙⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⣿⠹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀


usage: bash esec [options] --help
"""
}

logo5(){
printf "\033[32;3m"
cat << "EOF"
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣀⣠⣤⣶⣞⡛⠿⠭⣷⡦⢬⣟⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢠⡾⣯⡙⠳⣍⠳⢍⡙⠲⠤⣍⠓⠦⣝⣮⣉⠻⣿⡄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⡿⢿⣷⣯⣷⣮⣿⣶⣽⠷⠶⠬⠿⠷⠟⠻⠟⠳⠿⢷⡀⠀⠀⠀⠀⠀⠀
⠀⠀⣸⣁⣀⣈⣛⣷⠀⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀⠀
⠀⣸⣯⣁⣤⣤⣀⠈⢧⠘⣆⢀⣠⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⠀⠀⠀⠀⠀
⠀⢙⡟⡛⣿⣿⣿⢷⡾⠀⢿⣿⣏⣳⣾⡆⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀
⢀⡞⠸⠀⠉⠉⠁⠀⠀⣠⣼⣿⣿⠀⣽⡇⠀⠀⠀⠀⠀⠀⠀⡼⠁⠀⠀⠀⠀sebaiknya jangan gegabah⠀
⣼⡀⣀⡐⢦⢀⣀⠀⣴⣿⣿⡏⢿⣶⣟⣀⣀⣀⣀⣀⣤⣤⠞⠁⠀⠀⠀⠀⠀⠀      K1M4K-ID   
⠀⣿⣿⣿⣿⣾⣿⣿⣿⣾⡻⠷⣝⣿⡌⠉⠉⠁⠀⠀⣸⠁⠀⠀⠀⠀⠀⠀⠀⠀     
⠀⠈⢻⣿⣿⣿⣿⡟⣿⣟⠻⣿⡿⢿⡇⠀⠀⠀⠀⠀⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢠⣿⢿⣼⣿⣿⠿⣏⣹⡃⢹⣯⡿⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣽⣿⣿⢿⠹⣿⣇⠿⣾⣷⣼⠟⠁⠀⠀⠀⢀⣠⣴⣶⣾⣷⣶⣄⡀⠀⠀⠀⠀
⠀⢿⣾⡟⢺⣧⣏⣿⡷⢻⠅⠀⠀⠀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀
⠀⠀⠙⠛⠓⠛⠋⣡⣿⣬⣤⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠛⠛
⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠋⠉⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠸⡿⠿⠿⠿⠿⠿⠿⠟⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀


usage: bash esec [options] --help
EOF
}

logo6(){
printf "\033[32;3m"
cat << "EOF"
⠀⠀⠀⠀⠀⠀⣴⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣠⣦⡄⣿⣿⡇⢠⣶⡄⢀⣤⡀⠀⠀⣀⣀⣀⣀⠀⠀⠀⠀⠀⣀⣀⣀⣀
⢀⣠⡄⣿⣿⣧⣿⣿⣧⣿⣿⣧⣼⣿⣿⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⣿
⣾⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⣿
⣿⣿⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⣿
⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⣿⣿⣿⣿⡄⠀⠀⠀⢠⣿⣿⣿⣿
⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠸⣿⣿⣿⣿⣶⣶⣶⣿⣿⣿⣿⠇
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠈⠻⠿⣿⣿⣿⣿⣿⠿⠟⠁⠀

       aku butuh medkit!!


usage: bash esec [options] --help
EOF
}


# ngulang banner
banner(){
	 randome=$(awk 'BEGIN {
	 # seed
	  srand()
    for (i=1;i<=100;i++){
    	 print int(1 + rand() * 6) 	 
    	 } 
    }' | head -1)
logo${randome}
}

function remove()
{
   rm -fr $path/result/*.txt &> /dev/null
}
# trap
trap ctrl_c INT
ctrl_c(){
clear
echo
printf "\033[34;1m<./>\033[37;1m Ctrl+C \033[34;1m<./>\033[34;1m Detected, Trying To Exit.. \033[37;1m\n"
sleep 1
remove
sleep 1
printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[34;1m Thank you, for use this tools :) \033[37;1m\n"
sleep 1
exit;
}
# requirement
function req(){
# apus result
if [ -f $path/result/hasil.txt ]; then
			rm -fr $path/result/hasil.txt &> /dev/null
                        sleep 0.25
                        else
                        sleep 0.25
                        rm -fr $path/result/hasil.txt &> /dev/null
			sleep 0.25

fi
# ngopi file esec
if [ -f /usr/local/bin ]; then
			sleep 0.25
                        else
                        sleep 0.25
                        ln $path/esec.sh esec &> /dev/null;mv -f $path/esec /usr/local/bin &> /dev/null; rm -fr $path/esec &> /dev/null
			sleep 0.25

fi
# patch hasil vulnerability
if [ -d $path/vulnerability ]; then
			sleep 0.25
			else
			printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m setup path & directory vulnerability!\n"
			mkdir -p $path/vulnerability
fi
# template-nuclei
if [ -d $path/nuclei-templates ]; then
	sleep 0.025
	else
	printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing nuclei-templates..\n"
	git clone https://github.com/projectdiscovery/nuclei-templates &> /dev/null
	printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing successfully..!!\n"
	sleep 2
fi

# js scanner vulnerability
if [ -d $path/JavaScript-Vulnerability-Scanner ]; then
	sleep 0.025
	else
	printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing JavaScript-Vulnerability-Scanner..\n"
	git clone https://github.com/0-Gram/JavaScript-Vulnerability-Scanner &> /dev/null
	printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing successfully..!!\n"
	sleep 2
fi

# golang
if [[ -f /usr/bin/go ]] || [[ -f /usr/local/bin/go ]];then
	sleep 0.25
        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m golang is not installed\n"
        sleep 0.025s
        printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing golang..\n"
        sudo apt-get install golang-go -y &>/dev/null
        sleep 0.025s
fi
sleep 0.1

# httpx
if [[ -f /usr/bin/httpx ]] || [[ -f /usr/local/bin/httpx ]]; then
	sleep 0.25
	else
	printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m httpx is not installed\n"
	sleep 0.025s
	printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing Httpx..\n"
	go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest &> /dev/null
	cp ~/go/bin/httpx /usr/bin &>/dev/null;cp ~/go/bin/httpx /usr/local/bin &>/dev/null
        sleep 0.025s
fi
sleep 0.1
# assetfinder
if [[ -f /usr/bin/assetfinder ]] || [[ -f /usr/local/bin/assetfinder ]]; then
	sleep 0.25
        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m assetfinder is not installed\n"
        sleep 0.025s
        printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing Assetfinder..\n"
        go install -v github.com/tomnomnom/assetfinder@latest &> /dev/null
        cp ~/go/bin/assetfinder /usr/bin &>/dev/null;cp ~/go/bin/assetfinder /usr/local/bin &>/dev/null
        sleep 0.025s
fi
sleep 0.1
# nuclei
if [[ -f /usr/bin/nuclei ]] || [[ -f /usr/local/bin/nuclei ]]; then
	sleep 0.25
        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m nuclei is not installed\n"
        sleep 0.025s
        printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing Nuclei..\n"
        go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest &> /dev/null
        cp ~/go/bin/nuclei /usr/bin &>/dev/null;cp ~/go/bin/nuclei /usr/local/bin &>/dev/null
        sleep 0.025s
fi
sleep 0.1
# subfinder
if [[ -f /usr/bin/subfinder ]] || [[ -f /usr/local/bin/subfinder ]]; then
	sleep 0.25
        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m subfinder is not installed\n"
        sleep 0.025s
        printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing subfinder..\n"
        go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest &> /dev/null
        cp ~/go/bin/subfinder /usr/bin &>/dev/null;cp ~/go/bin/subfinder /usr/local/bin &>/dev/null
        sleep 0.025s
fi
sleep 0.1
# katana
if [[ -f /usr/bin/katana ]] || [[ -f /usr/local/bin/katana ]]; then
	sleep 0.25
        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m katana is not installed\n"
        sleep 0.025s
        printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing katana..\n"
        go install github.com/projectdiscovery/katana/cmd/katana@latest &> /dev/null
        cp ~/go/bin/katana /usr/bin &>/dev/null;cp ~/go/bin/katana /usr/local/bin &>/dev/null
        sleep 0.025s
fi
sleep 0.1
# jq
if [[ -f /usr/bin/jq ]] || [[ -f /usr/local/bin/jq ]];then
	sleep 0.25
        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m jq is not installed\n"
        sleep 0.025s
        printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing Jq..\n"
        sudo apt-get install jq -y &>/dev/null
        sleep 0.025s
fi
sleep 0.1


if [[ -f /usr/bin/amass ]] || [[ -f /usr/local/bin/amass ]];then
	sleep 0.25
        else
        printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m golang is not installed\n"
        sleep 0.025s
        printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing golang..\n"
        sudo apt-get install amass -y &>/dev/null
        sleep 0.025s
fi
sleep 0.1



}

fungsi(){
subfinder -silent -d $link -o subdomain.txt | assetfinder -subs-only $link | tee -a subdomain.txt
}

function all-subdomain(){
cat subdomain.txt | httpx -silent -td -mc 200 -sc -probe -ip -title -silent -o recon-SUBDOMAIN.txt
}

function wordpress(){
cat subdomain.txt | httpx -silent -td -ms WordPress | awk '{print $1}' | nuclei -t nuclei-templates/http/vulnerabilities/wordpress -severity low, high, critical, medium -o vulnerability/vuln-wordpress.txt
echo -e "\nscanning wordpress selesai..\n"
}

function cve(){
cat subdomain.txt | httpx -silent -td -ms WordPress -silent | awk '{print $1}' | nuclei -t nuclei-templates/http/cves -silent -severity low, high, critical, medium -o vulnerability/vuln-cve.txt
echo -e "\nscanning cves selesai..\n"
}

function basic-scanner(){
cat subdomain.txt | nuclei -t nuclei-templates/http/vulnerabilities/wordpress -silent -o vulnerability/vuln-WORDPRESS.txt
}

function envs(){
cat subdomain.txt | nuclei -t nuclei-templates/http/exposures/configs/laravel-env.yaml -silent -o vulnerability/env-vulnerability.txt
}

function wgets(){
# crawling
katana -list subdomain.txt -silent -em js | tee result_js/js.txt
# create directory. and get data
mkdir -p "$directory"
while IFS= read -r links
do
    filename=$(basename "$links")
    wget -P "$directory" "$links"
done < "$file"
# start scanning
python3 JavaScript-Vulnerability-Scanner/JsScan.py
sleep 1
}

tolong_aku(){
#banner
#printf '\033[37;1m'
cat << "EOF"

--help              Display Help
--target-domain     input your target
--wordpress         select template wordpress
--exposure          select template exposure
--cve               select template cves           
--env		    select template env
--js		    select template js

EOF
}

# url kesimpen nya disini
link=""

usage() { echo "Usage: $0 -d testphp.vulnweb.com -t cves" 1>&2; exit 1; }

export version=0
export verbose=0
export rebuilt=0

# get function arguments
options=$(getopt -l "help,target-domain,wordpress,jomla,exposure,cve,js,env" -o -a -- "$@")

req

eval set -- "$options"
banner
while true
do
case "$1" in
-h|--help) 
    tolong_aku
    exit 0
    ;;
-d|--target-domain)
    read -p "select your target : " link
    echo -e "\nstart scanning..\n"
    fungsi
    ;;
-w|--wordpress)
    echo -e "\nscanning wordpress..\n"
    wordpress
    ;;
-e|--env)
    echo -e "\nscanning env..\n"
    envs
    ;;
-j|--js)
    echo -e "\nscanning java script..\n"
    wgets
    ;;
-c|--cve)
    echo -e "\nscanning cves..\n"
    cve
    ;;
-r|--rebuild)
    export rebuild=1
    ;;
--)
    shift
    break;;
esac
shift
done


