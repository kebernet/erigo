//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/graph/EndpointPair.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonGraphEndpointPair")
#ifdef RESTRICT_ComGoogleCommonGraphEndpointPair
#define INCLUDE_ALL_ComGoogleCommonGraphEndpointPair 0
#else
#define INCLUDE_ALL_ComGoogleCommonGraphEndpointPair 1
#endif
#undef RESTRICT_ComGoogleCommonGraphEndpointPair

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonGraphEndpointPair_) && (INCLUDE_ALL_ComGoogleCommonGraphEndpointPair || defined(INCLUDE_ComGoogleCommonGraphEndpointPair))
#define ComGoogleCommonGraphEndpointPair_

#define RESTRICT_JavaLangIterable 1
#define INCLUDE_JavaLangIterable 1
#include "java/lang/Iterable.h"

@class ComGoogleCommonCollectUnmodifiableIterator;
@protocol ComGoogleCommonGraphGraph;
@protocol ComGoogleCommonGraphNetwork;
@protocol JavaUtilFunctionConsumer;
@protocol JavaUtilSpliterator;

@interface ComGoogleCommonGraphEndpointPair : NSObject < JavaLangIterable >

#pragma mark Public

- (id)adjacentNodeWithId:(id)node;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (jboolean)isOrdered;

- (ComGoogleCommonCollectUnmodifiableIterator *)iterator;

- (id)nodeU;

- (id)nodeV;

+ (ComGoogleCommonGraphEndpointPair *)orderedWithId:(id)source
                                             withId:(id)target;

- (id)source;

- (id)target;

+ (ComGoogleCommonGraphEndpointPair *)unorderedWithId:(id)nodeU
                                               withId:(id)nodeV;

#pragma mark Package-Private

+ (ComGoogleCommonGraphEndpointPair *)ofWithComGoogleCommonGraphGraph:(id<ComGoogleCommonGraphGraph>)graph
                                                               withId:(id)nodeU
                                                               withId:(id)nodeV;

+ (ComGoogleCommonGraphEndpointPair *)ofWithComGoogleCommonGraphNetwork:(id<ComGoogleCommonGraphNetwork>)network
                                                                 withId:(id)nodeU
                                                                 withId:(id)nodeV;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonGraphEndpointPair)

FOUNDATION_EXPORT ComGoogleCommonGraphEndpointPair *ComGoogleCommonGraphEndpointPair_orderedWithId_withId_(id source, id target);

FOUNDATION_EXPORT ComGoogleCommonGraphEndpointPair *ComGoogleCommonGraphEndpointPair_unorderedWithId_withId_(id nodeU, id nodeV);

FOUNDATION_EXPORT ComGoogleCommonGraphEndpointPair *ComGoogleCommonGraphEndpointPair_ofWithComGoogleCommonGraphGraph_withId_withId_(id<ComGoogleCommonGraphGraph> graph, id nodeU, id nodeV);

FOUNDATION_EXPORT ComGoogleCommonGraphEndpointPair *ComGoogleCommonGraphEndpointPair_ofWithComGoogleCommonGraphNetwork_withId_withId_(id<ComGoogleCommonGraphNetwork> network, id nodeU, id nodeV);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonGraphEndpointPair)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonGraphEndpointPair")
