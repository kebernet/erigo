//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ImmutableBiMapFauxverideShim.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/collect/ImmutableBiMapFauxverideShim.h"
#include "com/google/common/collect/ImmutableMap.h"
#include "java/lang/Deprecated.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/function/BinaryOperator.h"
#include "java/util/function/Function.h"
#include "java/util/stream/Collector.h"

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectImmutableBiMapFauxverideShim__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectImmutableBiMapFauxverideShim__Annotations$1();

@implementation ComGoogleCommonCollectImmutableBiMapFauxverideShim

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCollectImmutableBiMapFauxverideShim_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<JavaUtilStreamCollector>)toImmutableMapWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)keyFunction
                                             withJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)valueFunction {
  return ComGoogleCommonCollectImmutableBiMapFauxverideShim_toImmutableMapWithJavaUtilFunctionFunction_withJavaUtilFunctionFunction_(keyFunction, valueFunction);
}

+ (id<JavaUtilStreamCollector>)toImmutableMapWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)keyFunction
                                             withJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)valueFunction
                                       withJavaUtilFunctionBinaryOperator:(id<JavaUtilFunctionBinaryOperator>)mergeFunction {
  return ComGoogleCommonCollectImmutableBiMapFauxverideShim_toImmutableMapWithJavaUtilFunctionFunction_withJavaUtilFunctionFunction_withJavaUtilFunctionBinaryOperator_(keyFunction, valueFunction, mergeFunction);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilStreamCollector;", 0x9, 0, 1, -1, 2, 3, -1 },
    { NULL, "LJavaUtilStreamCollector;", 0x9, 0, 4, -1, 5, 6, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(toImmutableMapWithJavaUtilFunctionFunction:withJavaUtilFunctionFunction:);
  methods[2].selector = @selector(toImmutableMapWithJavaUtilFunctionFunction:withJavaUtilFunctionFunction:withJavaUtilFunctionBinaryOperator:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "toImmutableMap", "LJavaUtilFunctionFunction;LJavaUtilFunctionFunction;", "<T:Ljava/lang/Object;K:Ljava/lang/Object;V:Ljava/lang/Object;>(Ljava/util/function/Function<-TT;+TK;>;Ljava/util/function/Function<-TT;+TV;>;)Ljava/util/stream/Collector<TT;*Lcom/google/common/collect/ImmutableMap<TK;TV;>;>;", (void *)&ComGoogleCommonCollectImmutableBiMapFauxverideShim__Annotations$0, "LJavaUtilFunctionFunction;LJavaUtilFunctionFunction;LJavaUtilFunctionBinaryOperator;", "<T:Ljava/lang/Object;K:Ljava/lang/Object;V:Ljava/lang/Object;>(Ljava/util/function/Function<-TT;+TK;>;Ljava/util/function/Function<-TT;+TV;>;Ljava/util/function/BinaryOperator<TV;>;)Ljava/util/stream/Collector<TT;*Lcom/google/common/collect/ImmutableMap<TK;TV;>;>;", (void *)&ComGoogleCommonCollectImmutableBiMapFauxverideShim__Annotations$1, "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lcom/google/common/collect/ImmutableMap<TK;TV;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectImmutableBiMapFauxverideShim = { "ImmutableBiMapFauxverideShim", "com.google.common.collect", ptrTable, methods, NULL, 7, 0x400, 3, 0, -1, -1, -1, 7, -1 };
  return &_ComGoogleCommonCollectImmutableBiMapFauxverideShim;
}

@end

void ComGoogleCommonCollectImmutableBiMapFauxverideShim_init(ComGoogleCommonCollectImmutableBiMapFauxverideShim *self) {
  ComGoogleCommonCollectImmutableMap_init(self);
}

id<JavaUtilStreamCollector> ComGoogleCommonCollectImmutableBiMapFauxverideShim_toImmutableMapWithJavaUtilFunctionFunction_withJavaUtilFunctionFunction_(id<JavaUtilFunctionFunction> keyFunction, id<JavaUtilFunctionFunction> valueFunction) {
  ComGoogleCommonCollectImmutableBiMapFauxverideShim_initialize();
  @throw new_JavaLangUnsupportedOperationException_init();
}

id<JavaUtilStreamCollector> ComGoogleCommonCollectImmutableBiMapFauxverideShim_toImmutableMapWithJavaUtilFunctionFunction_withJavaUtilFunctionFunction_withJavaUtilFunctionBinaryOperator_(id<JavaUtilFunctionFunction> keyFunction, id<JavaUtilFunctionFunction> valueFunction, id<JavaUtilFunctionBinaryOperator> mergeFunction) {
  ComGoogleCommonCollectImmutableBiMapFauxverideShim_initialize();
  @throw new_JavaLangUnsupportedOperationException_init();
}

IOSObjectArray *ComGoogleCommonCollectImmutableBiMapFauxverideShim__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonCollectImmutableBiMapFauxverideShim__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectImmutableBiMapFauxverideShim)
