//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/graph/AbstractBaseGraph.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/collect/UnmodifiableIterator.h"
#include "com/google/common/graph/AbstractBaseGraph.h"
#include "com/google/common/graph/EndpointPair.h"
#include "com/google/common/graph/EndpointPairIterator.h"
#include "com/google/common/math/IntMath.h"
#include "com/google/common/primitives/Ints.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/AbstractSet.h"
#include "java/util/Set.h"
#include "javax/annotation/Nullable.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface ComGoogleCommonGraphAbstractBaseGraph_1 : JavaUtilAbstractSet {
 @public
  ComGoogleCommonGraphAbstractBaseGraph *this$0_;
}

- (instancetype)initWithComGoogleCommonGraphAbstractBaseGraph:(ComGoogleCommonGraphAbstractBaseGraph *)outer$;

- (ComGoogleCommonCollectUnmodifiableIterator *)iterator;

- (jint)size;

- (jboolean)containsWithId:(id)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonGraphAbstractBaseGraph_1)

__attribute__((unused)) static void ComGoogleCommonGraphAbstractBaseGraph_1_initWithComGoogleCommonGraphAbstractBaseGraph_(ComGoogleCommonGraphAbstractBaseGraph_1 *self, ComGoogleCommonGraphAbstractBaseGraph *outer$);

__attribute__((unused)) static ComGoogleCommonGraphAbstractBaseGraph_1 *new_ComGoogleCommonGraphAbstractBaseGraph_1_initWithComGoogleCommonGraphAbstractBaseGraph_(ComGoogleCommonGraphAbstractBaseGraph *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonGraphAbstractBaseGraph_1 *create_ComGoogleCommonGraphAbstractBaseGraph_1_initWithComGoogleCommonGraphAbstractBaseGraph_(ComGoogleCommonGraphAbstractBaseGraph *outer$);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphAbstractBaseGraph_1__Annotations$0();

@implementation ComGoogleCommonGraphAbstractBaseGraph

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonGraphAbstractBaseGraph_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)edgeCount {
  jlong degreeSum = 0LL;
  for (id __strong node in nil_chk([self nodes])) {
    degreeSum += [self degreeWithId:node];
  }
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_((degreeSum & 1) == 0);
  return JreURShift64(degreeSum, 1);
}

- (id<JavaUtilSet>)edges {
  return new_ComGoogleCommonGraphAbstractBaseGraph_1_initWithComGoogleCommonGraphAbstractBaseGraph_(self);
}

- (jint)degreeWithId:(id)node {
  if ([self isDirected]) {
    return ComGoogleCommonMathIntMath_saturatedAddWithInt_withInt_([((id<JavaUtilSet>) nil_chk([self predecessorsWithId:node])) size], [((id<JavaUtilSet>) nil_chk([self successorsWithId:node])) size]);
  }
  else {
    id<JavaUtilSet> neighbors = [self adjacentNodesWithId:node];
    jint selfLoopCount = ([self allowsSelfLoops] && [((id<JavaUtilSet>) nil_chk(neighbors)) containsWithId:node]) ? 1 : 0;
    return ComGoogleCommonMathIntMath_saturatedAddWithInt_withInt_([((id<JavaUtilSet>) nil_chk(neighbors)) size], selfLoopCount);
  }
}

- (jint)inDegreeWithId:(id)node {
  return [self isDirected] ? [((id<JavaUtilSet>) nil_chk([self predecessorsWithId:node])) size] : [self degreeWithId:node];
}

