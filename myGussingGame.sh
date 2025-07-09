#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.


echo "Welcome!!!";
user_input=0  #store user input
echo $user_input
totalFiles=$(ls -1 | wc -l)   #get total files in the current direcotry
percent=0
expectedPercentValue=100
#function to ask user for input
function getUseInput {
    echo    "Provide number of files in the current directory" 
    read user_input
}

#function to ask user for input
function calculatePercent {
    percent=$((user_input / totalFiles))
    percent=$((percent * expectedPercentValue))
}

while [[ percent -ne expectedPercentValue ]]; do
  getUseInput #function call to get user input
  calculatePercent  #function call to calculate the percent
  if [[ percent -lt expectedPercentValue ]]; then
      echo 'Your input is low'
 elif [[ percent -eq 99 ]]; then
      echo 'You are very close'
 elif [[ percent -gt expectedPercentValue ]]; then
      echo 'Your input is high'
 else 
      echo 'Congratulations!! Total files is '$totalFiles
      break
 fi
done
