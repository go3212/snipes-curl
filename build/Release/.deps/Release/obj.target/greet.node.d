cmd_Release/obj.target/greet.node := g++ -o Release/obj.target/greet.node -shared -pthread -rdynamic -m64  -Wl,-soname=greet.node -Wl,--start-group Release/obj.target/greet/src/greeting.o Release/obj.target/greet/src/index.o -Wl,--end-group -lcurl
