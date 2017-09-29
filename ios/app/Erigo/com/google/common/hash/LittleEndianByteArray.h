//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/hash/LittleEndianByteArray.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonHashLittleEndianByteArray")
#ifdef RESTRICT_ComGoogleCommonHashLittleEndianByteArray
#define INCLUDE_ALL_ComGoogleCommonHashLittleEndianByteArray 0
#else
#define INCLUDE_ALL_ComGoogleCommonHashLittleEndianByteArray 1
#endif
#undef RESTRICT_ComGoogleCommonHashLittleEndianByteArray

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonHashLittleEndianByteArray_) && (INCLUDE_ALL_ComGoogleCommonHashLittleEndianByteArray || defined(INCLUDE_ComGoogleCommonHashLittleEndianByteArray))
#define ComGoogleCommonHashLittleEndianByteArray_

@class IOSByteArray;

@interface ComGoogleCommonHashLittleEndianByteArray : NSObject

#pragma mark Package-Private

+ (jint)load32WithByteArray:(IOSByteArray *)source
                    withInt:(jint)offset;

+ (jlong)load64WithByteArray:(IOSByteArray *)input
                     withInt:(jint)offset;

+ (jlong)load64SafelyWithByteArray:(IOSByteArray *)input
                           withInt:(jint)offset
                           withInt:(jint)length;

+ (void)store64WithByteArray:(IOSByteArray *)sink
                     withInt:(jint)offset
                    withLong:(jlong)value;

+ (jboolean)usingUnsafe;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonHashLittleEndianByteArray)

FOUNDATION_EXPORT jlong ComGoogleCommonHashLittleEndianByteArray_load64WithByteArray_withInt_(IOSByteArray *input, jint offset);

FOUNDATION_EXPORT jlong ComGoogleCommonHashLittleEndianByteArray_load64SafelyWithByteArray_withInt_withInt_(IOSByteArray *input, jint offset, jint length);

FOUNDATION_EXPORT void ComGoogleCommonHashLittleEndianByteArray_store64WithByteArray_withInt_withLong_(IOSByteArray *sink, jint offset, jlong value);

FOUNDATION_EXPORT jint ComGoogleCommonHashLittleEndianByteArray_load32WithByteArray_withInt_(IOSByteArray *source, jint offset);

FOUNDATION_EXPORT jboolean ComGoogleCommonHashLittleEndianByteArray_usingUnsafe();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonHashLittleEndianByteArray)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonHashLittleEndianByteArray")