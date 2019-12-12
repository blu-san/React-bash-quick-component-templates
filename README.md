# Setting
1. Place the repo in your project.
2. Create a convenient alias in your bash profile or simply call the script.
```bash
alias s='bash PATH/settle.sh'
```
3. Modify the templates for your own needs but keep in mind changing the 'MyComponent' symbol has you to rename it in the regular expression inside the bash script as well.
# Usage
```bash
bash PATH/settle.sh [MODE]
```
### modes:
- basic (functional component)
- standard (class component, constructor method, render method)
- sophisticated (class component, constructor method, render method, lifecycle methods, empty state object)
# Prompts
1. Component/s names 
```bash
What components you wish to create?: MyComponent
```
```bash
What components you wish to create?: MyComponent01 MyComponent02 MyComponent03
```
2. Path where components are going to be deployed
```bash
Path directory: (current is ~/home/path): ./src 
```
# Incorrect input handling
```bash
No valid argument has been passed # will be outputed into the console if no valid mode argument has been provided
``` 
```bash
Directory does not exist # will be outputed into the console if the provided path is not correct
``` 
