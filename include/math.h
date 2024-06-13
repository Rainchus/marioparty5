#ifndef _MATH_H
#define _MATH_H

#define M_PI 3.141592653589793

#ifndef _MATH_INLINE
#define _MATH_INLINE static inline
#endif

extern inline float sqrtf(float x)
{
	volatile float y;
	if(x > 0.0f)
	{
		double guess = __frsqrte((double)x);   // returns an approximation to
		guess = 0.5*guess*(3.0 - guess*guess*x);  // now have 12 sig bits
		guess = 0.5*guess*(3.0 - guess*guess*x);  // now have 24 sig bits
		guess = 0.5*guess*(3.0 - guess*guess*x);  // now have 32 sig bits
		y=(float)(x*guess);
		return y;
	}
	return x;
}

double atan(double x);
double copysign(double x, double y);
double cos(double x);
double floor(double x);
double frexp(double x, int *exp);
double ldexp(double x, int exp);
double modf(double x, double *intpart);
double sin(double x);
double tan(double x);
double acos(double x);
double asin(double x);
double atan2(double y, double x);
double fmod(double x, double y);
double log(double x);
double pow(double x, double y);
float tanf(float x);
float sinf(float x);
float cosf(float x);
float atan2f(float y, float x);
float acosf(float x);

extern inline double fabs(double x)
{
   return __fabs(x);
}

_MATH_INLINE float fabsf(float x) { return (float)fabs((double)x); }
_MATH_INLINE float sinf(float x) { return (float)sin((double)x); }
_MATH_INLINE float cosf(float x) { return (float)cos((double)x); }
_MATH_INLINE float atan2f(float y, float x) { return (float)atan2((double)y, (double)x); }
_MATH_INLINE float atanf(float x) { return (float)atan((double)x); }
_MATH_INLINE float asinf(float x) { return (float)asin((double)x); }

_MATH_INLINE float fmodf(float x, float m) { return (float)fmod((double)x, (double)m); }

_MATH_INLINE float floorf(float x) { return floor(x); }

_MATH_INLINE float powf(float __x, float __y) { return pow(__x, __y); }

#endif
