# iScripts
tl;dr These scripts let our army of Aye Ayes build custom images. If you're going to contribute scripts, follow the file organization and naming conventions.

### About iScripts
These scripts form the foundation of Shippable's custom build image generator.

### The User Experience
You want to focus on getting your containers built as quickly and easily as possible - not on writing Dockerfiles! After selecting your desired OS and languages on the website, the build image generator goes to work. The result is a custom image built exactly to your specifications, stored in your subscription for use again and again.

### Under the Hood
When the OS and language(s) are selected, they are sent to the Dockerfile generator. There the relevant shell script references are loaded in to the Dockerfile. Each shell script has a particular job - say, one to install the basic packages any Ubuntu user would need, and one to install a specific version of Node. Once the Dockerfile is done, we use it to create a custom image, just for you.

### File Organization
The organization of this repo matters! Since we use this repo's file structure to populate the OS and language selections on the website, make sure your script is in the right directory.
- os: Any packages installed by the OS shell scripts are ones that every single user of that OS will need, like curl. Also, in the root of each OS's directory, there needs to be an empty file. That file has the name of the package manager used by that os. Example: the Ubuntu directory has a file named "apt-get" in it.
- apt-get, yum, etc: We sort our scripts by which package manager is used to do the installation. Next, each package manager folder has directories for language and service. Each language (like Node.js) or service (like MySQL) gets their own folder inside of these, containing version-specific installation scripts.
- version: Each version gets its own file inside a version directory. (e.g. apt-get/language/Node_js/version/0_10.sh)


### Naming Conventions
Only you can prevent awkward typos.

##### Language, Service, and OS Names
- Capitalize names the way they should appear on the website (e.g. Ubuntu)
- In file and directory names, substitute a hyphen for spaces (e.g. Red-Hat)
- In file and directory names, substitute an underscore for periods (e.g. Node_js)
- Version files are named according to what is relevant for installation. Frequently, this is just the major/minor numbers. (e.g. 0_10.sh)

##### Package Manager Names
- If you are adding a directory for a package manager, substitutions for periods and spaces don't apply. Example: "apt-get" is still "apt-get".
- Package manager names (both the directory name and the name of the file in the OS folder) are always lowercase.
