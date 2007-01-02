/* #include "rdtsc.h" */

unsigned long long 
rdtsc(void)
{
  unsigned long long val;
  __asm__ __volatile__ ("rdtsc" : "=A" (val));
  return val;
}

