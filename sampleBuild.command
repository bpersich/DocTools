# Variables. Define these for your system/content

  markeditclipath="<Path to your marked-it-cli directory>"
    # For example: markeditclipath="/Users/bpersich/node_modules/marked-it-cli"

  sourcepath="<Path to your markdown source file>"
    # For example: sourcepath="/Users/bpersich/MD-transforms/sap-hana"

  outputpath="<Path to where you want to write your output>"
    # For example: outputpath="/Users/bpersich/MD-transforms/sap-hana-output"

  outputlogfilepath="<Path to where you want to write your output log file>"
    # For example, outputlogfilepath"/Users/bpersich/MD-transforms/"

# After defining the above variables:
#   1. Save this file.
#   2. Copy your source content to the sourcepath directory.
#   3. Double click this file to run the build command.


# Build command. You do not need to edit this command if you define the variables above
  node "$markeditclipath"/bin/marked-it-cli "$sourcepath" --output="$outputpath" --header-file="$markeditclipath/header.txt" --footer-file="$markeditclipath"/footer.txt --extension-file="$markeditclipath"/example/accessibilityExt.js --extension-file="$markeditclipath"/example/xmlTocExt.js --conref-file="$markeditclipath"/cloudoeconrefs.yml --toc-xml --overwrite --verbose >"$outputlogfilepath"/output-log_"$(date +"%Y_%m_%d_%I-%M_%p")".txt
