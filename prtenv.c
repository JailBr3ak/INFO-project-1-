    /*  prtenv.c  */

    #include <stdio.h>
    #include <unistd.h>


    void main()
    {
       char * shell = getenv("MYSHELL");
	   if(shell)
		   printf("%x\n", (unsigned int) shell);
	   return 0;
    }