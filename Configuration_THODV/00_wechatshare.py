import sys, os, platform
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def main():
	os.system("python3 "+PythonLocation()+"/../01_E2WSDK/wechatshare.py Configuration_THODV")
if __name__=='__main__':
    main()