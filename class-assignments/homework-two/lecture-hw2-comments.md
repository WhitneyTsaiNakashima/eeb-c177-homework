# Lecture HW2
Whitney Tsai Nakashima


### Part 1

1. Download this text file using the wget command into your sandbox directory (within ~/Developers/repos/CSB/unix/sandbox/): wget -c http://dev.shawntylerschwartz.com/docs/paragraphs.txt.
```python
wget -c http://dev.shawntylerschwartz.com/docs/paragraphs.txt
```
2. Make a new folder in your class-assignments directory with the name homework-two and move this paragraphs.txt file into that location. Then, do the git add-commit-push workflow again.
```python
mkdir ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two
mv paragraphs.txt ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/
git add -A
git commit -m "add lecture hw2, part1, q1-2"
git push origin master
```
3. Traverse to your class-assignments/homework-two/ directory and rename the file easy-question.txt. Then, do the git add-commit-push workflow again.
```python
cd ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/
git add -A
git commit -m "lecture hw2, part 1, q3"
git push origin master
```
4. Create a text file titled hw2-part1-commands.txt containing the commands you used to accomplish this task. This file should be inside the homework-two directory. Then, do the git add-commit-push workflow again.
```python
history 40 > hw2-part1-commands.txt
nano hw2-part1-commands.txt
# removed unnecessary commands from log
git add -A
git commit -m "lecture hw2, part 1, q4"
git push origin master
```

### Part 2

1. Use the head command to examine the first 25 lines of the Pacifici2013_data.csv file in ~/Developers/repos/CSB/unix/data/.
```python
cd ~/Developer/repos/CSB/unix/data/
head Pacifici2013_data.csv
```
2. Now create a new text file with only the first 25 lines of that file with the name Pacifici-25lines.txt in your class-assignments/homework-two/ directory.
```python
head Pacifici2013_data.csv > ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/Pacifici-25lines.txt
```
3. Now create another text file that contains the number of words in the first 25 lines of the file with the name Pacifici-25wordcount.txt in your class-assignments/homework-two/ directory.
```python
wc Pacifici-25lines.txt > Pacifici-25wordcount.txt
```
4. Create a text file titled hw2-part2-commands-1.txt containing the commands you used to accomplish this task. This file should be inside the homework-two directory. Then, do the git add-commit-push workflow again.
```python
history 10 > hw2-part2-commands-1.txt
nano hw2-part2-commands-1.txt
# removed unnecessary commands from log
git add -A
git commit -m "lecture hw2, part 2, q4"
git push origin master
```
**Comment:** initially I used the head command and forgot to include the -25 flag to note how many lines I wanted to view, so the command defaulted to only 10 lines. I went back, corrected this and added these commands to the log.
```python
head -n 25 Pacifici2013_data.csv > ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/Pacifici-25lines.txt
wc Pacifici-25lines.txt > Pacifici-25wordcount.txt
history 10 >> hw2-part2-commands-1.txt
```
**Comment:** I also realized I just needed word count not line, word, and byte count, so I modified the commands and updated the log.
```python
wc -w Pacifici-25lines.txt > Pacifici-25wordcount.txt
history 2 >> hw2-part2-commands-1.txt
```
In section 1.6.1 of the textbook, the pipe | is introduced. The pipe command allows you to take the output from one command and subsequently use it in the next command. Given this command, find the number of words in the first 25 lines as you did above using the pipe command to avoid making an intermediate text file.

1. Create a text file titled hw2-part2-commands-2.txt containing the commands you used to accomplish this task. This file should be inside the homework-two directory. Then, do the git add-commit-push workflow again.
```python
head -25 Pacifici2013_data.csv | wc
history 10 > ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/hw2-part2-commands-2.txt
cd ~/Developer/repos/eeb-c177-homework/
git add -A
git commit -m "lecture hw2, part2, pipe q1"
git push origin master
```
**Comment:** I also realized I just needed word count not line, word, and byte count, so I modified the commands and updated the log.
```python
head -25 ~/Developer/repos/CSB/unix/data/Pacifici2013_data.csv | wc -w
history 2 >> ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/hw2-part2-commands-2.txt
```

### Part 3
Let’s use the pipe again to count the number of lines in the ~/Developers/repos/CSB/unix/data/ directory (i.e., count the number of lines that are listed when you list the contents of the data directory).

1. Output the number of lines (in one line of code, using pipe) to a text file named pipe-data-lines.txt.
```python
cd ~/Developer/repos/CSB/unix/data/
ls | wc -l > ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/pipe-data-lines.txt
```
2. Using cat and | in one line of code, concatentate any 2 .fasta files from the ~/Developers/repos/CSB/unix/data/miRNA/ directory and count the total number of characters using the word count (wc) command. Output this to a text file named fasta-cat.txt. Then, do the git add-commit-push workflow again.
```python
cat ptr_miR.fasta ssy_miR.fasta | wc -m > ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/fasta-cat.txt
```

