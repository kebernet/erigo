//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/io/LineBuffer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonIoLineBuffer")
#ifdef RESTRICT_ComGoogleCommonIoLineBuffer
#define INCLUDE_ALL_ComGoogleCommonIoLineBuffer 0
#else
#define INCLUDE_ALL_ComGoogleCommonIoLineBuffer 1
#endif
#undef RESTRICT_ComGoogleCommonIoLineBuffer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonIoLineBuffer_) && (INCLUDE_ALL_ComGoogleCommonIoLineBuffer || defined(INCLUDE_ComGoogleCommonIoLineBuffer))
#define ComGoogleCommonIoLineBuffer_

@class IOSCharArray;

@interface ComGoogleCommonIoLineBuffer : NSObject

#pragma mark Protected

- (void)addWithCharArray:(IOSCharArray *)cbuf
                 withInt:(jint)off
                 withInt:(jint)len;

- (void)finish;

- (void)handleLineWithNSString:(NSString *)line
                  withNSString:(NSString *)end;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonIoLineBuffer)

FOUNDATION_EXPORT void ComGoogleCommonIoLineBuffer_init(ComGoogleCommonIoLineBuffer *self);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonIoLineBuffer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonIoLineBuffer")
