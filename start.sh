if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone Mimamofficial/Advance-Auto-Filter-tv /Advance-Auto-Filter-tv
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advance-Auto-Filter-tv
fi
cd /Advance-Auto-Filter-tv
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
