//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/io/swagger/annotations/ApiImplicitParam.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "io/swagger/annotations/ApiImplicitParam.h"
#include "io/swagger/annotations/Example.h"
#include "io/swagger/annotations/ExampleProperty.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

__attribute__((unused)) static IOSObjectArray *IoSwaggerAnnotationsApiImplicitParam__Annotations$0();

@implementation IoSwaggerAnnotationsApiImplicitParam

@synthesize name = name_;
@synthesize value = value_;
@synthesize defaultValue = defaultValue_;
@synthesize allowableValues = allowableValues_;
@synthesize required = required_;
@synthesize access = access_;
@synthesize allowMultiple = allowMultiple_;
@synthesize dataType = dataType_;
@synthesize paramType = paramType_;
@synthesize example = example_;
@synthesize examples = examples_;

+ (NSString *)nameDefault {
  return @"";
}

+ (NSString *)valueDefault {
  return @"";
}

+ (NSString *)defaultValueDefault {
  return @"";
}

+ (NSString *)allowableValuesDefault {
  return @"";
}

+ (jboolean)requiredDefault {
  return false;
}

+ (NSString *)accessDefault {
  return @"";
}

+ (jboolean)allowMultipleDefault {
  return false;
}

+ (NSString *)dataTypeDefault {
  return @"";
}

+ (NSString *)paramTypeDefault {
  return @"";
}

+ (NSString *)exampleDefault {
  return @"";
}

+ (id<IoSwaggerAnnotationsExample>)examplesDefault {
  return create_IoSwaggerAnnotationsExample([IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsExampleProperty(@"", @"") } count:1 type:IoSwaggerAnnotationsExampleProperty_class_()]);
}

- (IOSClass *)annotationType {
  return IoSwaggerAnnotationsApiImplicitParam_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@io.swagger.annotations.ApiImplicitParam(name=%@, value=%@, defaultValue=%@, allowableValues=%@, required=%d, access=%@, allowMultiple=%d, dataType=%@, paramType=%@, example=%@, examples=%@)", name_, value_, defaultValue_, allowableValues_, required_, access_, allowMultiple_, dataType_, paramType_, example_, examples_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LIoSwaggerAnnotationsExample;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(name);
  methods[1].selector = @selector(value);
  methods[2].selector = @selector(defaultValue);
  methods[3].selector = @selector(allowableValues);
  methods[4].selector = @selector(required);
  methods[5].selector = @selector(access);
  methods[6].selector = @selector(allowMultiple);
  methods[7].selector = @selector(dataType);
  methods[8].selector = @selector(paramType);
  methods[9].selector = @selector(example);
  methods[10].selector = @selector(examples);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "value_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "defaultValue_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "allowableValues_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "required_", "Z", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "access_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "allowMultiple_", "Z", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "dataType_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "paramType_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "example_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "examples_", "LIoSwaggerAnnotationsExample;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&IoSwaggerAnnotationsApiImplicitParam__Annotations$0 };
  static const J2ObjcClassInfo _IoSwaggerAnnotationsApiImplicitParam = { "ApiImplicitParam", "io.swagger.annotations", ptrTable, methods, fields, 7, 0x2609, 11, 11, -1, -1, -1, -1, 0 };
  return &_IoSwaggerAnnotationsApiImplicitParam;
}

@end

id<IoSwaggerAnnotationsApiImplicitParam> create_IoSwaggerAnnotationsApiImplicitParam(NSString *access, jboolean allowMultiple, NSString *allowableValues, NSString *dataType, NSString *defaultValue, NSString *example, id<IoSwaggerAnnotationsExample> examples, NSString *name, NSString *paramType, jboolean required, NSString *value) {
  IoSwaggerAnnotationsApiImplicitParam *self = AUTORELEASE([[IoSwaggerAnnotationsApiImplicitParam alloc] init]);
  self->access_ = RETAIN_(access);
  self->allowMultiple_ = allowMultiple;
  self->allowableValues_ = RETAIN_(allowableValues);
  self->dataType_ = RETAIN_(dataType);
  self->defaultValue_ = RETAIN_(defaultValue);
  self->example_ = RETAIN_(example);
  self->examples_ = RETAIN_(examples);
  self->name_ = RETAIN_(name);
  self->paramType_ = RETAIN_(paramType);
  self->required_ = required;
  self->value_ = RETAIN_(value);
  return self;
}

IOSObjectArray *IoSwaggerAnnotationsApiImplicitParam__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, METHOD) } count:1 type:JavaLangAnnotationElementType_class_()]), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)) } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(IoSwaggerAnnotationsApiImplicitParam)
