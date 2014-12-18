# crontab: 0 22 * * * source ~/Desktop/code/commit-bot/bot.sh

cd ~/Desktop/code/commit-bot
clear

###Create temporary file with new line in place
cat output.txt > temp_file.txt
echo Commit: $(date) >> temp_file.txt

echo Commit: $(date)
echo

###Copy the new file over the original file
mv temp_file.txt output.txt

# git remote set-url origin git@github.com:theshteves/commit-bot.git

git add output.txt
git commit -m “commit-bot”
git push origin master
echo

git status