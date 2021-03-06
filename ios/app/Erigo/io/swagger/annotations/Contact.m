//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/io/swagger/annotations/Contact.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "io/swagger/annotations/Contact.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

__attribute__((unused)) static IOSObjectArray *IoSwaggerAnnotationsContact__Annotations$0();

@implementation IoSwaggerAnnotationsContact

@synthesize name = name_;
@synthesize url = url_;
@synthesize email = email_;

+ (NSString *)urlDefault {
  return @"";
}

+ (NSString *)emailDefault {
  return @"";
}

- (IOSClass *)annotationType {
  return IoSwaggerAnnotationsContact_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@io.swagger.annotations.Contact(name=%@, url=%@, email=%@)", name_, url_, email_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(name);
  methods[1].selector = @selector(url);
  methods[2].selector = @selector(email);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "url_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "email_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&IoSwaggerAnnotationsContact__Annotations$0 };
  static const J2ObjcClassInfo _IoSwaggerAnnotationsContact = { "Contact", "io.swagger.annotations", ptrTable, methods, fields, 7, 0x2609, 3, 3, -1, -1, -1, -1, 0 };
  return &_IoSwaggerAnnotationsContact;
}

@end

id<IoSwaggerAnnotationsContact> create_IoSwaggerAnnotationsContact(NSString *email, NSString *name, NSString *url) {
  IoSwaggerAnnotationsContact *self = AUTORELEASE([[IoSwaggerAnnotationsContact alloc] init]);
  self->email_ = RETAIN_(email);
  self->name_ = RETAIN_(name);
  self->url_ = RETAIN_(url);
  return self;
}

IOSObjectArray *IoSwaggerAnnotationsContact__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, ANNOTATION_TYPE) } count:1 type:JavaLangAnnotationElementType_class_()]), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)) } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(IoSwaggerAnnotationsContact)