- (jint)outDegreeWithId:(id)node {
  return [self isDirected] ? [((id<JavaUtilSet>) nil_chk([self successorsWithId:node])) size] : [self degreeWithId:node];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, 3, -1, -1 },
    { NULL, "I", 0x1, 4, 2, -1, 3, -1, -1 },
    { NULL, "I", 0x1, 5, 2, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(edgeCount);
  methods[2].selector = @selector(edges);
  methods[3].selector = @selector(degreeWithId:);
  methods[4].selector = @selector(inDegreeWithId:);
  methods[5].selector = @selector(outDegreeWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Ljava/util/Set<Lcom/google/common/graph/EndpointPair<TN;>;>;", "degree", "LNSObject;", "(TN;)I", "inDegree", "outDegree", "<N:Ljava/lang/Object;>Ljava/lang/Object;Lcom/google/common/graph/BaseGraph<TN;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonGraphAbstractBaseGraph = { "AbstractBaseGraph", "com.google.common.graph", ptrTable, methods, NULL, 7, 0x400, 6, 0, -1, -1, -1, 6, -1 };
  return &_ComGoogleCommonGraphAbstractBaseGraph;
}

@end

void ComGoogleCommonGraphAbstractBaseGraph_init(ComGoogleCommonGraphAbstractBaseGraph *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonGraphAbstractBaseGraph)

@implementation ComGoogleCommonGraphAbstractBaseGraph_1

- (instancetype)initWithComGoogleCommonGraphAbstractBaseGraph:(ComGoogleCommonGraphAbstractBaseGraph *)outer$ {
  ComGoogleCommonGraphAbstractBaseGraph_1_initWithComGoogleCommonGraphAbstractBaseGraph_(self, outer$);
  return self;
}

- (ComGoogleCommonCollectUnmodifiableIterator *)iterator {
  return ComGoogleCommonGraphEndpointPairIterator_ofWithComGoogleCommonGraphBaseGraph_(this$0_);
}

- (jint)size {
  return ComGoogleCommonPrimitivesInts_saturatedCastWithLong_([this$0_ edgeCount]);
}

- (jboolean)containsWithId:(id)obj {
  if (!([obj isKindOfClass:[ComGoogleCommonGraphEndpointPair class]])) {
    return false;
  }
  ComGoogleCommonGraphEndpointPair *endpointPair = (ComGoogleCommonGraphEndpointPair *) cast_chk(obj, [ComGoogleCommonGraphEndpointPair class]);
  return [this$0_ isDirected] == [((ComGoogleCommonGraphEndpointPair *) nil_chk(endpointPair)) isOrdered] && [((id<JavaUtilSet>) nil_chk([this$0_ nodes])) containsWithId:[endpointPair nodeU]] && [((id<JavaUtilSet>) nil_chk([this$0_ successorsWithId:[endpointPair nodeU]])) containsWithId:[endpointPair nodeV]];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCollectUnmodifiableIterator;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, 3 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonGraphAbstractBaseGraph:);
  methods[1].selector = @selector(iterator);
  methods[2].selector = @selector(size);
  methods[3].selector = @selector(containsWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LComGoogleCommonGraphAbstractBaseGraph;", .constantValue.asLong = 0, 0x1012, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "()Lcom/google/common/collect/UnmodifiableIterator<Lcom/google/common/graph/EndpointPair<TN;>;>;", "contains", "LNSObject;", (void *)&ComGoogleCommonGraphAbstractBaseGraph_1__Annotations$0, "Lcom/google/common/graph/AbstractBaseGraph<TN;>;", "LComGoogleCommonGraphAbstractBaseGraph;", "edges", "Ljava/util/AbstractSet<Lcom/google/common/graph/EndpointPair<TN;>;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonGraphAbstractBaseGraph_1 = { "", "com.google.common.graph", ptrTable, methods, fields, 7, 0x8018, 4, 1, 5, -1, 6, 7, -1 };
  return &_ComGoogleCommonGraphAbstractBaseGraph_1;
}

@end

void ComGoogleCommonGraphAbstractBaseGraph_1_initWithComGoogleCommonGraphAbstractBaseGraph_(ComGoogleCommonGraphAbstractBaseGraph_1 *self, ComGoogleCommonGraphAbstractBaseGraph *outer$) {
  self->this$0_ = outer$;
  JavaUtilAbstractSet_init(self);
}

ComGoogleCommonGraphAbstractBaseGraph_1 *new_ComGoogleCommonGraphAbstractBaseGraph_1_initWithComGoogleCommonGraphAbstractBaseGraph_(ComGoogleCommonGraphAbstractBaseGraph *outer$) {
  J2OBJC_NEW_IMPL(ComGoogleCommonGraphAbstractBaseGraph_1, initWithComGoogleCommonGraphAbstractBaseGraph_, outer$)
}

ComGoogleCommonGraphAbstractBaseGraph_1 *create_ComGoogleCommonGraphAbstractBaseGraph_1_initWithComGoogleCommonGraphAbstractBaseGraph_(ComGoogleCommonGraphAbstractBaseGraph *outer$) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonGraphAbstractBaseGraph_1, initWithComGoogleCommonGraphAbstractBaseGraph_, outer$)
}

IOSObjectArray *ComGoogleCommonGraphAbstractBaseGraph_1__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}