## HW3
Whitney Tsai Nakashima\
January 23, 2020

### Part 2

1. Count the number of occurrences for each category (EX, RE, etc.).
```python
# remove header
# cut only category column
# sort and count uniq lines
# sort from lowest to highest
tail -n +2 European_Red_List.csv | cut -d "," -f 10 | sort | uniq -c | sort -n
```

**Answer:**\
4 EW\
4 NE\
8 CR (PE)\
8 RE\
29 EX\
411 NA\
456 CR\
687 EN\
885 VU\
964 NT\
2409 DD\
5805 LC

2. Repeat the previous step, but only consider birds (class AVES).
```python
# remove header
# find all lines with AVES
# cut only category column
# sort and count uniq lines
# sort from lowest to highest
tail -n +2 European_Red_List.csv | grep -w "AVES" | cut -d "," -f 10 | sort | uniq -c | sort -n
```
**Answer:**\
2 EX\
4 RE\
10 CR\
18 EN\
32 NT\
39 VU\
428 LC

3. For each order of birds, compute the number of extinct/near extinct (EX, RE or CE) species.
```python
# remove header
# find all lines with AVES
# cut only order and category columns
# find only EX, RE, CE categories
# sort and count uniq lines
tail -n +2 European_Red_List.csv | grep -w "AVES" | cut -d "," -f 5,10 | grep -w -E "EX|RE|CE" | sort | uniq -c
```
**Answer:**\
2 CHARADRIIFORMES,EX
1 CHARADRIIFORMES,RE
1 PASSERIFORMES,RE
1 PELECANIFORMES,RE
1 SULIFORMES,RE
