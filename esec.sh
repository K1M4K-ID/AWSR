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
# patch output
if [ -d $path/output ]; then
			sleep 0.25
			else
			printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m setup path & directory output!\n"
			mkdir -p $path/ouput
fi
# patch output
if [ -d $path/templates ]; then
			sleep 0.25
			else
			printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m setup path & directory output!\n"
			mkdir -p $path/templates
fi
# patch result subdomain
if [ -d $path/output/subdomain ]; then
			sleep 0.25
			else
			printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m setup path & directory subdomain!\n"
			mkdir -p $path/output/subdomain
fi
# patch result katana crawling
if [ -d $path/output/katana-result ]; then
			sleep 0.25
			else
			printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m setup path & directory katana-result!\n"
			mkdir -p $path/output/katana-result
fi
# patch vulnerability
if [ -d $path/output/vulnerability ]; then
			sleep 0.25
			else
			printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m setup path & directory vulnerability!\n"
			mkdir -p $path/output/vulnerability
fi
# patch hasil crawling js katana
if [ -d $path/output/result_js ]; then
			sleep 0.25
			else
			printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m setup path & directory result_js!\n"
			mkdir -p $path/output/result_js
fi
# apus result
if [ -f $path/output/subdomain/subdomain.txt ]; then
			rm -fr $path/output/subdomain/subdomain.txt &> /dev/null
                        sleep 0.25
                        else
                        sleep 0.25
                        rm -fr $path/output/subdomain/subdomain.txt &> /dev/null
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
# template-nuclei
if [ -d $path/templates/nuclei-templates ]; then
	sleep 0.025
	else
    cd $path/templates
	printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing nuclei-templates..\n"
	git clone https://github.com/projectdiscovery/nuclei-templates &> /dev/null
	printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing successfully..!!\n"
	sleep 2
fi

# template-fuzzing-nuclei
if [ -d $path/templates/fuzzing-templates ]; then
	sleep 0.025
	else
    cd $path/templates
	printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing fuzzing-templates..\n"
	git clone https://github.com/projectdiscovery/fuzzing-templates &> /dev/null
	printf "\033[34;1m[\033[34;1m*\033[34;1m]\033[37;1m installing successfully..!!\n"
	sleep 2
fi

# js scanner vulnerability
if [ -d $path/templates/JavaScript-Vulnerability-Scanner ]; then
	sleep 0.025
	else
    cd $path/templates
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
subfinder -silent -d $link -o output/subdomain/subdomain.txt | assetfinder -subs-only $link | tee -a output/subdomain/subdomain.txt
}

function katanas(){
katana -u $link -silent -f url,qurl -o output/katana-result/crawling-katana.txt
echo -e "\n[*] filtering url duplicate..!!\n"
cat output/katana-result/crawling-katana.txt | sort | uniq | httpx -silent
}

function all-subdomain(){
cat output/subdomain/subdomain.txt | sort | uniq | httpx -silent -td -mc 200 -sc -probe -ip -title -silent -o output/vulnerability/recon-subdomain.txt
}

function wordpress(){
cat output/subdomain/subdomain.txt | sort | uniq | httpx -silent -td -ms WordPress | awk '{print $1}' | nuclei -t templates/nuclei-templates/http/vulnerabilities/wordpress -severity low, high, critical, medium -o vulnerability/vuln-wordpress.txt
# cek url ada apa engga
if [ ! -s output/vulnerability/vuln-wordpress.txt ]; then
    echo "Tidak ada result bro :("
    exit 1
else
    echo -e "\nscanning wordpress selesai..\n"
fi
}

function exploit(){
echo -e "\n[*] starting..!! please wait 5-10 minutes\n"
nuclei -l output/katana-result/crawling-katana.txt -t "fuzzing-templates" -silent -severity low,medium,high,critical,unknown -rl 05 -o output/vulnerability/vuln-sqlxss.txt
if [ ! -s output/vulnerability/vuln-sqlxss.txt ]; then
    echo "Tidak ada result bro :("
else
    echo -e "\nscanning sql,xss,lfi,xxe,ssrf,crlf,ssti,cmdi selesai..\n"
fi
}

function cve-katana(){
echo -e "\n[*] starting..!! please wait 5-10 minutes\n"
nuclei -l output/katana-result/crawling-katana.txt -t templates/nuclei-templates/http/cves -silent -severity low, high, critical, medium -o output/vulnerability/vuln-cve.txt
# cek url ada apa engga
if [ ! -s output/vulnerability/vuln-cve.txt ]; then
    echo "Tidak ada result bro :("
    exit 1
else
    echo -e "\nscanning cves selesai..\n"
fi
}

function cve(){
cat output/subdomain/subdomain.txt | sort | uniq | httpx -silent -td -ms WordPress -silent | awk '{print $1}' | nuclei -t templates/nuclei-templates/http/cves -silent -severity low, high, critical, medium -o output/vulnerability/vuln-cve.txt
# cek url ada apa engga
if [ ! -s output/vulnerability/vuln-cve.txt ]; then
    echo "Tidak ada result bro :("
    exit 1
else
    echo -e "\nscanning cves selesai..\n"
fi

}

function basic-scanner(){
cat output/subdomain/subdomain.txt | sort | uniq | nuclei -t templates/nuclei-templates/http/vulnerabilities/wordpress -silent -o output/vulnerability/vuln-wordpress.txt
# cek url ada apa engga
if [ ! -s output/vulnerability/vuln-wordpress.txt ]; then
    echo "Tidak ada result bro :("
    exit 1
else
    echo -e "\nscanning wordpress selesai..\n"
fi
}


function envs(){
cat output/subdomain/subdomain.txt | sort | uniq | nuclei -t templates/nuclei-templates/http/exposures/configs/laravel-env.yaml -silent -o output/vulnerability/env-vulnerability.txt
# cek url ada apa engga
if [ ! -s output/vulnerability/env-vulnerability.txt ]; then
    echo "Tidak ada result bro :("
    exit 1
else
    echo -e "\nscanning laravel selesai..\n"
fi
}

function wgets(){
# crawling
katana -list output/subdomain/subdomain.txt -f qurl -em js | tee output/result_js/js.txt
# create directory. and get data
mkdir -p "$directory"
while IFS= read -r links
do
    filename=$(basename "$links")
    wget -P "$directory" "$links"
done < "output/result_js/$file"
# cek url ada apa engga
if [ ! -s output/result_js/js.txt ]; then
    echo -e "\nNo URL Found. Exiting..."
    exit 1
fi
# start scanning
python3 templates/JavaScript-Vulnerability-Scanner/JsScan.py
sleep 1
}

tolong_aku(){
cat << "EOF"

--help              Display Help
--domain            input your target
--katana            crawling & exploit with katana (single target)
--wordpress         use templates wordpress
--exposure          use templates exposure
--cve               use templates cves           
--env		        use templates env laravel
--js		        use templates js

EOF
}

# url kesimpen nya disini
link=""

export version=0
export verbose=0
export rebuilt=0

# get function arguments
options=$(getopt -l "help,domain,wordpress,jomla,exposure,cve,js,env,katana" -o -a -- "$@")

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
-d|--domain)
    link="$2"
    #read -p "select your target : " link
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
-k|--katana)
    link="$2"
    echo -e "\nstart crawling..\n"
    katanas
    exploit
    cve-katana
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