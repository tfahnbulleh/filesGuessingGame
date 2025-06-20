#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.


echo "Welcome!!!";
user_input=0  #store user input
echo $user_input
totalFiles=$(ls -1 | wc -l)   #get total files in the current direcotry

#function to ask user for input
function getUseInput {
    echo    "Provide number of files in the current directory" 
    read user_input
}


while [[ user_input -ne totalFiles ]]; do
  getUseInput
  
  if [[ user_input -lt totalFiles ]]; then
      echo 'Your input is low'
 elif [[ user_input -gt totalFiles ]]; then
      echo 'Your input is high'
 else 
      echo 'Congratulations!!'
      break
 fi
done