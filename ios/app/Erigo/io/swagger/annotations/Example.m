//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/io/swagger/annotations/Example.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "io/swagger/annotations/Example.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

__attribute__((unused)) static IOSObjectArray *IoSwaggerAnnotationsExample__Annotations$0();

@implementation IoSwaggerAnnotationsExample

@synthesize value = value_;

- (IOSClass *)annotationType {
  return IoSwaggerAnnotationsExample_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@io.swagger.annotations.Example(value=%@)", value_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LIoSwaggerAnnotationsExampleProperty;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(value);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "[LIoSwaggerAnnotationsExampleProperty;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&IoSwaggerAnnotationsExample__Annotations$0 };
  static const J2ObjcClassInfo _IoSwaggerAnnotationsExample = { "Example", "io.swagger.annotations", ptrTable, methods, fields, 7, 0x2609, 1, 1, -1, -1, -1, -1, 0 };
  return &_IoSwaggerAnnotationsExample;
}

@end

id<IoSwaggerAnnotationsExample> create_IoSwaggerAnnotationsExample(IOSObjectArray *value) {
  IoSwaggerAnnotationsExample *self = AUTORELEASE([[IoSwaggerAnnotationsExample alloc] init]);
  self->value_ = RETAIN_(value);
  return self;
}

IOSObjectArray *IoSwaggerAnnotationsExample__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, ANNOTATION_TYPE) } count:1 type:JavaLangAnnotationElementType_class_()]), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)) } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(IoSwaggerAnnotationsExample)
