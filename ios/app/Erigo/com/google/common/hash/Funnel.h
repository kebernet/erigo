//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/hash/Funnel.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonHashFunnel")
#ifdef RESTRICT_ComGoogleCommonHashFunnel
#define INCLUDE_ALL_ComGoogleCommonHashFunnel 0
#else
#define INCLUDE_ALL_ComGoogleCommonHashFunnel 1
#endif
#undef RESTRICT_ComGoogleCommonHashFunnel

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonHashFunnel_) && (INCLUDE_ALL_ComGoogleCommonHashFunnel || defined(INCLUDE_ComGoogleCommonHashFunnel))
#define ComGoogleCommonHashFunnel_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@protocol ComGoogleCommonHashPrimitiveSink;

@protocol ComGoogleCommonHashFunnel < JavaIoSerializable, JavaObject >

- (void)funnelWithId:(id)from
withComGoogleCommonHashPrimitiveSink:(id<ComGoogleCommonHashPrimitiveSink>)into;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonHashFunnel)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonHashFunnel)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonHashFunnel")
