# iScripts
tl;dr These scripts let our army of Aye Ayes build custom images. If you're going to contribute scripts, follow the file organization and naming conventions.

### About iScripts
These scripts form the foundation of Shippable's custom build image generator.

### The User Experience
A user wants to focus on getting their containers built as quickly and easily as possible - not on writing Dockerfiles! After selecting their desired OS and languages on the website, the build image generator goes to work. The result is a custom image built exactly to their specifications, stored in their subscription for use again and again.

### Under the Hood
When the OS and language(s) are selected, they are sent to the Dockerfile generator. There the relevant shell script references are loaded in to the Dockerfile. Each shell script has a particular job - say, one to install the basic packages any Ubuntu user would need, one to get things ready for Node.js installation, one to install a specific version of Node, one to finish up the Node installation. Once the Dockerfile is done, we use that to create a custom image, just for them.

### File Organization
The organization of this repo matters! Since we use this repo's file structure to populate the OS and language selections on the website, make sure your script is in the right folder: os, language, or version.
- os: Any packages installed by the OS shell scripts are ones that every single user of that OS will need, like curl.
- language: Make a directory for each language. If every single installation of a language will need certain commands, these go in scripts in the root of that language's folder. We run the pre.sh script before installing the language; post.sh is run after.
- version: Each version gets its own file inside a version folder. (e.g. language/Node_js/version/0_10.sh)


### Naming Conventions
Only you can prevent awkward typos.
- Capitalize language and OS names the way they should appear on the website (e.g. Ubuntu)
- In file and directory names, substitute a hyphen for spaces (e.g. Red-Hat)
- In file and directory names, substitute an underscore for periods (e.g. Node_js)
- Version files are named according to what is relevant for installation. Frequently, this is just the major/minor numbers. (e.g. 0_10.sh)
