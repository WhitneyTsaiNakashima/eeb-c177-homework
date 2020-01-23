## HW3
Whitney Tsai Nakashima\
January 23, 2020

### Part one

1. Find the number of winners for each Nobel prize (chemistry, economics, literature, medicine, peace, physics).

```python
tail -n +2 nobel.csv | cut -d "," -f 3 | sort | uniq -c
```
**Answer:**\
Chemistry - 181\
Economics - 81\
Literature - 114\
Medicine - 216\
Peace - 133\
Physics - 210

2. Find the winners of multiple Nobel prizes.

```python
tail -n +2 nobel.csv | cut -d "," -f 5-6 | sort -k1 -k2 | uniq -c -d
```
**Answer:**\
Comité international de la Croix Rouge (International Committee of the Red Cross) - 3\
Frederick, Sanger - 2\
John, Bardeen - 2\
Linus Carl, Pauling - 2\
Marie, Curie - 2\
Office of the United Nations High Commissioner for Refugees (UNHCR) - 2

3. Find the most common surnames among the winners.

```python
tail -n +2 nobel.csv | cut -d "," -f 6 | sort | uniq -c -d | sort -nr
```
**Answer:**\
31 no last name (probabaly an organization)\
5 "Smith"\
4 "Wilson"\
4 "Fischer"\
3 "Müller"\
3 "Lewis"\
3 "Lee"\
2 "Williams"\
2 "Wiesel"\
2 "Tinbergen"\
2 "Thomson"\
2 "Simon"\
2 "Siegbahn"\
2 "Sanger"\
2 "Richardson"\
2 "Richards"\
2 "Porter"\
2 "Pauling"\
2 "Myrdal"\
2 "Murad"\
2 "Mott"\
2 "Moser"\
2 "Mistral"\
2 "Marshall"\
2 "Krebs"\
2 "Kornberg"\
2 "Kendall"\
2 "Jensen"\
2 "Hoffmann"\
2 "Hodgkin"\
2 "Hess"\
2 "Henderson"\
2 "Hall"\
2 "Friedman"\
2 "Frank"\
2 "Curie\
2 "Chamberlain"\
2 "Buck"\
2 "Brown"\
2 "Bragg"\
2 "Bohr"\
2 "Bloch"\
2 "Bardeen"\
2 "Anderson"\


4. The Nobel prizes have not been awarded every year since 1901. Which one has been awarded the most? Which the least?

```python
# year
tail -n +2 nobel.csv | cut -d "," -f 2 | sort | uniq -c | sort -nr
# category
tail -n +2 nobel.csv | cut -d "," -f 3 | sort | uniq -c | sort -nr
```

**Answer:**\
Year: Most in 2001 (15), least in 1916 (1).\
Category: Most in Medicine (216), least in Economics (81).
