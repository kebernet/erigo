//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/io/CharSink.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonIoCharSink")
#ifdef RESTRICT_ComGoogleCommonIoCharSink
#define INCLUDE_ALL_ComGoogleCommonIoCharSink 0
#else
#define INCLUDE_ALL_ComGoogleCommonIoCharSink 1
#endif
#undef RESTRICT_ComGoogleCommonIoCharSink

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonIoCharSink_) && (INCLUDE_ALL_ComGoogleCommonIoCharSink || defined(INCLUDE_ComGoogleCommonIoCharSink))
#define ComGoogleCommonIoCharSink_

@class JavaIoWriter;
@protocol JavaLangCharSequence;
@protocol JavaLangIterable;
@protocol JavaLangReadable;
@protocol JavaUtilStreamStream;

@interface ComGoogleCommonIoCharSink : NSObject

#pragma mark Public

- (JavaIoWriter *)openBufferedStream;

- (JavaIoWriter *)openStream;

- (void)writeWithJavaLangCharSequence:(id<JavaLangCharSequence>)charSequence;

- (jlong)writeFromWithJavaLangReadable:(id<JavaLangReadable>)readable;

- (void)writeLinesWithJavaLangIterable:(id<JavaLangIterable>)lines;

- (void)writeLinesWithJavaLangIterable:(id<JavaLangIterable>)lines
                          withNSString:(NSString *)lineSeparator;

- (void)writeLinesWithJavaUtilStreamStream:(id<JavaUtilStreamStream>)lines;

- (void)writeLinesWithJavaUtilStreamStream:(id<JavaUtilStreamStream>)lines
                              withNSString:(NSString *)lineSeparator;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonIoCharSink)

FOUNDATION_EXPORT void ComGoogleCommonIoCharSink_init(ComGoogleCommonIoCharSink *self);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonIoCharSink)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonIoCharSink")
