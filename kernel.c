#define UART0_DR ((volatile unsigned int*)(0x3F201000))

//TEST (made my own printf function since I can't use any C library)
void printf(char *str) {

        while (*str) {
                *UART0_DR = (unsigned int)(*str);
                str++;
        }

}
//TEST

void main_kernel() {
        printf("Kernel is Running\n");

        while (1){}
}