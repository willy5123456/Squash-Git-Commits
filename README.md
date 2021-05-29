# A shell script that squashes your commits to a single commit relative to a main branch

Suppose you are working on a feature branch, and because of context-switching, your feature branch contains lots of temporary commits:

![Branch with WIP commits](./images/unsquashed.svg)

Before merging your changes to the main branch, you would like to squash all your changes to a single commit:

![Branch with WIP commits](./images/squashed.svg)

With this shell script, you can run:

```bash
squash-commits main 'feat: Add new header'
```

It will squash all of your commits to a single commit with the commit message `feat: Add new header` right above the `main` branch!

### Installation:

1. Download the [squash-commits.sh](https://github.com/EKarton/Squash-Git-Commits/blob/main/squash-commits.sh) file to your local computer, and name the file **squash-commits.sh**
2. Create an alias of this script on your terminal by having:

    ```bash
    alias squash-commits="~/Downloads/squash-commits.sh"
    ``` 
    
    in your `~/.bash_rc` or `~/.zshrc` file

3. Reload your terminal by running ```source ~/.bash_rc``` or ```source ~/.zshrc```

4. Go to your Git repo, check out to your feature branch, and run:

    ```bash
    squash-commits <base-branch> "<your-commit-message>"
    ```

    where:
    * `<base-branch>` is the branch you want the single commit to be right above
    * `<your-commit-message>` is your commit message from your code changes

### Disclaimer:

I have no responsibility over any damages or loss that may occur during the execution of or usage of my shell script.




