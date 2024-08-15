# Use of actual files

clean:
	@rm -rf c-files/bin/*.o

# If c file is modify then only the target will execute
# c-files/%.c is called as pre-requiste. if pre-requise is present and modified then only target will execute
# bin_dir is called as order-only prerequisite, which execute even if file not modified
c-files/bin/add.o: c-files/add.c | bin_dir
	@gcc c-files/add.c -o c-files/bin/add.o

# What if bin folder not present

bin_dir:
	@echo "Checking if bin is present"
	@mkdir -p c-files/bin