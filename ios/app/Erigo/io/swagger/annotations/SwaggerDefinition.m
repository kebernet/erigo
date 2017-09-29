//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/io/swagger/annotations/SwaggerDefinition.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "io/swagger/annotations/ApiKeyAuthDefinition.h"
#include "io/swagger/annotations/BasicAuthDefinition.h"
#include "io/swagger/annotations/Contact.h"
#include "io/swagger/annotations/Extension.h"
#include "io/swagger/annotations/ExtensionProperty.h"
#include "io/swagger/annotations/ExternalDocs.h"
#include "io/swagger/annotations/Info.h"
#include "io/swagger/annotations/License.h"
#include "io/swagger/annotations/OAuth2Definition.h"
#include "io/swagger/annotations/SecurityDefinition.h"
#include "io/swagger/annotations/SwaggerDefinition.h"
#include "io/swagger/annotations/Tag.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Inherited.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

__attribute__((unused)) static IOSObjectArray *IoSwaggerAnnotationsSwaggerDefinition__Annotations$0();

__attribute__((unused)) static void IoSwaggerAnnotationsSwaggerDefinition_Scheme_initWithNSString_withInt_(IoSwaggerAnnotationsSwaggerDefinition_Scheme *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static IoSwaggerAnnotationsSwaggerDefinition_Scheme *new_IoSwaggerAnnotationsSwaggerDefinition_Scheme_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation IoSwaggerAnnotationsSwaggerDefinition

@synthesize host = host_;
@synthesize basePath = basePath_;
@synthesize consumes = consumes_;
@synthesize produces = produces_;
@synthesize schemes = schemes_;
@synthesize tags = tags_;
@synthesize securityDefinition = securityDefinition_;
@synthesize info = info_;
@synthesize externalDocs = externalDocs_;

+ (NSString *)hostDefault {
  return @"";
}

+ (NSString *)basePathDefault {
  return @"";
}

+ (IOSObjectArray *)consumesDefault {
  return [IOSObjectArray newArrayWithObjects:(id[]){ @"" } count:1 type:NSString_class_()];
}

+ (IOSObjectArray *)producesDefault {
  return [IOSObjectArray newArrayWithObjects:(id[]){ @"" } count:1 type:NSString_class_()];
}

+ (IOSObjectArray *)schemesDefault {
  return [IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, DEFAULT) } count:1 type:IoSwaggerAnnotationsSwaggerDefinition_Scheme_class_()];
}

+ (IOSObjectArray *)tagsDefault {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsTag(@"", [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsExtension(@"", [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsExtensionProperty(@"", @"") } count:1 type:IoSwaggerAnnotationsExtensionProperty_class_()]) } count:1 type:IoSwaggerAnnotationsExtension_class_()], create_IoSwaggerAnnotationsExternalDocs(@"", @""), @"") } count:1 type:IoSwaggerAnnotationsTag_class_()];
}

+ (id<IoSwaggerAnnotationsSecurityDefinition>)securityDefinitionDefault {
  return create_IoSwaggerAnnotationsSecurityDefinition([IOSObjectArray newArrayWithLength:0 type:IoSwaggerAnnotationsApiKeyAuthDefinition_class_()], [IOSObjectArray newArrayWithLength:0 type:IoSwaggerAnnotationsBasicAuthDefinition_class_()], [IOSObjectArray newArrayWithLength:0 type:IoSwaggerAnnotationsOAuth2Definition_class_()]);
}

+ (id<IoSwaggerAnnotationsInfo>)infoDefault {
  return create_IoSwaggerAnnotationsInfo(create_IoSwaggerAnnotationsContact(@"", @"", @""), @"", [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsExtension(@"", [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsExtensionProperty(@"", @"") } count:1 type:IoSwaggerAnnotationsExtensionProperty_class_()]) } count:1 type:IoSwaggerAnnotationsExtension_class_()], create_IoSwaggerAnnotationsLicense(@"", @""), @"", @"", @"");
}

+ (id<IoSwaggerAnnotationsExternalDocs>)externalDocsDefault {
  return create_IoSwaggerAnnotationsExternalDocs(@"", @"");
}

