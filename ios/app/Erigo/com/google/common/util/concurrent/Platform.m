//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/Platform.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/util/concurrent/Platform.h"
#include "java/lang/annotation/Annotation.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonUtilConcurrentPlatform ()

- (instancetype)init;

@end

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentPlatform_init(ComGoogleCommonUtilConcurrentPlatform *self);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentPlatform *new_ComGoogleCommonUtilConcurrentPlatform_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentPlatform *create_ComGoogleCommonUtilConcurrentPlatform_init();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentPlatform__Annotations$0();

@implementation ComGoogleCommonUtilConcurrentPlatform

+ (jboolean)isInstanceOfThrowableClassWithNSException:(NSException *)t
                                         withIOSClass:(IOSClass *)expectedClass {
  return ComGoogleCommonUtilConcurrentPlatform_isInstanceOfThrowableClassWithNSException_withIOSClass_(t, expectedClass);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonUtilConcurrentPlatform_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x8, 0, 1, -1, 2, -1, 3 },
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(isInstanceOfThrowableClassWithNSException:withIOSClass:);
  methods[1].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "isInstanceOfThrowableClass", "LNSException;LIOSClass;", "(Ljava/lang/Throwable;Ljava/lang/Class<+Ljava/lang/Throwable;>;)Z", (void *)&ComGoogleCommonUtilConcurrentPlatform__Annotations$0 };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentPlatform = { "Platform", "com.google.common.util.concurrent", ptrTable, methods, NULL, 7, 0x10, 2, 0, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentPlatform;
}

@end

jboolean ComGoogleCommonUtilConcurrentPlatform_isInstanceOfThrowableClassWithNSException_withIOSClass_(NSException *t, IOSClass *expectedClass) {
  ComGoogleCommonUtilConcurrentPlatform_initialize();
  return [((IOSClass *) nil_chk(expectedClass)) isInstance:t];
}

void ComGoogleCommonUtilConcurrentPlatform_init(ComGoogleCommonUtilConcurrentPlatform *self) {
  NSObject_init(self);
}

ComGoogleCommonUtilConcurrentPlatform *new_ComGoogleCommonUtilConcurrentPlatform_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentPlatform, init)
}

ComGoogleCommonUtilConcurrentPlatform *create_ComGoogleCommonUtilConcurrentPlatform_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentPlatform, init)
}

IOSObjectArray *ComGoogleCommonUtilConcurrentPlatform__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()], [IOSObjectArray newArrayWithLength:0 type:JavaLangAnnotationAnnotation_class_()] } count:2 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentPlatform)
