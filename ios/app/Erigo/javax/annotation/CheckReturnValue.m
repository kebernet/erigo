//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/annotation/CheckReturnValue.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/Documented.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"
#include "javax/annotation/CheckReturnValue.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *JavaxAnnotationCheckReturnValue__Annotations$0();

@implementation JavaxAnnotationCheckReturnValue

@synthesize when = when_;

+ (JavaxAnnotationMetaWhen *)whenDefault {
  return JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS);
}

- (IOSClass *)annotationType {
  return JavaxAnnotationCheckReturnValue_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@javax.annotation.CheckReturnValue(when=%@)", when_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaxAnnotationMetaWhen;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(when);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "when_", "LJavaxAnnotationMetaWhen;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&JavaxAnnotationCheckReturnValue__Annotations$0 };
  static const J2ObjcClassInfo _JavaxAnnotationCheckReturnValue = { "CheckReturnValue", "javax.annotation", ptrTable, methods, fields, 7, 0x2609, 1, 1, -1, -1, -1, -1, 0 };
  return &_JavaxAnnotationCheckReturnValue;
}

@end

id<JavaxAnnotationCheckReturnValue> create_JavaxAnnotationCheckReturnValue(JavaxAnnotationMetaWhen *when) {
  JavaxAnnotationCheckReturnValue *self = AUTORELEASE([[JavaxAnnotationCheckReturnValue alloc] init]);
  self->when_ = RETAIN_(when);
  return self;
}

IOSObjectArray *JavaxAnnotationCheckReturnValue__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationDocumented(), create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, METHOD), JreLoadEnum(JavaLangAnnotationElementType, CONSTRUCTOR), JreLoadEnum(JavaLangAnnotationElementType, TYPE), JreLoadEnum(JavaLangAnnotationElementType, PACKAGE) } count:4 type:JavaLangAnnotationElementType_class_()]), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)) } count:3 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(JavaxAnnotationCheckReturnValue)
