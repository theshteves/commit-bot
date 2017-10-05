#!/usr/bin/env bash
#
# Commit Bot by Steven Kneiser
#
# Deploy locally by adding the following line to your crontab:
# 0 22 * * * source ~/Desktop/code/commit-bot/bot.sh
#
# Edit your crontab in vim w/ the simple command:
# crontab -e
#
# Deploying just on your computer is better than a server if you want
# your commits to more realistically mirror your computer usage.
#
# ...c'mon, nobody commits EVERY day ;)
#
info="Commit: $(date)"
msg="$(fortune -s)"

cd ~/Desktop/code/commit-bot/
echo "$info" >> output.txt
echo "$info"
echo
echo "$msg"
echo

# Ship it
git add output.txt
git commit -m "$msg"
git push origin master

cd -
