#This script performs cleaning operations on country files with errors (last problem from 26th Jan 2015)

cd data/clean

#Fix Guniea file - we just want the 12 rows to make it similar to rest of the data
echo "Fixing Guinea.cc.txt file"
head -n 24 Guinea.cc.txt | tail -n 12 > Guinea.cc.txt.clean
mv -v Guinea.cc.txt.clean Guinea.cc.txt

# you are making an intermediate file and then moving it back into original, remember it is now going to overwritre it. You could do it in one step
# and just make itoutright but Best practice is to do two step, so we know where we are going wrong if something goes wrong

# Fix China file - we just want the top 12 rows
echo "Fixing China.cc.txt file"
head -n 12 China.cc.txt > China.cc.txt.clean
mv -v China.cc.txt.clean China.cc.txt

# Fix Niger file - we just want the top 12 rows
echo "Fixing Niger.cc.txt file"
head -n 12 Niger.cc.txt > Niger.cc.txt.clean
mv -v Niger.cc.txt.clean Niger.cc.txt

cd ../..
sleep 1

