import sys, os, platform
PythonVersion = ""
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def GetPythonCommand():
	global PythonVersion
	if PythonVersion!="":
		return PythonVersion
	version1 = os.popen("python3 --version")
	version2 = os.popen("python.exe --version")
	version3 = os.popen("python --version")
	# print("Version:"+version1.read())
	# print("show:"+version2.read())
	# print("show:"+version3.read())
	if version1.read()!="":
		PythonVersion="python3"
	if version2.read()!="":
		PythonVersion="python.exe"
	if version3.read()!="":
		PythonVersion="python"
	print("Your are using python command:"+PythonVersion)
	return PythonVersion
def main():
	os.chdir(r''+PythonLocation()+"/01_E2WSDK/")
	os.system(GetPythonCommand()+" 00_DeleteCache.py")
	os.system(GetPythonCommand()+" 00_UpdateProject.py")
if __name__ == '__main__':
    main()