commit-bot
==========

Automatically generates GitHub activity  

My most insidious idea yet.

Example: 
```
Commit: Sun Sep 22 22:00:01 EDT 2019
Commit: Wed Sep 25 22:00:00 EDT 2019
Commit: Mon Sep 30 22:00:00 EDT 2019
Commit: Tue Oct  1 22:00:00 EDT 2019
Commit: Wed Oct  2 22:00:00 EDT 2019
```

This is a Bash script
<br>designed to be run locally
<br>right on your machine

> But [@theshteves](https://github.com/theshteves),
> <br>I want this to run every day

_Oh hush_
<br>Nobody commits every day

Is that what you want?

Sorry, not today 🚫

## Getting Started

If you're on Windows™,
[setup the Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

If you haven't already, [install git](https://github.com/git-guides/install-git)**

1. Open your command-line
<br>& navigate to whatever folder you prefer

2. Download this project

```shell
git clone https://github.com/theshteves/commit-bot.git
```

3. Test run the script
<br>in case you need to fix permissions issues

```shell
source ./commit-bot/bot.sh
```

4. [Open your crontab](https://www.howtogeek.com/101288/how-to-schedule-tasks-on-linux-an-introduction-to-crontab-files/) to set a trigger

```shell
crontab -e
```

> Tip: if this makes your screen almost blank
> <br>with no toolbar of keys to navigate,
> <br>you've probably entered the text editor Vim
> <br>
> <br>Remember, press "i" to start [i]nserting text
> <br>then when you're finished
> <br>press "Esc" repeatedly until nothing happens
> <br>& type ":wq" to save & quit
> <br>or ":q!" to quit without saving

5. Add this line to [schedule every 10pm or whatever](https://crontab.guru/#0_22_*_*_*)

```shell
0 22 * * * source /<full-path-to-your-folder>/commit-bot/bot.sh
```

> Tip: Make sure you save your changes
> <br>on your way out!
