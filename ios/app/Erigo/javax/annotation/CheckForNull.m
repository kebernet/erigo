//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/annotation/CheckForNull.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/Documented.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "javax/annotation/CheckForNull.h"
#include "javax/annotation/Nonnull.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *JavaxAnnotationCheckForNull__Annotations$0();

@implementation JavaxAnnotationCheckForNull

- (IOSClass *)annotationType {
  return JavaxAnnotationCheckForNull_class_();
}

- (NSString *)description {
  return @"@javax.annotation.CheckForNull()";
}

+ (const J2ObjcClassInfo *)__metadata {
  static const void *ptrTable[] = { (void *)&JavaxAnnotationCheckForNull__Annotations$0 };
  static const J2ObjcClassInfo _JavaxAnnotationCheckForNull = { "CheckForNull", "javax.annotation", ptrTable, NULL, NULL, 7, 0x2609, 0, 0, -1, -1, -1, -1, 0 };
  return &_JavaxAnnotationCheckForNull;
}

@end

id<JavaxAnnotationCheckForNull> create_JavaxAnnotationCheckForNull() {
  JavaxAnnotationCheckForNull *self = AUTORELEASE([[JavaxAnnotationCheckForNull alloc] init]);
  return self;
}

IOSObjectArray *JavaxAnnotationCheckForNull__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationDocumented(), create_JavaxAnnotationNonnull(JreLoadEnum(JavaxAnnotationMetaWhen, MAYBE)), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)) } count:3 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(JavaxAnnotationCheckForNull)