import sys, os, platform
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def main():
	os.system("python3 "+PythonLocation()+"/../01_E2WSDK/jinli20180518.py Configuration_S3")
if __name__=='__main__':
    main()