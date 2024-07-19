#include <stdio.h>
#include "header.h"

int main()
{
	#ifdef GM
	printf("Good Morning ...\n");
	#endif


	#ifdef GA
	printf("Good Afternoon ....\n");
	#endif

	#ifdef GE
	printf("Good Evening  ...\n");
	#endif
	
	return 0;
}
