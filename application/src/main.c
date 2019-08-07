#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    if(argc != 3)
    {
	fprintf(stderr, "Please specify an output file, and run mode!\n");
	exit(1);
    }

    char *fname = argv[1];
    char *run_mode = argv[2];
    FILE *fp;
    fp = fopen(fname, "w");

    if (strcmp(run_mode, "quick") == 0)
	fprintf(fp, "Hello Singularity! This is a quick run");
    else if (strcmp(run_mode, "full") == 0)
    {
	sleep(60);
	fprintf(fp, "PRACE is the MVP! This is a full run");
    }
    else
    {
	fprintf(stderr, "Run mode can only be 'quick' or 'full', not %s\n", run_mode);
	exit(1);
    }

    fclose(fp);

    return 0;
}
