# Lecture HW2, Extra Credit
Whitney Tsai Nakashima

### 1.10.1 Next generation sequencing data
1. Change directory to CSB/unix/sandbox.
```python
cd /Developer/repos/CSB/unix/sandbox/
```
2. What is the size of the file Marra2014_data.fasta?
```python
ls -h -l ../data/Marra2014_data.fasta
```
**Answer: 553 kb**

3. Create a copy of Marra2014_data.fasta in the sandbox and name it my_file.fasta.
```python
cp ../data/Marra2014_data.fasta ./my_file.fasta
```
4. How many contigs are classified as isogroup00036?
```python
grep -c isogroup00036 my_file.fasta
```
**Answer: 16**

5. Replace the original "two-spaces" delimiter with a comma.
```python
cat my_file.fasta | tr -s " " | tr " " "," > my_new_file.fasta
```
**Comment:** I tried added the > my_file.fasta to the end of the command to write over the file, but then my_file.fasta was empty. This is why I decided to save a new file. I could at this point replace the old file with the new file using the mv command, but have left it for the sake of clarity.

6. How many unique isogroups are in the file?
```python
grep '>' my_new_file.fasta | cut -d "," -f 4 | uniq | wc -l
```
**Answer: 43**

7. Which contig has the highest number of reads (numreads)? How many reads does it have?
```python
grep '>' my_new_file.fasta | cut -d "," -f 1,3 | sort -k 2 -n
```
**Answer: >contig00302,numreads=3330**

### 1.10.2 Hormone levels in baboons

1. How many times were the levels of individuals 3 and 27 recorded?
```python
# change directories to data
cd ../data/
# view data structure of Gesquiere2011_data.csv
less Gesquiere2011_data.csv
# cut the first column to search for file for just individuals
# then count the number of lines matching individual 3
cut -f 1 Gesquiere2011_data.csv | grep -c -w 3
# and individual 27
cut -f 1 Gesquiere2011_data.csv | grep -c -w 27
```
**Answers: Individual 3 = 61, Individual 27 = 5**

**Comment:** See scripts in /hw2-ec/

2. Write a script taking as input the file name and the ID of the individual, and returning the number of records for that ID.
```python
# change directories to sandbox
cd ../sandbox
# make a script file
touch Gesquiere-q2.sh
# edit file and write script with the previous command, but replacing the file name and individual number with variables in the script (variable 1 - $1 and variable 2 - $2)
# bash script including filename $1 and individual number $2
bash Gesquiere-q2.sh ../data/Gesquiere2011_data.csv 3
# copy script to hw2-ec directory
cp Gesquiere-q2.sh ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/hw2-ec
```
3. [**Advanced**] Write a script that returns the number of times each individual was sampled.
```python
cd ~/Developer/repos/eeb-c177-homework/class-assignments/homework-two/hw2-ec
# determine the number of unique baboon IDs
cut -f -1 Gesquiere2011_data.csv | sort -n |uniq
# remove header
tail -n +2 ~/Developer/repos/CSB/unix/data/Gesquiere2011_data.csv | cut -f -1 | sort -n |uniq
bash Gesquiere-q3.sh
```
**Comment:** I used the footnote resources computingskillsforbiologists.com/captureoutput /bashloops to learn how to store a variable and more about writing loops.  I initially tried running the script but had surrounded the variable statement with forward ticks instead of back ticks and the script would not work. I realized my mistake and made the change and the script ran.
