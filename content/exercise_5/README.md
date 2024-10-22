# Data Minded Academy - Introduction to Linux & Bash

## Exercise 5 - Redirection, pipes and commands (3)

In this exercise you will have to use the curl and jq command to query and browse a JSON from the Github API. jq is a lightweight and flexible command-line JSON processor that allows you to process data from a JSON file. curl is a command that allows you to emit HTTP requests over the network.

In this exercise, we will play with the Github JSON API. The API can be queried using curl like follows:

```
curl 'https://api.github.com/repos/scikit-learn/scikit-learn/commits?per_page=5'
```

GitHub returns nicely formatted JSON. For servers that don't, it can be helpful to pipe the response through jq to pretty-print it. The simplest jq program is the expression ., which takes the input and produces it unchanged as output:

```
curl 'https://api.github.com/repositories/5101141/commits?per_page=5' | jq '.'
```

From there, one can simply filter fields of interest. Like here filtering all the commit sha returned in the query:

```
curl 'https://api.github.com/repositories/5101141/commits?per_page=5' | jq '.[].sha'
```

JQ allows you to filter data based on the tree definition of the JSON (starting from the root). Above, we simply filtered something at the 1st level but you can also access fields in nested levels (e.g .[].commit.author.name). In the original JSON, there's a lot of info we don't care about. In the next query we'll restrict it down to the most interesting fields.

```
curl 'https://api.github.com/repositories/5101141/commits?per_page=5'  | jq '.[0] | {message: .commit.message, name: .commit.committer.name}'
````

The | operator in jq feeds the output of one filter (.[0] which gets the first element of the array in the response) into the input of another ({...} which builds an object out of those fields). You can access nested attributes, such as .commit.message. Depending on the structure of the JSON file, we can write complicated queries that extract information and recompose intermediate JSON if needed. For example:

```
curl 'https://api.github.com/repositories/5101141/commits?per_page=5' | jq '.[] | {message: .commit.message, name: .commit.committer.name, parents: [.parents[].html_url]}'
```

This query above retrieves, for every commit returned by the API, an intermediate JSON object with interesting fields extracted (message, name, and parents). The parents field is made from the field of the same name in the original JSON. Since the original is also a list, we extract all the html_url fields to recompose a list. itself a list.

The tasks are the following:

1. Read attentively all the explanations above and test all the commands. Play a bit around.
2. Display all the commit tree URLs for the last previous 20 commits
3. Create a list of JSON objects that will, for every of the last 20 commits, extract the information below and write the result to a file named commit_summary.json:

{
    commit_tree_url: ...,
    author_name: ...,
    message: ...,
    verified: ...,
    parents: [
        url,
        url,
        ...
    ]
}

4. From the weather.json file in this folder, create a JSON objects that will extract the information below. Write the result to a file named weather_summary.json:

{
    latitude: ...,
    longitude: ...,
    current_weather_description: ...,
    hourly_temps: [temp, temp, ...],
}

5. From the weather.json file (and using a combination of the jq, sort, uniq and head commands), figure out what is the most common description per day.

