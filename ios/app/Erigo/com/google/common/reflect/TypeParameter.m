//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/reflect/TypeParameter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/reflect/TypeCapture.h"
#include "com/google/common/reflect/TypeParameter.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/reflect/Type.h"
#include "java/lang/reflect/TypeVariable.h"
#include "javax/annotation/Nullable.h"

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonReflectTypeParameter__Annotations$0();

@implementation ComGoogleCommonReflectTypeParameter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonReflectTypeParameter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSUInteger)hash {
  return ((jint) [((id<JavaLangReflectTypeVariable>) nil_chk(typeVariable_)) hash]);
}

- (jboolean)isEqual:(id)o {
  if ([o isKindOfClass:[ComGoogleCommonReflectTypeParameter class]]) {
    ComGoogleCommonReflectTypeParameter *that = (ComGoogleCommonReflectTypeParameter *) cast_chk(o, [ComGoogleCommonReflectTypeParameter class]);
    return [((id<JavaLangReflectTypeVariable>) nil_chk(typeVariable_)) isEqual:((ComGoogleCommonReflectTypeParameter *) nil_chk(that))->typeVariable_];
  }
  return false;
}

- (NSString *)description {
  return [((id<JavaLangReflectTypeVariable>) nil_chk(typeVariable_)) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 0, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, 1, 2, -1, -1, -1, 3 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(hash);
  methods[2].selector = @selector(isEqual:);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "typeVariable_", "LJavaLangReflectTypeVariable;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "hashCode", "equals", "LNSObject;", (void *)&ComGoogleCommonReflectTypeParameter__Annotations$0, "toString", "Ljava/lang/reflect/TypeVariable<*>;", "<T:Ljava/lang/Object;>Lcom/google/common/reflect/TypeCapture<TT;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonReflectTypeParameter = { "TypeParameter", "com.google.common.reflect", ptrTable, methods, fields, 7, 0x401, 4, 1, -1, -1, -1, 6, -1 };
  return &_ComGoogleCommonReflectTypeParameter;
}

@end

void ComGoogleCommonReflectTypeParameter_init(ComGoogleCommonReflectTypeParameter *self) {
  ComGoogleCommonReflectTypeCapture_init(self);
  id<JavaLangReflectType> type = [self capture];
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withId_([JavaLangReflectTypeVariable_class_() isInstance:type], @"%s should be a type variable.", type);
  self->typeVariable_ = (id<JavaLangReflectTypeVariable>) cast_check(type, JavaLangReflectTypeVariable_class_());
}

IOSObjectArray *ComGoogleCommonReflectTypeParameter__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonReflectTypeParameter)
