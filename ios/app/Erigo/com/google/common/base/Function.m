//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/base/Function.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Function.h"
#include "java/lang/FunctionalInterface.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonBaseFunction : NSObject

@end

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseFunction__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseFunction__Annotations$1();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseFunction__Annotations$2();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseFunction__Annotations$3();

@implementation ComGoogleCommonBaseFunction

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, 0, 1, -1, 2, 3, 4 },
    { NULL, "Z", 0x401, 5, 1, -1, -1, -1, 6 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(applyWithId:);
  methods[1].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "apply", "LNSObject;", "(TF;)TT;", (void *)&ComGoogleCommonBaseFunction__Annotations$0, (void *)&ComGoogleCommonBaseFunction__Annotations$1, "equals", (void *)&ComGoogleCommonBaseFunction__Annotations$2, "<F:Ljava/lang/Object;T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/function/Function<TF;TT;>;", (void *)&ComGoogleCommonBaseFunction__Annotations$3 };
  static const J2ObjcClassInfo _ComGoogleCommonBaseFunction = { "Function", "com.google.common.base", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, 7, 8 };
  return &_ComGoogleCommonBaseFunction;
}

@end

IOSObjectArray *ComGoogleCommonBaseFunction__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonBaseFunction__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonBaseFunction__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonBaseFunction__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangFunctionalInterface() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleCommonBaseFunction)
