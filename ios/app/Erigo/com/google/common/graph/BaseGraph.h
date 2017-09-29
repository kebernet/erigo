//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/graph/BaseGraph.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonGraphBaseGraph")
#ifdef RESTRICT_ComGoogleCommonGraphBaseGraph
#define INCLUDE_ALL_ComGoogleCommonGraphBaseGraph 0
#else
#define INCLUDE_ALL_ComGoogleCommonGraphBaseGraph 1
#endif
#undef RESTRICT_ComGoogleCommonGraphBaseGraph

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonGraphBaseGraph_) && (INCLUDE_ALL_ComGoogleCommonGraphBaseGraph || defined(INCLUDE_ComGoogleCommonGraphBaseGraph))
#define ComGoogleCommonGraphBaseGraph_

@class ComGoogleCommonGraphElementOrder;
@protocol JavaUtilSet;

@protocol ComGoogleCommonGraphBaseGraph < JavaObject >

- (id<JavaUtilSet>)nodes;

- (id<JavaUtilSet>)edges;

- (jboolean)isDirected;

- (jboolean)allowsSelfLoops;

- (ComGoogleCommonGraphElementOrder *)nodeOrder;

- (id<JavaUtilSet>)adjacentNodesWithId:(id)node;

- (id<JavaUtilSet>)predecessorsWithId:(id)node;

- (id<JavaUtilSet>)successorsWithId:(id)node;

- (jint)degreeWithId:(id)node;

- (jint)inDegreeWithId:(id)node;

- (jint)outDegreeWithId:(id)node;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonGraphBaseGraph)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonGraphBaseGraph)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonGraphBaseGraph")