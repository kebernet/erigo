//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/graph/GraphConstants.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleCommonGraphGraphConstants")
#ifdef RESTRICT_ComGoogleCommonGraphGraphConstants
#define INCLUDE_ALL_ComGoogleCommonGraphGraphConstants 0
#else
#define INCLUDE_ALL_ComGoogleCommonGraphGraphConstants 1
#endif
#undef RESTRICT_ComGoogleCommonGraphGraphConstants

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComGoogleCommonGraphGraphConstants_) && (INCLUDE_ALL_ComGoogleCommonGraphGraphConstants || defined(INCLUDE_ComGoogleCommonGraphGraphConstants))
#define ComGoogleCommonGraphGraphConstants_

@interface ComGoogleCommonGraphGraphConstants : NSObject

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonGraphGraphConstants)

inline jint ComGoogleCommonGraphGraphConstants_get_EXPECTED_DEGREE();
#define ComGoogleCommonGraphGraphConstants_EXPECTED_DEGREE 2
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonGraphGraphConstants, EXPECTED_DEGREE, jint)

inline jint ComGoogleCommonGraphGraphConstants_get_DEFAULT_NODE_COUNT();
#define ComGoogleCommonGraphGraphConstants_DEFAULT_NODE_COUNT 10
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonGraphGraphConstants, DEFAULT_NODE_COUNT, jint)

inline jint ComGoogleCommonGraphGraphConstants_get_DEFAULT_EDGE_COUNT();
#define ComGoogleCommonGraphGraphConstants_DEFAULT_EDGE_COUNT 20
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonGraphGraphConstants, DEFAULT_EDGE_COUNT, jint)

inline jfloat ComGoogleCommonGraphGraphConstants_get_INNER_LOAD_FACTOR();
#define ComGoogleCommonGraphGraphConstants_INNER_LOAD_FACTOR 1.0f
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonGraphGraphConstants, INNER_LOAD_FACTOR, jfloat)

inline jint ComGoogleCommonGraphGraphConstants_get_INNER_CAPACITY();
#define ComGoogleCommonGraphGraphConstants_INNER_CAPACITY 2
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonGraphGraphConstants, INNER_CAPACITY, jint)

inline NSString *ComGoogleCommonGraphGraphConstants_get_NODE_NOT_IN_GRAPH();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleCommonGraphGraphConstants_NODE_NOT_IN_GRAPH;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonGraphGraphConstants, NODE_NOT_IN_GRAPH, NSString *)

inline NSString *ComGoogleCommonGraphGraphConstants_get_EDGE_NOT_IN_GRAPH();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleCommonGraphGraphConstants_EDGE_NOT_IN_GRAPH;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonGraphGraphConstants, EDGE_NOT_IN_GRAPH, NSString *)

inline NSString *ComGoogleCommonGraphGraphConstants_get_EDGE_CONNECTING_NOT_IN_GRAPH();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleCommonGraphGraphConstants_EDGE_CONNECTING_NOT_IN_GRAPH;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonGraphGraphConstants, EDGE_CONNECTING_NOT_IN_GRAPH, NSString *)

inline NSString *ComGoogleCommonGraphGraphConstants_get_REUSING_EDGE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleCommonGraphGraphConstants_REUSING_EDGE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonGraphGraphConstants, REUSING_EDGE, NSString *)

inline NSString *ComGoogleCommonGraphGraphConstants_get_MULTIPLE_EDGES_CONNECTING();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleCommonGraphGraphConstants_MULTIPLE_EDGES_CONNECTING;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonGraphGraphConstants, MULTIPLE_EDGES_CONNECTING, NSString *)

inline NSString *ComGoogleCommonGraphGraphConstants_get_PARALLEL_EDGES_NOT_ALLOWED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleCommonGraphGraphConstants_PARALLEL_EDGES_NOT_ALLOWED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonGraphGraphConstants, PARALLEL_EDGES_NOT_ALLOWED, NSString *)

inline NSString *ComGoogleCommonGraphGraphConstants_get_SELF_LOOPS_NOT_ALLOWED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleCommonGraphGraphConstants_SELF_LOOPS_NOT_ALLOWED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonGraphGraphConstants, SELF_LOOPS_NOT_ALLOWED, NSString *)

inline NSString *ComGoogleCommonGraphGraphConstants_get_NOT_AVAILABLE_ON_UNDIRECTED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleCommonGraphGraphConstants_NOT_AVAILABLE_ON_UNDIRECTED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonGraphGraphConstants, NOT_AVAILABLE_ON_UNDIRECTED, NSString *)

inline NSString *ComGoogleCommonGraphGraphConstants_get_EDGE_ALREADY_EXISTS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleCommonGraphGraphConstants_EDGE_ALREADY_EXISTS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonGraphGraphConstants, EDGE_ALREADY_EXISTS, NSString *)

inline NSString *ComGoogleCommonGraphGraphConstants_get_GRAPH_STRING_FORMAT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ComGoogleCommonGraphGraphConstants_GRAPH_STRING_FORMAT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonGraphGraphConstants, GRAPH_STRING_FORMAT, NSString *)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonGraphGraphConstants)

#endif

#if !defined (ComGoogleCommonGraphGraphConstants_Presence_) && (INCLUDE_ALL_ComGoogleCommonGraphGraphConstants || defined(INCLUDE_ComGoogleCommonGraphGraphConstants_Presence))
#define ComGoogleCommonGraphGraphConstants_Presence_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, ComGoogleCommonGraphGraphConstants_Presence_Enum) {
  ComGoogleCommonGraphGraphConstants_Presence_Enum_EDGE_EXISTS = 0,
};

@interface ComGoogleCommonGraphGraphConstants_Presence : JavaLangEnum < NSCopying >

#pragma mark Public

+ (ComGoogleCommonGraphGraphConstants_Presence *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonGraphGraphConstants_Presence)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComGoogleCommonGraphGraphConstants_Presence *ComGoogleCommonGraphGraphConstants_Presence_values_[];

inline ComGoogleCommonGraphGraphConstants_Presence *ComGoogleCommonGraphGraphConstants_Presence_get_EDGE_EXISTS();
J2OBJC_ENUM_CONSTANT(ComGoogleCommonGraphGraphConstants_Presence, EDGE_EXISTS)

FOUNDATION_EXPORT IOSObjectArray *ComGoogleCommonGraphGraphConstants_Presence_values();

FOUNDATION_EXPORT ComGoogleCommonGraphGraphConstants_Presence *ComGoogleCommonGraphGraphConstants_Presence_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComGoogleCommonGraphGraphConstants_Presence *ComGoogleCommonGraphGraphConstants_Presence_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonGraphGraphConstants_Presence)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComGoogleCommonGraphGraphConstants")