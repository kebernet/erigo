//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ClassToInstanceMap.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/collect/ClassToInstanceMap.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonCollectClassToInstanceMap : NSObject

@end

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectClassToInstanceMap__Annotations$0();

@implementation ComGoogleCommonCollectClassToInstanceMap

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, 0, 1, -1, 2, -1, -1 },
    { NULL, "LNSObject;", 0x401, 3, 4, -1, 5, -1, 6 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getInstanceWithIOSClass:);
  methods[1].selector = @selector(putInstanceWithIOSClass:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getInstance", "LIOSClass;", "<T:TB;>(Ljava/lang/Class<TT;>;)TT;", "putInstance", "LIOSClass;LNSObject;", "<T:TB;>(Ljava/lang/Class<TT;>;TT;)TT;", (void *)&ComGoogleCommonCollectClassToInstanceMap__Annotations$0, "<B:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Map<Ljava/lang/Class<+TB;>;TB;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectClassToInstanceMap = { "ClassToInstanceMap", "com.google.common.collect", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, 7, -1 };
  return &_ComGoogleCommonCollectClassToInstanceMap;
}

@end

IOSObjectArray *ComGoogleCommonCollectClassToInstanceMap__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectClassToInstanceMap)