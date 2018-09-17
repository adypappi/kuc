#Get the kernel linux Semantic version number X.Y.Z from bash command line
uname -r | grep -Po "(\d+\.\d+\.\d+)"
