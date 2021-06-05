SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_211\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd D:\Documentos\NetBeansProjects\AnalizadorSintacticoPf\src\Analizadores
java -jar D:\Documentos\NetBeansProjects\Fuentes\java-cup-11b.jar -parser Analisis_sintactico -symbols Simbolos A_sintactico.cup
exit

