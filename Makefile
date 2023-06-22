CXX := emcc
CXX_SUFFIX := cc

INCLUDE_DIR := ./src
SRC_DIR := ./src
BUILD_DIR := ./build

SRC := $(wildcard $(SRC_DIR)/*.$(CXX_SUFFIX))

all: wasm

wasm:
	mkdir -p $(BUILD_DIR)
	${CXX} ${SRC} -Os -s SIDE_MODULE=1 -s WASM=1 -s -o $(BUILD_DIR)/template.wasm

clean:
	rm -rf $(BUILD_DIR)
