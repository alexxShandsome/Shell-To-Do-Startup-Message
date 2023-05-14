# To Do/s Shell Startup Message
Output To Do/s during Shell Startup. Tested in bash and zsh.

<br>

## Dependencies
* [fortune-mod](https://github.com/shlomif/fortune-mod)
* [cowsay](https://github.com/piuccio/cowsay)
* date from [coreutils](https://github.com/coreutils/coreutils) (probably installed by default)

<br>

## Features
* Count all To Do/s as long as it has "- " in the beginning of the line.
* A random quote with a cow saying it if you don't have any To Do/s.
* **Let's you rest during Sundays**. Will not display Tasks or To Do/s during Sunday.

<br>

## Getting Started
Clone this repository.
```bash
git clone https://github.com/alexxShandsome/Shell-To-Do-Startup-Message
```

Navigate to the cloned repository and do a chmod to the script
```bash
cd Shell-To-Do-Startup-Message
chmod u+x shell_startup.sh
```

Create a text file with this format inside.
```
Deadline Date:
   - To Do
   - To Do
   - To Do

Deadline Date:
   - To Do
   - To Do
```

Open the ```shell_startup.sh``` file and add the text file directory next to the
```to_do_file=``` variable. Not encased in ```''``` or ```""```.
```bash
to_do_file=text_file_directory
```

Open your ```.bashrc``` or ```.zshrc``` file and add this at the bottom.
```bash
<directory_where_is_this_repo_cloned>/Shell-To-Do-Startup-Message/shell_startup.sh
```

<br>
