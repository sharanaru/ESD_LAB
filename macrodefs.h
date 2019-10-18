#define HEAP_SIZE 4000
#define ask_allocation "Enter number of bytes for initial allocation  \n\r"
#define ask_allocation_new "enter number of bytes for allocation between 30 and 300 \n\r"
#define message_pass "Allocation was succesful\n\r"
#define message_initial_fail "Enter a different value\n\r"
#define endingaddress(x,y) printf("Ending address: %p\r\n",(x)+y-1);
#define message_fail "Allocation failed\n\r"
#define max_no_buffers 100