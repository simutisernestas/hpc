/* jacobi.h - Poisson problem 
 *
 * $Id: jacobi.h,v 1.1 2006/09/28 10:12:58 bd Exp bd $
 */

#ifndef _JACOBI_H
#define _JACOBI_H

//int jacobi(double ***, double ***, double ***, int, int, double *);
double ***jacobi(
    int N,
    int iter_max,
    double tolerance,
    double ***u
);

#endif