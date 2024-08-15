# Use of Special variables

clean:
	@rm -rf c-files/bin/*.o

# $@ variable represent target
# $< represent first pre-requisite
c-files/bin/%.o: c-files/%.c | bin_dir
	@echo "Code compiling..."
	@gcc $< -o $@

bin_dir:
	@echo "Checking if bin is present"
	@mkdir -p c-files/bin