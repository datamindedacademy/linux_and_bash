# Data Minded Academy - Introduction to Linux & Bash
## Exercises Repository

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/datamindedacademy/linux_and_bash)

This repository is hosting the exercises provided to students in the context of the `Introduction to Linux & Bash` course of the Data Minded Academy.

## 1. The exercises in details

The following exercises are part of the repository:

* **Exercise 1 (`exercise_1`) - Learn to move around**: In this exercise, students are asked to:
    * Run the `source messthisthingup.sh` script. The latter will customize the $PS1 variable to hide all the information of the terminal and bring students somewhere random in the system.
    * Determine where they currently are.
    * Say how many files are there. What are they? (`ls -1 | wc -l`)
    * Run `ls -la`. What are those information about?
    * Find their way back to the folder where they ran the first script to run the `source imback.sh` script.

* **Exercise 2 (`exercise_2`) - Files manipulation & globbing**: In this exercise, students are asked to:
    * Use the `tree` command to visualize the whole file structure.
    * Separate the files that are in the `landing_area` folder to respect the other folders patterns (using mv and globbing) 

* **Exercise 3 (`exercise_3`) - Redirection, pipes and commands (1)**: In this exercise, students are asked to:
    * Run the `ls –al /bin` which will return all the programs in the image binaries folder.
    * Use the `head` and `tail` commands in coordination with the piping operation to retrieve the 10th result starting from the top and the 10th result starting from the bottom.
    * Write the two results to the same file `output.log` by using redirection and concatenation operators

* **Exercise 4 (`exercise_4`) - Redirection, pipes and commands (2)**: In this exercise, students are asked to:
    * Use the awk command to process the content of a .csv file and answer different questions that make student play with awk, piping (and Google :p)

* **Exercise 5 (`exercise_5`) - Redirection, pipes and commands (3)**: In this exercise, students are asked to:
    * Use `jq` to query a specific heavily-nested JSON file from the Github API and a Weather API.

* **Exercise 6 (`exercise_6`) - Permissions**: In this exercise, students are asked to:
    * Try to check the content of the `the_locked_file` file. What's the problem?
    * Fix the issue with sensible parameters:
        * Be able to read the file content
        * Match a given access pattern:
            * THE user should have read, write and execution permissions. 
            * Owning group should have read and execution only. 
            * Others should have read permission only.

* **Exercise 7 (`exercise_7`) - Bash scriptingr**: In this exercise, students are asked to:
    * **Script 1:** Write a shell script that prints “Shell Scripting is Fun!” in the console.

    * **Script 2:** Modify the shell script from exercise 1 to include a variable. The variable will hold the contents of the message “Shell Scripting is Fun!”

    * **Script 3:** Store the output of the command “hostname” in a variable. Display “This script is running on <placeholder>". Where <placeholder> is the output of the “hostname” command.

    * **Script 4:** Write a shell script to check if the file "passwords" exists at a given filepath. If it does exist, display “The passwords are loaded.”. If not, display "The passwords aren't loaded.". Next, and only if the passwords are loaded, check if you can write to the file. If you can, display “You have permissions to edit the system passwords”. If you can't, display “You do NOT have permissions to edit the system passwords”. Create the file and adapt its permissions to test all the issues of your script.

    * **Script 5:** Write a shell script that displays “Python”, ”C++”, ”Go”, ”Java”, ”Perl”, and “Rust” on the screen with each appearing on a separate line. Try to do this in the fewest number of lines.

    * **Script 6:** Write a shell script that prompts the user for the name of a file or directory. First, check if the filepath exists. If not, prompt "This filepath doesn't exists.". If yes, reports if it is a regular file, a directory, or another type of file. Also perform an ls command against the file or directory with the long listing option enabled.

    * **Script 7:** Modify the previous script to that it accepts the file or directory name as an argument instead of prompting the user to enter it.

    * **Script 8:** Modify the previous script to accept an unlimited amount of files and directories as arguments.

    * **Script 9:** Write a shell script that displays, “This script will exit with 0 exit status.” Be sure that the script does indeed exit with a 0 exit status.

    * **Script 10:** Write a shell script that accepts a file or directory name as an argument. First, check if the filepath exists. If not, prompt "This filepath doesn't exists." and exit with a 2. If yes, reports if it is a regular file, a directory, or another type of file. If it is a directory, exit with a 1 exit status. If it is a file, exit with a 0 exit status. For some other type of file, return a 2 exit status.

    * **Script 11:** Write a script that executes the command 'cat/etc/shadow'. If the command returns a 0 exit status, report “Command succeeded” and exit with a 0 exit status. If the command returns a non-zero exit status, report “Command failed” and exit with a 1 exit status.

    * **Script 12:** Write a shell script that consists of a function that displays the number of files in the present working directory. Name this function “file_count” and call it in your script. If you use variable in your function, remember to make it a local variable.

    * **Script 13:** Modify the script from the previous exercise. Make the “file_count” function accept a directory as an argument. Next, have the function display the name of the directory followed by a semicolon. Finally display the number of files to the screen on the next line. Call the function three times. First on the “/etc” directory, next on the “/var” directory and finally on the “/usr/bin” directory.

    * **Script 14:** Write a script that renames all files that end with “.csv” in the current directory to start with today’s date in the following format: YYYY-MM-DD. For example, if a data file is in the current directory and today is October 31,2016 it would change name from data-abc.csv” to “2016–10–31-data-abc.csv”.

    * **Script 15:** Write the script that renames files based on the file extension. First, ask for an extension then ask the user what prefix to prepend to the file name(s). By default, the prefix should be the current date in YYYY-MM-DD format. If the user simply press enter, the current date will be used. Otherwise, whatever the user entered will be used as the prefix. If no files with the given extension exist, prompt that "No files found here with the .<extension> extension.". Finally, if files have been found, display the original file name and new name of the file before applying the renaming.

    * **Script 16:** Write a shell script that exits on error and displays command as they will execute, including all expansions and substitutions. Use 3 ls command in your script. Make the first one succeed, the second one fail, and third one succeed. If you are using the proper options, the third ls command not be executed.


## 2. How-to run

This exercise workshop can be run directly on Gitpod. You just need to click the button below.

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/datamindedacademy/linux_and_bash)


## 3. Notes

* The login/password set to access the ttyd environment is linux_bash/linux_bash
* The user account password of this lab image is 'linux_bash'
* All the exercises solutions are in `content/solutions` and are hidden in the Lab environment at the following paths:

|            | Path in Docker image |
|------------|---------------|
| Exercise 1 | `No solution required` |
| Exercise 2 | `/bin/glados` |
| Exercise 3 | `/bin/acme` |
| Exercise 4 | `/bin/blizzard` |
| Exercise 5 | `/bin/piper`|
| Exercise 6 | `No solution required` |
| Exercise 7 | `/bin/abstergo` |