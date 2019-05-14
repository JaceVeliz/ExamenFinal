SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_111\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd "C:\Users\Carlos Veliz\Documents\Proyectos de Netbeans\[OLC1]ExamenFinal_201700343\src\Serie1_201700343"
java -jar "C:\Users\Carlos Veliz\Desktop\Compi\java-cup-11b.jar" -parser A_Sintactico2 -symbols Simbolos Sintactico.cup
pause