- (IOSClass *)annotationType {
  return IoSwaggerAnnotationsSwaggerDefinition_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@io.swagger.annotations.SwaggerDefinition(host=%@, basePath=%@, consumes=%@, produces=%@, schemes=%@, tags=%@, securityDefinition=%@, info=%@, externalDocs=%@)", host_, basePath_, consumes_, produces_, schemes_, tags_, securityDefinition_, info_, externalDocs_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LIoSwaggerAnnotationsSwaggerDefinition_Scheme;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LIoSwaggerAnnotationsTag;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LIoSwaggerAnnotationsSecurityDefinition;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LIoSwaggerAnnotationsInfo;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LIoSwaggerAnnotationsExternalDocs;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(host);
  methods[1].selector = @selector(basePath);
  methods[2].selector = @selector(consumes);
  methods[3].selector = @selector(produces);
  methods[4].selector = @selector(schemes);
  methods[5].selector = @selector(tags);
  methods[6].selector = @selector(securityDefinition);
  methods[7].selector = @selector(info);
  methods[8].selector = @selector(externalDocs);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "host_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "basePath_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "consumes_", "[LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "produces_", "[LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "schemes_", "[LIoSwaggerAnnotationsSwaggerDefinition_Scheme;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "tags_", "[LIoSwaggerAnnotationsTag;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "securityDefinition_", "LIoSwaggerAnnotationsSecurityDefinition;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "info_", "LIoSwaggerAnnotationsInfo;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "externalDocs_", "LIoSwaggerAnnotationsExternalDocs;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LIoSwaggerAnnotationsSwaggerDefinition_Scheme;", (void *)&IoSwaggerAnnotationsSwaggerDefinition__Annotations$0 };
  static const J2ObjcClassInfo _IoSwaggerAnnotationsSwaggerDefinition = { "SwaggerDefinition", "io.swagger.annotations", ptrTable, methods, fields, 7, 0x2609, 9, 9, -1, 0, -1, -1, 1 };
  return &_IoSwaggerAnnotationsSwaggerDefinition;
}

@end

id<IoSwaggerAnnotationsSwaggerDefinition> create_IoSwaggerAnnotationsSwaggerDefinition(NSString *basePath, IOSObjectArray *consumes, id<IoSwaggerAnnotationsExternalDocs> externalDocs, NSString *host, id<IoSwaggerAnnotationsInfo> info, IOSObjectArray *produces, IOSObjectArray *schemes, id<IoSwaggerAnnotationsSecurityDefinition> securityDefinition, IOSObjectArray *tags) {
  IoSwaggerAnnotationsSwaggerDefinition *self = AUTORELEASE([[IoSwaggerAnnotationsSwaggerDefinition alloc] init]);
  self->basePath_ = RETAIN_(basePath);
  self->consumes_ = RETAIN_(consumes);
  self->externalDocs_ = RETAIN_(externalDocs);
  self->host_ = RETAIN_(host);
  self->info_ = RETAIN_(info);
  self->produces_ = RETAIN_(produces);
  self->schemes_ = RETAIN_(schemes);
  self->securityDefinition_ = RETAIN_(securityDefinition);
  self->tags_ = RETAIN_(tags);
  return self;
}

IOSObjectArray *IoSwaggerAnnotationsSwaggerDefinition__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, TYPE) } count:1 type:JavaLangAnnotationElementType_class_()]), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)), create_JavaLangAnnotationInherited() } count:3 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(IoSwaggerAnnotationsSwaggerDefinition)

J2OBJC_INITIALIZED_DEFN(IoSwaggerAnnotationsSwaggerDefinition_Scheme)

IoSwaggerAnnotationsSwaggerDefinition_Scheme *IoSwaggerAnnotationsSwaggerDefinition_Scheme_values_[5];

@implementation IoSwaggerAnnotationsSwaggerDefinition_Scheme

+ (IOSObjectArray *)values {
  return IoSwaggerAnnotationsSwaggerDefinition_Scheme_values();
}

