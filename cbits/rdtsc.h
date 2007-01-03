#define rdtscll(val) \
     __asm__ __volatile__ ("rdtsc" : "=A" (val))

unsigned long long rdtsc(void);