The cut command allows one to extract data columns that are formatted in a .csv format (csv stands for “comma separated values”, although the delimiting (separating) character between values of the file (a.k.a., the delimiter) does not necessarily need to be a comma).

1. Examine the Pacifici2013_data.csv file using the head command and identify the delimiter. (Write this down in a text file named Pacifici-delim.txt.) Then, do the git add-commit-push workflow again.
```python
cd ~/Developer/repos/CSB/unix/data
head -n 5 Pacifici2013_data.csv
nano ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/Pacifici-delim.txt
cd ~/Developer/repos/eeb-c177-homework/
git add -A
git commit -m "lecture hw2, part3, cut command"
git push origin master
```
2. Now use the cut command on this Pacifici2013_data.csv file to extract the family of the first 10 records (hint: you will need to use pipe and the head command and also specify the delimiter using -d with the cut command).
```python
head -n 11 Pacifici2013_data.csv | cut -d ";" -f 3
```

Similar to the head command, the tail command allows you to look at the end of a file.

1. Look at the last 5 records in the Pacifici2013_data.csv file using the tail command.
```python
tail -n 5 Pacifici2013_data.csv
```

The tail command can be used to skip the first few lines of a file with the + command (it will therefore start the tail command from whatever line you give after the plus).
1. Remove the first line of the Pacifici2013_data.csv file (as we don’t want the header of the file).
```python
tail -n +2 Pacifici2013_data.csv | head -n 10
```
2. Now, create a new text file with the name Pacifici-ten.txt that has the first 10 records of the Pacifici2013_data.csv file (minus the header). (Note: you will need to use both tail and head to accomplish this.)
```python
tail -n +2 Pacifici2013_data.csv | head -n 10 > ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/Pacifici-ten.txt
```
3. Create a text file titled hw2-part3-commands.txt containing the commands you used to accomplish this task. This file should be inside the homework-two directory. Then, do the git add-commit-push workflow again.
```python
cd ~/Developer/repos/eeb-c177-homework/class-assignments/homework-tw$
history 40 > hw2-part3-commands.txt
git add -A
git commit -m "lecture hw2, part3"
git push origin master
```

### Part 4
The unique (uniq) command allows you to see the unique values when duplicates are present.

1. Use the wget command to download a text file containing fish species names from a recent study Shawn conducted into your homework-two directory: wget -c http://dev.shawntylerschwartz.com/docs/fish_species.txt Then, do the git add-commit-push workflow..
```python
wget -c http://dev.shawntylerschwartz.com/docs/fish_species.txt
git add -A
git commit -m "lecture hw2, part4, fish_species"
git push origin master
```
2. Explore the sort, reverse sort, and unique commands with this text file. Copy and paste your results into three separate text files for the results of each of these three commands:
fishes-sort.txt
fishes-rev-sort.txt
fishes-unique.txt
```python
sort fish_species.txt > fishes-sort.txt
sort -r fish_species.txt > fishes-rev-sort.txt
uniq fish_species.txt > fishes-unique.txt
```
3. Create a text file titled hw2-part4-commands.txt containing the commands you used to accomplish this task. This file should be inside the homework-two directory. Then, do the git add-commit-push workflow again.
```python
history 30 > hw2-part4-commands.txt
git add -A
git commit -m "lecture hw2, part4"
git push origin master
```

### Part 5

We are giong to create a data set that has the body size, order, family, genus, and scientific name that we are going to extract from the Pacifici2013_data.csv file. Things to keep in mind about the new data set that you are generating:

1. We don’t want the header from the original Pacifici2013_data.csv file, so you will need to use the tail option to avoid extracting the first line.
2. We don’t want all of the data, just columns 2-6, so use the cut option with the properly specified delimiter and column range values.
3. We don’t want semicolons separating the data (as semicolons are a non-standard delimiter). Instead, use the tr command to subsitite spaces as the new delimiter instead of semicolons.
4. To sort the file, we will want to sort on a numeric column (which is the body mass column, column 6), so we will have to use -r to get it in the reverse order, -n to sort numerically, and -k to specify the column.
5. Create a new file bodym.csv that contains all of the specifications from above.
```python
tail -n +2 Pacifici2013_data.csv  | cut -d ";" -f 2-6 | tr ";" " " | sort -r -n -k 6 > ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/bodym.csv
```
6. Create a text file titled hw2-part5-commands.txt containing the commands you used to accomplish this task. This file should be inside the homework-two directory. Then, do the git add-commit-push workflow again.
```python
history 20 > hw2-part5-commands.text
git add -A
git commit -m "lecture hw2, part5"
git push origin master
```

