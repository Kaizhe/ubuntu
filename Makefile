.PHONY: all build push 

all: build push 

build:
	@echo "+ $@"
	./build.sh
push:
	@echo "+ $@"
	./push.sh
