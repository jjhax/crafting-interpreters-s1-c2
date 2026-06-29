JAVAC=javac
sources = $(wildcard *.java)
classes = $(sources:.java=.class)

all: program

program: $(classes)

clean:
	rm -rf *.class

%.class: %.java
	$(JAVAC) $<

jar: $(classes)
	jar cvfm program.jar manifest.txt $(classes)

run:
	java -jar program.jar

.PHONY: all program clean jar run

