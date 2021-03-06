//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/io/ByteSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonIoByteSource")
#ifdef RESTRICT_ComGoogleCommonIoByteSource
#define INCLUDE_ALL_ComGoogleCommonIoByteSource 0
#else
#define INCLUDE_ALL_ComGoogleCommonIoByteSource 1
#endif
#undef RESTRICT_ComGoogleCommonIoByteSource

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonIoByteSource_) && (INCLUDE_ALL_ComGoogleCommonIoByteSource || defined(INCLUDE_ComGoogleCommonIoByteSource))
#define ComGoogleCommonIoByteSource_

@class ComGoogleCommonBaseOptional;
@class ComGoogleCommonHashHashCode;
@class ComGoogleCommonIoByteSink;
@class ComGoogleCommonIoCharSource;
@class IOSByteArray;
@class IOSObjectArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaNioCharsetCharset;
@protocol ComGoogleCommonHashHashFunction;
@protocol ComGoogleCommonIoByteProcessor;
@protocol JavaLangIterable;
@protocol JavaUtilIterator;

@interface ComGoogleCommonIoByteSource : NSObject

#pragma mark Public

- (ComGoogleCommonIoCharSource *)asCharSourceWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

+ (ComGoogleCommonIoByteSource *)concatWithComGoogleCommonIoByteSourceArray:(IOSObjectArray *)sources;

+ (ComGoogleCommonIoByteSource *)concatWithJavaLangIterable:(id<JavaLangIterable>)sources;

+ (ComGoogleCommonIoByteSource *)concatWithJavaUtilIterator:(id<JavaUtilIterator>)sources;

- (jboolean)contentEqualsWithComGoogleCommonIoByteSource:(ComGoogleCommonIoByteSource *)other;

- (jlong)copyToWithComGoogleCommonIoByteSink:(ComGoogleCommonIoByteSink *)sink OBJC_METHOD_FAMILY_NONE;

- (jlong)copyToWithJavaIoOutputStream:(JavaIoOutputStream *)output OBJC_METHOD_FAMILY_NONE;

+ (ComGoogleCommonIoByteSource *)empty;

- (ComGoogleCommonHashHashCode *)hash__WithComGoogleCommonHashHashFunction:(id<ComGoogleCommonHashHashFunction>)hashFunction;

- (jboolean)isEmpty;

- (JavaIoInputStream *)openBufferedStream;

- (JavaIoInputStream *)openStream;

- (IOSByteArray *)read;

- (id)readWithComGoogleCommonIoByteProcessor:(id<ComGoogleCommonIoByteProcessor>)processor;

- (jlong)size;

- (ComGoogleCommonBaseOptional *)sizeIfKnown;

- (ComGoogleCommonIoByteSource *)sliceWithLong:(jlong)offset
                                      withLong:(jlong)length;

+ (ComGoogleCommonIoByteSource *)wrapWithByteArray:(IOSByteArray *)b;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonIoByteSource)

FOUNDATION_EXPORT void ComGoogleCommonIoByteSource_init(ComGoogleCommonIoByteSource *self);

FOUNDATION_EXPORT ComGoogleCommonIoByteSource *ComGoogleCommonIoByteSource_concatWithJavaLangIterable_(id<JavaLangIterable> sources);

FOUNDATION_EXPORT ComGoogleCommonIoByteSource *ComGoogleCommonIoByteSource_concatWithJavaUtilIterator_(id<JavaUtilIterator> sources);

FOUNDATION_EXPORT ComGoogleCommonIoByteSource *ComGoogleCommonIoByteSource_concatWithComGoogleCommonIoByteSourceArray_(IOSObjectArray *sources);

FOUNDATION_EXPORT ComGoogleCommonIoByteSource *ComGoogleCommonIoByteSource_wrapWithByteArray_(IOSByteArray *b);

FOUNDATION_EXPORT ComGoogleCommonIoByteSource *ComGoogleCommonIoByteSource_empty();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonIoByteSource)

#endif

#if !defined (ComGoogleCommonIoByteSource_AsCharSource_) && (INCLUDE_ALL_ComGoogleCommonIoByteSource || defined(INCLUDE_ComGoogleCommonIoByteSource_AsCharSource))
#define ComGoogleCommonIoByteSource_AsCharSource_

#define RESTRICT_ComGoogleCommonIoCharSource 1
#define INCLUDE_ComGoogleCommonIoCharSource 1
#include "com/google/common/io/CharSource.h"

@class ComGoogleCommonIoByteSource;
@class JavaIoReader;
@class JavaNioCharsetCharset;

@interface ComGoogleCommonIoByteSource_AsCharSource : ComGoogleCommonIoCharSource {
 @public
  JavaNioCharsetCharset *charset_;
}

#pragma mark Public

- (ComGoogleCommonIoByteSource *)asByteSourceWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

- (JavaIoReader *)openStream;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithComGoogleCommonIoByteSource:(ComGoogleCommonIoByteSource *)outer$
                          withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonIoByteSource_AsCharSource)

J2OBJC_FIELD_SETTER(ComGoogleCommonIoByteSource_AsCharSource, charset_, JavaNioCharsetCharset *)

FOUNDATION_EXPORT void ComGoogleCommonIoByteSource_AsCharSource_initWithComGoogleCommonIoByteSource_withJavaNioCharsetCharset_(ComGoogleCommonIoByteSource_AsCharSource *self, ComGoogleCommonIoByteSource *outer$, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT ComGoogleCommonIoByteSource_AsCharSource *new_ComGoogleCommonIoByteSource_AsCharSource_initWithComGoogleCommonIoByteSource_withJavaNioCharsetCharset_(ComGoogleCommonIoByteSource *outer$, JavaNioCharsetCharset *charset) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleCommonIoByteSource_AsCharSource *create_ComGoogleCommonIoByteSource_AsCharSource_initWithComGoogleCommonIoByteSource_withJavaNioCharsetCharset_(ComGoogleCommonIoByteSource *outer$, JavaNioCharsetCharset *charset);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonIoByteSource_AsCharSource)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonIoByteSource")
