import sys, os, platform
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def main():
	os.system("python.exe "+PythonLocation()+"\\..\\01_E2WSDK\\xmhw20180814.py Configuration_GIU")     
if __name__=='__main__':
    main()