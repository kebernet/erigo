//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/graph/GraphConnections.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/graph/GraphConnections.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonGraphGraphConnections : NSObject

@end

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonGraphGraphConnections__Annotations$0();

@implementation ComGoogleCommonGraphGraphConnections

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "LNSObject;", 0x401, 1, 2, -1, 3, 4, -1 },
    { NULL, "V", 0x401, 5, 2, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x401, 6, 2, -1, 3, -1, -1 },
    { NULL, "V", 0x401, 7, 8, -1, 9, -1, -1 },
    { NULL, "LNSObject;", 0x401, 10, 8, -1, 11, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(adjacentNodes);
  methods[1].selector = @selector(predecessors);
  methods[2].selector = @selector(successors);
  methods[3].selector = @selector(valueWithId:);
  methods[4].selector = @selector(removePredecessorWithId:);
  methods[5].selector = @selector(removeSuccessorWithId:);
  methods[6].selector = @selector(addPredecessorWithId:withId:);
  methods[7].selector = @selector(addSuccessorWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Ljava/util/Set<TN;>;", "value", "LNSObject;", "(Ljava/lang/Object;)TV;", (void *)&ComGoogleCommonGraphGraphConnections__Annotations$0, "removePredecessor", "removeSuccessor", "addPredecessor", "LNSObject;LNSObject;", "(TN;TV;)V", "addSuccessor", "(TN;TV;)TV;", "<N:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _ComGoogleCommonGraphGraphConnections = { "GraphConnections", "com.google.common.graph", ptrTable, methods, NULL, 7, 0x608, 8, 0, -1, -1, -1, 12, -1 };
  return &_ComGoogleCommonGraphGraphConnections;
}

@end

IOSObjectArray *ComGoogleCommonGraphGraphConnections__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleCommonGraphGraphConnections)
