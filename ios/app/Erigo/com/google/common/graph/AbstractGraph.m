//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/graph/AbstractGraph.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/graph/AbstractBaseGraph.h"
#include "com/google/common/graph/AbstractGraph.h"
#include "com/google/common/graph/Graph.h"
#include "com/google/common/graph/GraphConstants.h"
#include "java/lang/Boolean.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Set.h"
#include "javax/annotation/Nullable.h"

#pragma clang diagnostic ignored "-Wprotocol"

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphAbstractGraph__Annotations$0();

@implementation ComGoogleCommonGraphAbstractGraph

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonGraphAbstractGraph_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)isEqual:(id)obj {
  if (obj == self) {
    return true;
  }
  if (!([ComGoogleCommonGraphGraph_class_() isInstance:obj])) {
    return false;
  }
  id<ComGoogleCommonGraphGraph> other = (id<ComGoogleCommonGraphGraph>) cast_check(obj, ComGoogleCommonGraphGraph_class_());
  return [self isDirected] == [((id<ComGoogleCommonGraphGraph>) nil_chk(other)) isDirected] && [((id<JavaUtilSet>) nil_chk([self nodes])) isEqual:[other nodes]] && [((id<JavaUtilSet>) nil_chk([self edges])) isEqual:[other edges]];
}

- (NSUInteger)hash {
  return ((jint) [((id<JavaUtilSet>) nil_chk([self edges])) hash]);
}

- (NSString *)description {
  NSString *propertiesString = NSString_java_formatWithNSString_withNSObjectArray_(@"isDirected: %s, allowsSelfLoops: %s", [IOSObjectArray newArrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_([self isDirected]), JavaLangBoolean_valueOfWithBoolean_([self allowsSelfLoops]) } count:2 type:NSObject_class_()]);
  return NSString_java_formatWithNSString_withNSObjectArray_(ComGoogleCommonGraphGraphConstants_GRAPH_STRING_FORMAT, [IOSObjectArray newArrayWithObjects:(id[]){ propertiesString, [self nodes], [self edges] } count:3 type:NSObject_class_()]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, 0, 1, -1, -1, -1, 2 },
    { NULL, "I", 0x11, 3, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(isEqual:);
  methods[2].selector = @selector(hash);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "equals", "LNSObject;", (void *)&ComGoogleCommonGraphAbstractGraph__Annotations$0, "hashCode", "toString", "<N:Ljava/lang/Object;>Lcom/google/common/graph/AbstractBaseGraph<TN;>;Lcom/google/common/graph/Graph<TN;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonGraphAbstractGraph = { "AbstractGraph", "com.google.common.graph", ptrTable, methods, NULL, 7, 0x401, 4, 0, -1, -1, -1, 5, -1 };
  return &_ComGoogleCommonGraphAbstractGraph;
}

@end

void ComGoogleCommonGraphAbstractGraph_init(ComGoogleCommonGraphAbstractGraph *self) {
  ComGoogleCommonGraphAbstractBaseGraph_init(self);
}

IOSObjectArray *ComGoogleCommonGraphAbstractGraph__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonGraphAbstractGraph)