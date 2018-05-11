![][license-badge]

<div align="center">
  <a href="http://github.com/oh-my-fish/oh-my-fish">
  <img width=90px  src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png">
  </a>
</div>
<br>



## Description

Easily jump around the file system by manually adding marks.

Marks are stored as symbolic links in the directory $MARKPATH (default $HOME/.marks)


## Installation

With [Oh-My-Fish](https://www.github.com/oh-my-fish/oh-my-fish):

    omf install jump

Without Oh-My-Fish:

    TODO

## Usage

    jump FOO: jump to a mark named FOO
    mark FOO: create a mark named FOO
    unmark FOO: delete a mark
    marks: lists all marks


## Configuration

If you have a custom mark folder, you can add the following to your `~/.config/fish/before.init.fish`.

```
set -gx MARKPATH YOUR_CUSTOM_FOLDER_PATH_HERE

```
## Credits

This is a port of [Jeroen Janssens' "jump" utility](http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html) [1] to the fish shell (and [Oh My Fish!](https://www.github.com/oh-my-fish/oh-my-fish)).

# License

[MIT][mit] © [bpinto][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/bpinto
[contributors]:   https://github.com/oh-my-fish/plugin-rbenv/graphs/contributors

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
