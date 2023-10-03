# petstore
Sample petstore application built using Java with a PostGreSQL database. This repo was modified from [here](https://github.com/IBM-Cloud/jpetstore-kubernetes).
## jpetstore directory
The jpetstore directory is setup to allow for S2I builds for the main petstore application with IBM Semuru Java. This means deployment with RedHat Pipelines is fairly straightforward.
## pet-images
Random directory with the pet images from the original IBM Jpetstore
## readme_images
Images from the original IBM Jpetstore Readme
## petstore-pipelines-files
All of the yaml used to write the MultiArch build pipelines for OpenShift on x86 and s390x.
