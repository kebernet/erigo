//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/annotation/Syntax.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/Documented.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "javax/annotation/Syntax.h"
#include "javax/annotation/meta/TypeQualifier.h"
#include "javax/annotation/meta/When.h"

__attribute__((unused)) static IOSObjectArray *JavaxAnnotationSyntax__Annotations$0();

@implementation JavaxAnnotationSyntax

@synthesize value = value_;
@synthesize when = when_;

+ (JavaxAnnotationMetaWhen *)whenDefault {
  return JreLoadEnum(JavaxAnnotationMetaWhen, ALWAYS);
}

- (IOSClass *)annotationType {
  return JavaxAnnotationSyntax_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@javax.annotation.Syntax(value=%@, when=%@)", value_, when_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxAnnotationMetaWhen;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(value);
  methods[1].selector = @selector(when);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "when_", "LJavaxAnnotationMetaWhen;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&JavaxAnnotationSyntax__Annotations$0 };
  static const J2ObjcClassInfo _JavaxAnnotationSyntax = { "Syntax", "javax.annotation", ptrTable, methods, fields, 7, 0x2609, 2, 2, -1, -1, -1, -1, 0 };
  return &_JavaxAnnotationSyntax;
}

@end

id<JavaxAnnotationSyntax> create_JavaxAnnotationSyntax(NSString *value, JavaxAnnotationMetaWhen *when) {
  JavaxAnnotationSyntax *self = AUTORELEASE([[JavaxAnnotationSyntax alloc] init]);
  self->value_ = RETAIN_(value);
  self->when_ = RETAIN_(when);
  return self;
}

IOSObjectArray *JavaxAnnotationSyntax__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationDocumented(), create_JavaxAnnotationMetaTypeQualifier(JavaLangCharSequence_class_()), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)) } count:3 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(JavaxAnnotationSyntax)