//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/net/kebernet/configuration/client/service/SettingsService.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"
#include "net/kebernet/configuration/client/service/SettingsService.h"

@interface ERSSettingsService : NSObject

@end

__attribute__((unused)) static IOSObjectArray *ERSSettingsService__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ERSSettingsService__Annotations$1();

__attribute__((unused)) static IOSObjectArray *ERSSettingsService__Annotations$2();

__attribute__((unused)) static IOSObjectArray *ERSSettingsService__Annotations$3();

@interface ERSSettingsService_ValuesCallback : NSObject

@end

@interface ERSSettingsService_SettingsCallback : NSObject

@end

@interface ERSSettingsService_SaveCallback : NSObject

@end

@implementation ERSSettingsService

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, 0, 1, -1, -1, -1, 2 },
    { NULL, "V", 0x401, 3, 4, -1, -1, -1, 5 },
    { NULL, "V", 0x401, 6, 7, -1, -1, -1, 8 },
    { NULL, "V", 0x401, 9, 10, -1, 11, -1, 12 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(canResolveWithNSString:);
  methods[1].selector = @selector(listSettingsWithNSString:withNSString:withERSSettingsService_SettingsCallback:);
  methods[2].selector = @selector(listValuesWithNSString:withNSString:withERSSettingsService_ValuesCallback:);
  methods[3].selector = @selector(saveSettingsWithNSString:withNSString:withJavaUtilList:withERSSettingsService_SaveCallback:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "canResolve", "LNSString;", (void *)&ERSSettingsService__Annotations$0, "listSettings", "LNSString;LNSString;LERSSettingsService_SettingsCallback;", (void *)&ERSSettingsService__Annotations$1, "listValues", "LNSString;LNSString;LERSSettingsService_ValuesCallback;", (void *)&ERSSettingsService__Annotations$2, "saveSettings", "LNSString;LNSString;LJavaUtilList;LERSSettingsService_SaveCallback;", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List<Lnet/kebernet/configuration/client/model/SettingValue;>;Lnet/kebernet/configuration/client/service/SettingsService$SaveCallback;)V", (void *)&ERSSettingsService__Annotations$3, "LERSSettingsService_ValuesCallback;LERSSettingsService_SettingsCallback;LERSSettingsService_SaveCallback;" };
  static const J2ObjcClassInfo _ERSSettingsService = { "SettingsService", "net.kebernet.configuration.client.service", ptrTable, methods, NULL, 7, 0x609, 4, 0, -1, 13, -1, -1, -1 };
  return &_ERSSettingsService;
}

@end

IOSObjectArray *ERSSettingsService__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ERSSettingsService__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:3 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ERSSettingsService__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:3 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ERSSettingsService__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS)) } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:4 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ERSSettingsService)

@implementation ERSSettingsService_ValuesCallback

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(onValuesResponseWithJavaUtilList:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "onValuesResponse", "LJavaUtilList;", "(Ljava/util/List<Lnet/kebernet/configuration/client/model/SettingValue;>;)V", "LERSSettingsService;" };
  static const J2ObjcClassInfo _ERSSettingsService_ValuesCallback = { "ValuesCallback", "net.kebernet.configuration.client.service", ptrTable, methods, NULL, 7, 0x609, 1, 0, 3, -1, -1, -1, -1 };
  return &_ERSSettingsService_ValuesCallback;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ERSSettingsService_ValuesCallback)

@implementation ERSSettingsService_SettingsCallback

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(onSettingsResponseWithERMSettings:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "onSettingsResponse", "LERMSettings;", "LERSSettingsService;" };
  static const J2ObjcClassInfo _ERSSettingsService_SettingsCallback = { "SettingsCallback", "net.kebernet.configuration.client.service", ptrTable, methods, NULL, 7, 0x609, 1, 0, 2, -1, -1, -1, -1 };
  return &_ERSSettingsService_SettingsCallback;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ERSSettingsService_SettingsCallback)

@implementation ERSSettingsService_SaveCallback

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(onSaveWithBoolean:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "onSave", "Z", "LERSSettingsService;" };
  static const J2ObjcClassInfo _ERSSettingsService_SaveCallback = { "SaveCallback", "net.kebernet.configuration.client.service", ptrTable, methods, NULL, 7, 0x609, 1, 0, 2, -1, -1, -1, -1 };
  return &_ERSSettingsService_SaveCallback;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ERSSettingsService_SaveCallback)