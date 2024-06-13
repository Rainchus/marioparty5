#ifndef STDARG_H
#define STDARG_H

typedef struct {
    char gpr;
    char fpr;
    char reserved[2];
    char* input_arg_area;
    char* reg_save_area;
} __va_list[1];
typedef __va_list va_list;

void* __va_arg(va_list v_list, unsigned char type);

#define va_start(ap, fmt) ((void) fmt, __builtin_va_info(&ap))
#define va_arg(ap, t) (*((t*) __va_arg(ap, _var_arg_typeof(t))))
#define va_end(ap) (void) 0

#endif