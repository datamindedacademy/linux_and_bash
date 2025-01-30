# Data Minded Academy - Introduction to Linux & Bash
## Exercise 4 - Redirection, pipes and commands (2)

In this exercise you will have to use the pipe operator in conjunction with the `awk` command to process data in a csv file. The mlb_players.csv file contains information about players from the US Major League of Baseball. Using the awk command, we are going to analyze the content of the file without spinning up a Jupyter notebook.

The awk command offers a powerful way to parse and process data in a file. The shape of an awk query is as follows:

```
cat <input file> | awk -F<field separator>  '<query>'
```

For example:
```
cat mlb_players.csv | awk -F,  '{if ($4>75) {print $4/2}}'  # if the 4th field is greater than 75, print it divided by 2
---
cat mlb_players.csv | awk -F,  '{if ($1 ~ "Scott.*") {print $0}}' # if the 1st field meet the regex inputed, print the whole line
```

awk also allows the user to keep a state between each line processing by using multiple blocks like follows:
```
cat mlb_players.csv | awk -F,  '{if ($1 ~ "Scott.*") {count+=1}} END {print "The count of Scott is: " count}'
```
In the example above, the first block `{if ($1 ~ "Scott.*") {count+=1}}` is executed for every line of the file with the END block `{print "The count of Scott is: " count}` is, obviously, only executed at the end of the processing. This allows you to make complex computations directly from the terminal.


The tasks are the following:

1. Read attentively all the explanations above and test all the commands. Play a bit around.
2. Print the lines where the player's first name is Jose
3. From the result above, print the name (field 1), team (field 2) and age (field 6) of the players
4. From the result above, keep only the players that are older than 27
5. Export the result of the query to a separated file named 'results'
6. Find out a way to count how many players are left
7. From the result at 4 and on top of the information already displayed, compute and display what is the average age of players (Jose's older than 27)
