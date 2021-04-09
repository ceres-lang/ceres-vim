# Vim highlighting for Ceres
Experimental syntax highlighting in vim for the Ceres Programming Language

## Installing manually

Currently, the only way to install the experimental highlighting is manually.
In the future, there may be support added to install using `Vimplug` or other plugin managers.

```sh
# Make directory if it doesn't exist
mkdir -p ~/.vim/syntax/

cp ceres.vim ~/.vim/syntax/ceres.vm

# Set a new ftdetect 
echo "au BufRead,BufNewFile *.crs set filetype=ceres" > ~/.vim/ftdetect/ceres.vim

# Cat it to be sure
cat ~/.vim/ftdetect/ceres.vim
```
