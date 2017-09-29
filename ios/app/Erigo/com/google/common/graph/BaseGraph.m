//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/graph/BaseGraph.java
//

#include "J2ObjC_source.h"
#include "com/google/common/graph/BaseGraph.h"

@interface ComGoogleCommonGraphBaseGraph : NSObject

@end

@implementation ComGoogleCommonGraphBaseGraph

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonGraphElementOrder;", 0x401, -1, -1, -1, 2, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, 3, 4, -1, 5, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, 6, 4, -1, 5, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, 7, 4, -1, 5, -1, -1 },
    { NULL, "I", 0x401, 8, 4, -1, 9, -1, -1 },
    { NULL, "I", 0x401, 10, 4, -1, 9, -1, -1 },
    { NULL, "I", 0x401, 11, 4, -1, 9, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(nodes);
  methods[1].selector = @selector(edges);
  methods[2].selector = @selector(isDirected);
  methods[3].selector = @selector(allowsSelfLoops);
  methods[4].selector = @selector(nodeOrder);
  methods[5].selector = @selector(adjacentNodesWithId:);
  methods[6].selector = @selector(predecessorsWithId:);
  methods[7].selector = @selector(successorsWithId:);
  methods[8].selector = @selector(degreeWithId:);
  methods[9].selector = @selector(inDegreeWithId:);
  methods[10].selector = @selector(outDegreeWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Ljava/util/Set<TN;>;", "()Ljava/util/Set<Lcom/google/common/graph/EndpointPair<TN;>;>;", "()Lcom/google/common/graph/ElementOrder<TN;>;", "adjacentNodes", "LNSObject;", "(TN;)Ljava/util/Set<TN;>;", "predecessors", "successors", "degree", "(TN;)I", "inDegree", "outDegree", "<N:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _ComGoogleCommonGraphBaseGraph = { "BaseGraph", "com.google.common.graph", ptrTable, methods, NULL, 7, 0x608, 11, 0, -1, -1, -1, 12, -1 };
  return &_ComGoogleCommonGraphBaseGraph;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleCommonGraphBaseGraph)