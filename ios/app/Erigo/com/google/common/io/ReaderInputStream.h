//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/io/ReaderInputStream.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonIoReaderInputStream")
#ifdef RESTRICT_ComGoogleCommonIoReaderInputStream
#define INCLUDE_ALL_ComGoogleCommonIoReaderInputStream 0
#else
#define INCLUDE_ALL_ComGoogleCommonIoReaderInputStream 1
#endif
#undef RESTRICT_ComGoogleCommonIoReaderInputStream

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonIoReaderInputStream_) && (INCLUDE_ALL_ComGoogleCommonIoReaderInputStream || defined(INCLUDE_ComGoogleCommonIoReaderInputStream))
#define ComGoogleCommonIoReaderInputStream_

#define RESTRICT_JavaIoInputStream 1
#define INCLUDE_JavaIoInputStream 1
#include "java/io/InputStream.h"

@class IOSByteArray;
@class JavaIoReader;
@class JavaNioCharsetCharset;
@class JavaNioCharsetCharsetEncoder;

@interface ComGoogleCommonIoReaderInputStream : JavaIoInputStream

#pragma mark Public

- (void)close;

- (jint)read;

- (jint)readWithByteArray:(IOSByteArray *)b
                  withInt:(jint)off
                  withInt:(jint)len;

#pragma mark Package-Private

- (instancetype)initWithJavaIoReader:(JavaIoReader *)reader
           withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset
                             withInt:(jint)bufferSize;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)reader
    withJavaNioCharsetCharsetEncoder:(JavaNioCharsetCharsetEncoder *)encoder
                             withInt:(jint)bufferSize;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonIoReaderInputStream)

FOUNDATION_EXPORT void ComGoogleCommonIoReaderInputStream_initWithJavaIoReader_withJavaNioCharsetCharset_withInt_(ComGoogleCommonIoReaderInputStream *self, JavaIoReader *reader, JavaNioCharsetCharset *charset, jint bufferSize);

FOUNDATION_EXPORT ComGoogleCommonIoReaderInputStream *new_ComGoogleCommonIoReaderInputStream_initWithJavaIoReader_withJavaNioCharsetCharset_withInt_(JavaIoReader *reader, JavaNioCharsetCharset *charset, jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonIoReaderInputStream *create_ComGoogleCommonIoReaderInputStream_initWithJavaIoReader_withJavaNioCharsetCharset_withInt_(JavaIoReader *reader, JavaNioCharsetCharset *charset, jint bufferSize);

FOUNDATION_EXPORT void ComGoogleCommonIoReaderInputStream_initWithJavaIoReader_withJavaNioCharsetCharsetEncoder_withInt_(ComGoogleCommonIoReaderInputStream *self, JavaIoReader *reader, JavaNioCharsetCharsetEncoder *encoder, jint bufferSize);

FOUNDATION_EXPORT ComGoogleCommonIoReaderInputStream *new_ComGoogleCommonIoReaderInputStream_initWithJavaIoReader_withJavaNioCharsetCharsetEncoder_withInt_(JavaIoReader *reader, JavaNioCharsetCharsetEncoder *encoder, jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonIoReaderInputStream *create_ComGoogleCommonIoReaderInputStream_initWithJavaIoReader_withJavaNioCharsetCharsetEncoder_withInt_(JavaIoReader *reader, JavaNioCharsetCharsetEncoder *encoder, jint bufferSize);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonIoReaderInputStream)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonIoReaderInputStream")