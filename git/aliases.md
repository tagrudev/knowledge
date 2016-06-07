An alias is simply a way to add a shorthand for a common Git command or set of Git commands.

``` shell
git config --global alias.co checkout
```

Globals are written in ~/.gitconfig file (code below needs to be added to that file under the alias category)

Good way to display log -
oneline - compressed view
decorate - branch, head, etc. labels
graph - asci graph

``` shell
[alias]
    l = log --oneline --decorate --graph
```
