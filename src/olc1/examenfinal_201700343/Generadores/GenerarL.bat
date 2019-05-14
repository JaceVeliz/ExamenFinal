SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_111\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
SET JFLEX_HOME="C:\Users\Carlos Veliz\Desktop\Compi\jflex-1.7.0\lib"
cd "C:\Users\Carlos Veliz\Documents\Proyectos de Netbeans\[OLC1]ExamenFinal_201700343\src\Serie1_201700343"
java -jar %JFLEX_HOME%\jflex-full-1.7.0.jar Lexico.jflex 
pause
