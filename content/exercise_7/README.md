# Data Minded Academy - Introduction to Linux & Bash
## Exercise 7 - Bash scripting

In this final (and very long) exercise you will have to create various bash scripts. Feel free to create them directly in this folder. You will definitely need to use Google to find how to do things but feel free to ask your instructor as well. Finally, feel free to create the files/folders you'd need to run your scripts. The scripts your are asked to create are the followings:

* Script 1: Write a shell script that prints “Shell Scripting is Fun!” in the console.

* Script 2: Modify the shell script from exercise 1 to include a variable. The variable will hold the contents of the message “Shell Scripting is Fun!”

* Script 3: Store the output of the command `hostname` in a variable. Display “This script is running on <placeholder>". Where <placeholder> is the output of the `hostname` command.

* Script 4: Write a shell script to check if the file "passwords" exists at a given file path. If it does exist, display “The passwords are loaded.”. If it doesn't, display "The passwords aren't loaded.". Next, and only if the passwords are loaded, check if you can write to the file. If you can, display “You have permissions to edit the system passwords”. If you can't, display “You do NOT have permissions to edit the system passwords”. Create the file and adapt its permissions to test all the issues of your script.

* Script 5: Write a shell script that displays “Python”, ”C++”, ”Go”, ”Java”, ”Perl”, and “Rust” on the screen with each appearing on a separate line. Try to do this in the fewest number of lines.

* Script 6: Write a shell script that prompts the user for the name of a file or directory. First, check if the file path exist. If it doesn't, prompt "This file path doesn't exist". If it does, report if it is a regular file, a directory, or another type of file. Also perform an `ls` command against the file or directory with the long listing option enabled.

* Script 7: Modify the previous script to that it accepts the file or directory name as an argument instead of prompting the user to enter it.

* Script 8: Modify the previous script to accept an unlimited amount of files and directories as arguments.

* Script 9: Write a shell script that displays, “This script will exit with 0 exit status.” Be sure that the script does indeed exit with an exit code of 0.

* Script 10: Write a shell script that accepts a file or directory name as an argument. First, check if the file path exists. If it doesn't, prompt "This file path doesn't exist" and exit with an exit code of 2. If yes, reports if it is a regular file, a directory, or another type of file. If it is a directory, exit with an exit code of 1. If it is a file, exit with an exit code of 0. For some other type of file, return an exit code of 2.

* Script 11: Write a script that executes the command `cat/etc/shadow`. If the command returns with an exit code of 0, report “Command succeeded” and exit with an exit code of 0. If the command returns a non-zero exit status, report “Command failed” and exit with an exit code of 1.

* Script 12: Write a shell script that consists of a function that displays the number of files in the present working directory. Name this function `file_count` and call it in your script. If you use variable in your function, remember to make it a local variable.

* Script 13: Modify the script from the previous exercise. Make the `file_count` function accept a directory as an argument. Next, have the function display the name of the directory followed by a semicolon. Finally display the number of files to the screen on the next line. Call the function three times. First on the `/etc` directory, next on the `/var` directory and finally on the `/usr/bin` directory.

* Script 14: Write a script that renames all files that end with `.csv` in the current directory to start with today’s date in the following format: YYYY-MM-DD. For example, if a data file is in the current directory and today is October 31st, 2016 it would change name from  `data-abc.csv` to `2016–10–31-data-abc.csv`.

* Script 15: Write the script that renames files based on the file extension. First, ask for an extension then ask the user what prefix to prepend to the file name(s). By default, the prefix should be the current date in YYYY-MM-DD format. If the user simply press enter, the current date will be used. Otherwise, whatever the user entered will be used as the prefix. If no files with the given extension exist, prompt that "No files found here with the `.<extension>` extension". Finally, if files have been found, display the original file name and new name of the file before applying the renaming.

* Script 16: Write a shell script that exits on error and displays command as they will execute, including all expansions and substitutions. Use 3 `ls` command in your script. Make the first one succeed, the second one fail, and third one succeed. If you are using the proper options, the third `ls` command not be executed.
