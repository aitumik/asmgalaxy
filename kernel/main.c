#define UART_ADDR 0x10000000UL

void putc(char c) {
    *UART_THR = c;
}

void print_str(const char *s) {
    while(*s) {
        putc(*s++);
    }
}

void main(void) {
    print_str("Hello from C RISC-V kernel.\n");
    print_str("If you see this, the UART driver works.\n");

    for(;;) {

    }
}