+ (IoSwaggerAnnotationsSwaggerDefinition_Scheme *)valueOfWithNSString:(NSString *)name {
  return IoSwaggerAnnotationsSwaggerDefinition_Scheme_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LIoSwaggerAnnotationsSwaggerDefinition_Scheme;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LIoSwaggerAnnotationsSwaggerDefinition_Scheme;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT", "LIoSwaggerAnnotationsSwaggerDefinition_Scheme;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "HTTP", "LIoSwaggerAnnotationsSwaggerDefinition_Scheme;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "HTTPS", "LIoSwaggerAnnotationsSwaggerDefinition_Scheme;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "WS", "LIoSwaggerAnnotationsSwaggerDefinition_Scheme;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "WSS", "LIoSwaggerAnnotationsSwaggerDefinition_Scheme;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, DEFAULT), &JreEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, HTTP), &JreEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, HTTPS), &JreEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, WS), &JreEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, WSS), "LIoSwaggerAnnotationsSwaggerDefinition;", "Ljava/lang/Enum<Lio/swagger/annotations/SwaggerDefinition$Scheme;>;" };
  static const J2ObjcClassInfo _IoSwaggerAnnotationsSwaggerDefinition_Scheme = { "Scheme", "io.swagger.annotations", ptrTable, methods, fields, 7, 0x4019, 2, 5, 7, -1, -1, 8, -1 };
  return &_IoSwaggerAnnotationsSwaggerDefinition_Scheme;
}

+ (void)initialize {
  if (self == [IoSwaggerAnnotationsSwaggerDefinition_Scheme class]) {
    JreEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, DEFAULT) = new_IoSwaggerAnnotationsSwaggerDefinition_Scheme_initWithNSString_withInt_(@"DEFAULT", 0);
    JreEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, HTTP) = new_IoSwaggerAnnotationsSwaggerDefinition_Scheme_initWithNSString_withInt_(@"HTTP", 1);
    JreEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, HTTPS) = new_IoSwaggerAnnotationsSwaggerDefinition_Scheme_initWithNSString_withInt_(@"HTTPS", 2);
    JreEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, WS) = new_IoSwaggerAnnotationsSwaggerDefinition_Scheme_initWithNSString_withInt_(@"WS", 3);
    JreEnum(IoSwaggerAnnotationsSwaggerDefinition_Scheme, WSS) = new_IoSwaggerAnnotationsSwaggerDefinition_Scheme_initWithNSString_withInt_(@"WSS", 4);
    J2OBJC_SET_INITIALIZED(IoSwaggerAnnotationsSwaggerDefinition_Scheme)
  }
}

@end

void IoSwaggerAnnotationsSwaggerDefinition_Scheme_initWithNSString_withInt_(IoSwaggerAnnotationsSwaggerDefinition_Scheme *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IoSwaggerAnnotationsSwaggerDefinition_Scheme *new_IoSwaggerAnnotationsSwaggerDefinition_Scheme_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(IoSwaggerAnnotationsSwaggerDefinition_Scheme, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *IoSwaggerAnnotationsSwaggerDefinition_Scheme_values() {
  IoSwaggerAnnotationsSwaggerDefinition_Scheme_initialize();
  return [IOSObjectArray arrayWithObjects:IoSwaggerAnnotationsSwaggerDefinition_Scheme_values_ count:5 type:IoSwaggerAnnotationsSwaggerDefinition_Scheme_class_()];
}

IoSwaggerAnnotationsSwaggerDefinition_Scheme *IoSwaggerAnnotationsSwaggerDefinition_Scheme_valueOfWithNSString_(NSString *name) {
  IoSwaggerAnnotationsSwaggerDefinition_Scheme_initialize();
  for (int i = 0; i < 5; i++) {
    IoSwaggerAnnotationsSwaggerDefinition_Scheme *e = IoSwaggerAnnotationsSwaggerDefinition_Scheme_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

IoSwaggerAnnotationsSwaggerDefinition_Scheme *IoSwaggerAnnotationsSwaggerDefinition_Scheme_fromOrdinal(NSUInteger ordinal) {
  IoSwaggerAnnotationsSwaggerDefinition_Scheme_initialize();
  if (ordinal >= 5) {
    return nil;
  }
  return IoSwaggerAnnotationsSwaggerDefinition_Scheme_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(IoSwaggerAnnotationsSwaggerDefinition_Scheme)