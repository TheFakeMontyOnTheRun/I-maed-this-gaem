CXX = clang++

SDL_LIB = -L/usr/lib -lSDL -lSDL_gfx -lSDL_image -lSDL_mixer
SDL_INCLUDE = -I/usr/local/include `sdl-config --cflags `

CXXFLAGS = -std=c++0x -O2 -g -Wall -fno-rtti -Bstatic -Weffc++ -fmessage-length=0 $(SDL_INCLUDE) -Iinclude
OBJS = src/CGame.o SDLVersion/main.o SDLVersion/CSDLRenderer.o
LIBS = $(SDL_LIB)
TARGET = game

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

all:   $(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
