
CC	= gcc
TARGETS = lightmaterial
LDLIBS = -lglut -lGLU -lGL -lm
CFLAGS = -O2 -std=c90 


lightmaterial	:  lightmaterial.o glm.o 
	$(CC) -o lightmaterial lightmaterial.o  glm.o  $(LDLIBS)

lightmaterial.o	:	lightmaterial.c
	$(CC) -c $(CFLAGS) lightmaterial.c

glm.o	:	glm.c
	$(CC) -c $(CFLAGS) glm.c


clean :
	rm *.o
	touch *.c
