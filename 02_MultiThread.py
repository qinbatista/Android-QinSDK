import sys, os, platform
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def main():
	os.chdir(r''+PythonLocation()+"\\01_E2WSDK\\")
	os.system("00_MultiThread.py")
if __name__ == '__main__':
    main()