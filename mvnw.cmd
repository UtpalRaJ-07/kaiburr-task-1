@ECHO OFF
setlocal
set MAVEN_WRAPPER_POWERSHELL_PATH=%~dp0.mvn\wrapper\maven-wrapper.jar
set WRAPPER_URL="https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar"
if not exist "%MAVEN_WRAPPER_POWERSHELL_PATH%" (
  echo Downloading Maven wrapper...
  powershell -Command "Invoke-WebRequest -Uri %WRAPPER_URL% -OutFile '%MAVEN_WRAPPER_POWERSHELL_PATH%'"
)
set MAVEN_HOME=%~dp0.mvn\wrapper
set JAVA_EXE=java
%JAVA_EXE% -jar "%MAVEN_WRAPPER_POWERSHELL_PATH%" %*
endlocal
