# Setting
1. Place the repo in your project.
2. Create a convenient alias in your bash profile or simply call the script.
```console
alias s='bash PATH/settle.sh'
```
3. Modify the templates for your own needs but keep in mind changing the 'MyComponent' symbol has you to rename it in the regular expression inside the bash script as well.
# Usage
```console
bash PATH/settle.sh [MODE]
```
### modes:
- basic (functional component)
- standard (class component, constructor method, render method)
- sophisticated (class component, constructor method, render method, lifecycle methods, empty state object)

# Prompts
1. Component/s names 
```console
What components you wish to create?: MyComponent
```
```console
What components you wish to create?: MyComponent01 MyComponent02 MyComponent03
```
2. Path where components are going to be deployed
```console
Path directory: (current is ~/home/path): ./src 
```