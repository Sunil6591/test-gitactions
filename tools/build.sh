prepareBuildFolder() {
  # Copy project directories to build folder
#   cd $BUILD_TMP_DIR
  cd $PROJECT_DIR
  echo "Copying client and captive portal in build directory" >> test.txt
  ls -l $PROJECT_DIR
  cp -r $PROJECT_DIR/test.txt $BUILD_TMP_DIR
  ls -l $BUILD_TMP_DIR
}

finishBuild() {
  echo "Creating build archive ..."
  cd $BUILD_TMP_DIR
  pwd
  zip --quiet --recurse-paths test.zip *
  pwd
  ls -lh
}

# # ===================== Start Build ======================
# ALERTC='\033[33;5;7m'
# SUCCESSC='\033[0;32m'
# NC='\033[0m'
mkdir ../artifacts
BUILD_TMP_DIR=artifacts
PROJECT_DIR=$(dirname $PWD)
pwd

prepareBuildFolder
finishBuild