cd ~/Desktop/code/commit-bot
clear

#Create temporary file with new line in place
cat output.txt > temp_file.txt
echo Commit: $(date) >> temp_file.txt

#Copy the new file over the original file
mv temp_file.txt output.txt

echo Commit: $(date)
echo

# git remote set-url origin git@github.com:theshteves/commit-bot.git

git add output.txt
git commit -m “commit-bot”
git push origin master
echo

git status