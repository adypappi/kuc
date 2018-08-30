#Get debian based linux Semantic version number X.Y.Z from bash command line
uname -v | grep -Po "(?<=SMP Debian )(\d+\.\d+\.\d+)"
