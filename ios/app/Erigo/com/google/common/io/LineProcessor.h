//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/io/LineProcessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonIoLineProcessor")
#ifdef RESTRICT_ComGoogleCommonIoLineProcessor
#define INCLUDE_ALL_ComGoogleCommonIoLineProcessor 0
#else
#define INCLUDE_ALL_ComGoogleCommonIoLineProcessor 1
#endif
#undef RESTRICT_ComGoogleCommonIoLineProcessor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonIoLineProcessor_) && (INCLUDE_ALL_ComGoogleCommonIoLineProcessor || defined(INCLUDE_ComGoogleCommonIoLineProcessor))
#define ComGoogleCommonIoLineProcessor_

@protocol ComGoogleCommonIoLineProcessor < JavaObject >

- (jboolean)processLineWithNSString:(NSString *)line;

- (id)getResult;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonIoLineProcessor)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonIoLineProcessor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonIoLineProcessor")
