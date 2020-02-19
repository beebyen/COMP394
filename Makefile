stack:
	gcc -z execstack -fno-stack-protector -o stack stack.c
	sudo chown root stack
	sudo chmod 4755 stack

call_shellcode:
	gcc -z execstack -o call_shellcode call_shellcode.c

exploit:
	gcc -o exploit exploit.c

dash_shell_test:
	gcc -o dash_shell_test dash_shell_test.c
	sudo chown root dash_shell_test
	sudo chmod 4755 dash_shell_test
