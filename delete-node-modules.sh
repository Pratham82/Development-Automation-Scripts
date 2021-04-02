#! /bin/bash
cd *client && rm -rf node_modules;
cd ..
cd *server && rm -rf node_modules;
cd ..
rm -rf node_modules;

# Spinner animation
clear
spinner=( Ooooo oOooo ooOoo oooOo ooooO oooOo ooOoo oOooo);
 
cat << EOF
Deleting Node modules..
EOF
 
count(){
  spin &
  pid=$!
 
  for i in `seq 1 5`
  do
    sleep 1;
  done
 
  kill $pid  
}
 
spin(){
  while [ 1 ]
  do 
    for i in ${spinner[@]}; 
    do 
      echo -ne "\r$i";
      sleep 0.2;
    done;
  done
}
 
count
clear

echo "Node modules folder is deleted from server and client and current directory!!"
