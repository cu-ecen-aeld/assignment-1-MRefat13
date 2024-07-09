# Finder App: `finder.sh`

This shell script, `finder-app/finder.sh`, is designed to search for a given text string within all files in a specified directory and its subdirectories, and report the number of files and the number of matching lines found.

## Usage

The script accepts the following runtime arguments:

1. `filesdir`: The full path to a directory on the filesystem.
2. `searchstr`: The text string to be searched within the files.

For example, to run the script, you can use the following command:

```
./finder-app/finder.sh /path/to/directory "search_text"
```

## Functionality

The `finder-app/finder.sh` script performs the following tasks:

1. **Argument Validation**: The script checks if both required arguments (`filesdir` and `searchstr`) are provided. If not, it prints an error message and exits with a return value of 1.
2. **Directory Existence Validation**: The script checks if the `filesdir` argument represents a valid directory on the filesystem. If not, it prints an error message and exits with a return value of 1.
3. **File and Matching Line Counting**: The script recursively searches through the `filesdir` directory and its subdirectories, counting the number of files and the number of lines within those files that contain the `searchstr`.
4. **Output**: The script prints the message `"The number of files are X and the number of matching lines are Y"`, where `X` is the total number of files and `Y` is the total number of matching lines found.

## Error Handling

The script is designed to handle the following error cases:

1. **Missing Arguments**: If the required arguments (`filesdir` and `searchstr`) are not provided, the script prints an error message and exits with a return value of 1.
2. **Invalid Directory**: If the `filesdir` argument does not represent a valid directory on the filesystem, the script prints an error message and exits with a return value of 1.


This script uses the following shell commands:

- `[ "$#" -ne 2 ]`: Checks if the number of arguments (`$#`) is not equal to 2, which is the required number of arguments.
- `[ ! -d "$filesdir" ]`: Checks if the `filesdir` argument does not represent a valid directory.
- `find "$filesdir" -type f | wc -l`: Counts the number of files in the `filesdir` directory and its subdirectories.
- `find "$filesdir" -type f | xargs grep -c "$searchstr"`: Searches for the `searchstr` in all files in the `filesdir` directory and its subdirectories, and counts the number of matching lines.
- `echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"`: Prints the results

#
#
# Writer App: `writer.sh`

This shell script, `finder-app/writer.sh`, is designed to write a given text string to a specified file on the filesystem.

## Usage

The script accepts the following runtime arguments:

1. `writefile`: The full path (including the filename) to the file on the filesystem.
2. `writestr`: The text string to be written to the file.

For example, to run the script, you can use the following command:

```
./finder-app/writer.sh /path/to/file.txt "This is the text to be written."
```

## Functionality

The `finder-app/writer.sh` script performs the following tasks:

1. **Argument Validation**: The script checks if both required arguments (`writefile` and `writestr`) are provided. If not, it prints an error message and exits with a return value of 1.
2. **File Creation**: The script creates a new file with the specified `writefile` path, overwriting any existing file. If the directory path does not exist, it creates the necessary directories.
3. **Content Writing**: The script writes the `writestr` to the newly created file.
4. **Error Handling**: If the file could not be created for any reason, the script prints an error message and exits with a return value of 1.

## Error Handling

The script is designed to handle the following error cases:

1. **Missing Arguments**: If the required arguments (`writefile` and `writestr`) are not provided, the script prints an error message and exits with a return value of 1.
2. **File Creation Failure**: If the file could not be created for any reason, the script prints an error message and exits with a return value of 1.