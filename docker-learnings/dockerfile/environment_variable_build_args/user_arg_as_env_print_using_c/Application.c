#include <stdio.h>
#include <stdlib.h>

int main() {
    // Environment variables to print
    const char *vars[] = {"USER", "PASSWORD", NULL};

    // Loop through the environment variables and print their values
    for (int i = 0; vars[i] != NULL; i++) {
        const char *value = getenv(vars[i]);
        if (value != NULL) {
            printf("%s = %s\n", vars[i], value);
        } else {
            printf("%s is not set.\n", vars[i]);
        }
    }

    return 0;
}
