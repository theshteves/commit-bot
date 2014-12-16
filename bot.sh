cd ~/Desktop/code/commit-bot
clear

#Create temporary file with new line in place
cat output.txt > temp_file.txt
echo Commit: $(date) >> temp_file.txt

#Copy the new file over the original file
mv temp_file.txt output.txt

echo Commit: $(date)
echo

git add output.txt
git add bot.sh
git commit -m “commit-bot”
git push origin master
echo

git status