import sys, os, platform
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def main():
	os.chdir(r''+PythonLocation()+"/01_E2WSDK/")
	os.system("python3 00_SwitchBuildMode.py")
if __name__ == '__main__':
    main()