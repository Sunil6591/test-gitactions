prepareBuildFolder() {
  # Copy project directories to build folder
  cd $BUILD_TMP_DIR
  echo "Copying client and captive portal in build directory" >> test.txt
  ls -l
}

finishBuild() {
  echo "Creating build archive ..."
#   cd $BUILD_TMP_DIR
  pwd
  zip --quiet --recurse-paths test.zip *
  pwd
  ls -lh
}

# # ===================== Start Build ======================
# ALERTC='\033[33;5;7m'
# SUCCESSC='\033[0;32m'
# NC='\033[0m'
# mkdir ../artifacts
BUILD_TMP_DIR=$(mktemp -d)
pwd

prepareBuildFolder
finishBuild