//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/io/Closeables.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonIoCloseables")
#ifdef RESTRICT_ComGoogleCommonIoCloseables
#define INCLUDE_ALL_ComGoogleCommonIoCloseables 0
#else
#define INCLUDE_ALL_ComGoogleCommonIoCloseables 1
#endif
#undef RESTRICT_ComGoogleCommonIoCloseables

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonIoCloseables_) && (INCLUDE_ALL_ComGoogleCommonIoCloseables || defined(INCLUDE_ComGoogleCommonIoCloseables))
#define ComGoogleCommonIoCloseables_

@class JavaIoInputStream;
@class JavaIoReader;
@class JavaUtilLoggingLogger;
@protocol JavaIoCloseable;

@interface ComGoogleCommonIoCloseables : NSObject

#pragma mark Public

+ (void)closeWithJavaIoCloseable:(id<JavaIoCloseable>)closeable
                     withBoolean:(jboolean)swallowIOException;

+ (void)closeQuietlyWithJavaIoInputStream:(JavaIoInputStream *)inputStream;

+ (void)closeQuietlyWithJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonIoCloseables)

inline JavaUtilLoggingLogger *ComGoogleCommonIoCloseables_get_logger();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilLoggingLogger *ComGoogleCommonIoCloseables_logger;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonIoCloseables, logger, JavaUtilLoggingLogger *)

FOUNDATION_EXPORT void ComGoogleCommonIoCloseables_closeWithJavaIoCloseable_withBoolean_(id<JavaIoCloseable> closeable, jboolean swallowIOException);

FOUNDATION_EXPORT void ComGoogleCommonIoCloseables_closeQuietlyWithJavaIoInputStream_(JavaIoInputStream *inputStream);

FOUNDATION_EXPORT void ComGoogleCommonIoCloseables_closeQuietlyWithJavaIoReader_(JavaIoReader *reader);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonIoCloseables)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonIoCloseables")