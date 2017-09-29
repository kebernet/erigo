//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/io/swagger/annotations/ApiModelProperty.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "io/swagger/annotations/ApiModelProperty.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

__attribute__((unused)) static IOSObjectArray *IoSwaggerAnnotationsApiModelProperty__Annotations$0();

@implementation IoSwaggerAnnotationsApiModelProperty

@synthesize value = value_;
@synthesize name = name_;
@synthesize allowableValues = allowableValues_;
@synthesize access = access_;
@synthesize notes = notes_;
@synthesize dataType = dataType_;
@synthesize required = required_;
@synthesize position = position_;
@synthesize hidden = hidden_;
@synthesize example = example_;
@synthesize readOnly = readOnly_;
@synthesize reference = reference_;

+ (NSString *)valueDefault {
  return @"";
}

+ (NSString *)nameDefault {
  return @"";
}

+ (NSString *)allowableValuesDefault {
  return @"";
}

+ (NSString *)accessDefault {
  return @"";
}

+ (NSString *)notesDefault {
  return @"";
}

+ (NSString *)dataTypeDefault {
  return @"";
}

+ (jboolean)requiredDefault {
  return false;
}

+ (jint)positionDefault {
  return 0;
}

+ (jboolean)hiddenDefault {
  return false;
}

+ (NSString *)exampleDefault {
  return @"";
}

+ (jboolean)readOnlyDefault {
  return false;
}

+ (NSString *)referenceDefault {
  return @"";
}

- (IOSClass *)annotationType {
  return IoSwaggerAnnotationsApiModelProperty_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@io.swagger.annotations.ApiModelProperty(value=%@, name=%@, allowableValues=%@, access=%@, notes=%@, dataType=%@, required=%d, position=%d, hidden=%d, example=%@, readOnly=%d, reference=%@)", value_, name_, allowableValues_, access_, notes_, dataType_, required_, position_, hidden_, example_, readOnly_, reference_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(value);
  methods[1].selector = @selector(name);
  methods[2].selector = @selector(allowableValues);
  methods[3].selector = @selector(access);
  methods[4].selector = @selector(notes);
  methods[5].selector = @selector(dataType);
  methods[6].selector = @selector(required);
  methods[7].selector = @selector(position);
  methods[8].selector = @selector(hidden);
  methods[9].selector = @selector(example);
  methods[10].selector = @selector(readOnly);
  methods[11].selector = @selector(reference);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "allowableValues_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "access_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "notes_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "dataType_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "required_", "Z", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "position_", "I", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "hidden_", "Z", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "example_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "readOnly_", "Z", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
    { "reference_", "LNSString;", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&IoSwaggerAnnotationsApiModelProperty__Annotations$0 };
  static const J2ObjcClassInfo _IoSwaggerAnnotationsApiModelProperty = { "ApiModelProperty", "io.swagger.annotations", ptrTable, methods, fields, 7, 0x2609, 12, 12, -1, -1, -1, -1, 0 };
  return &_IoSwaggerAnnotationsApiModelProperty;
}

@end

id<IoSwaggerAnnotationsApiModelProperty> create_IoSwaggerAnnotationsApiModelProperty(NSString *access, NSString *allowableValues, NSString *dataType, NSString *example, jboolean hidden, NSString *name, NSString *notes, jint position, jboolean readOnly, NSString *reference, jboolean required, NSString *value) {
  IoSwaggerAnnotationsApiModelProperty *self = AUTORELEASE([[IoSwaggerAnnotationsApiModelProperty alloc] init]);
  self->access_ = RETAIN_(access);
  self->allowableValues_ = RETAIN_(allowableValues);
  self->dataType_ = RETAIN_(dataType);
  self->example_ = RETAIN_(example);
  self->hidden_ = hidden;
  self->name_ = RETAIN_(name);
  self->notes_ = RETAIN_(notes);
  self->position_ = position;
  self->readOnly_ = readOnly;
  self->reference_ = RETAIN_(reference);
  self->required_ = required;
  self->value_ = RETAIN_(value);
  return self;
}

IOSObjectArray *IoSwaggerAnnotationsApiModelProperty__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, METHOD), JreLoadEnum(JavaLangAnnotationElementType, FIELD) } count:2 type:JavaLangAnnotationElementType_class_()]), create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)) } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(IoSwaggerAnnotationsApiModelProperty)