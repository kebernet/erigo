//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/annotation/meta/TypeQualifierDefault.java
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
#include "javax/annotation/meta/TypeQualifierDefault.h"

__attribute__((unused)) static IOSObjectArray *JavaxAnnotationMetaTypeQualifierDefault__Annotations$0();

@implementation JavaxAnnotationMetaTypeQualifierDefault

@synthesize value = value_;

+ (IOSObjectArray *)valueDefault {
  return [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationElementType_class_()];
}

- (IOSClass *)annotationType {
  return JavaxAnnotationMetaTypeQualifierDefault_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@javax.annotation.meta.TypeQualifierDefault(value=%@)", value_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LJavaLangAnnotationElementType;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(value);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "[LJavaLangAnnotationElementType;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&JavaxAnnotationMetaTypeQualifierDefault__Annotations$0 };
  static const J2ObjcClassInfo _JavaxAnnotationMetaTypeQualifierDefault = { "TypeQualifierDefault", "javax.annotation.meta", ptrTable, methods, fields, 7, 0x2609, 1, 1, -1, -1, -1, -1, 0 };
  return &_JavaxAnnotationMetaTypeQualifierDefault;
}

@end

id<JavaxAnnotationMetaTypeQualifierDefault> create_JavaxAnnotationMetaTypeQualifierDefault(IOSObjectArray *value) {
  JavaxAnnotationMetaTypeQualifierDefault *self = AUTORELEASE([[JavaxAnnotationMetaTypeQualifierDefault alloc] init]);
  self->value_ = RETAIN_(value);
  return self;
}

IOSObjectArray *JavaxAnnotationMetaTypeQualifierDefault__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationDocumented(), create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, ANNOTATION_TYPE) } count:1 type:JavaLangAnnotationElementType_class_()]), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)) } count:3 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(JavaxAnnotationMetaTypeQualifierDefault)