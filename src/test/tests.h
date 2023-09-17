/*
 * tests.h
 *
 * Ian Soboroff, NIST
 * June, 1994
 *
 * This file consists of stuff that all the test programs require,
 * i.e., common #include's and extern declarations.
 *
 * This header file, and all accompanying tests, were adapted, in full, part,
 * or spirit ;-) from scltest.cc, a program distributed with the Data Probe
 * (circa version 2.0.x) to test the STEP Class Libraries.
 */

/* C++ Stuff */
#include <iostream>

/* General SCL stuff */
#include "clstepcore/ExpDict.h"
#include "cleditor/STEPfile.h"
#include "clstepcore/STEPattribute.h"
#include "clstepcore/sdai.h"

/* Stuff more or less specifically for the Example schema */
/* The only program that needs this is tstatic.  Since the other programs */
/* don't use any instances directly, only through the registry, they don't */
/* need to include this header file.  */
#ifndef DONT_NEED_HEADER
#include <SdaiEXAMPLE_SCHEMA.h>
#endif

#include <needFunc.h>

extern void SchemaInit( Registry & );
