//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/base/Enums.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Converter.h"
#include "com/google/common/base/Enums.h"
#include "com/google/common/base/Optional.h"
#include "com/google/common/base/Platform.h"
#include "com/google/common/base/Preconditions.h"
#include "java/io/Serializable.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Enum.h"
#include "java/lang/NoSuchFieldException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/ref/WeakReference.h"
#include "java/lang/reflect/Field.h"
#include "java/util/EnumSet.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/WeakHashMap.h"
#include "javax/annotation/Nullable.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ComGoogleCommonBaseEnums ()

- (instancetype)init;

+ (id<JavaUtilMap>)populateCacheWithIOSClass:(IOSClass *)enumClass;

@end

inline id<JavaUtilMap> ComGoogleCommonBaseEnums_get_enumConstantCache();
static id<JavaUtilMap> ComGoogleCommonBaseEnums_enumConstantCache;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonBaseEnums, enumConstantCache, id<JavaUtilMap>)

__attribute__((unused)) static void ComGoogleCommonBaseEnums_init(ComGoogleCommonBaseEnums *self);

__attribute__((unused)) static ComGoogleCommonBaseEnums *new_ComGoogleCommonBaseEnums_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonBaseEnums *create_ComGoogleCommonBaseEnums_init();

__attribute__((unused)) static id<JavaUtilMap> ComGoogleCommonBaseEnums_populateCacheWithIOSClass_(IOSClass *enumClass);

@interface ComGoogleCommonBaseEnums_StringConverter : ComGoogleCommonBaseConverter < JavaIoSerializable > {
 @public
  IOSClass *enumClass_;
}

- (instancetype)initWithIOSClass:(IOSClass *)enumClass;

- (JavaLangEnum *)doForwardWithId:(NSString *)value;

- (NSString *)doBackwardWithId:(JavaLangEnum *)enumValue;

- (jboolean)isEqual:(id)object;

- (NSUInteger)hash;

- (NSString *)description;

- (JavaLangEnum *)applyWithId:(NSString *)arg0;

- (JavaLangEnum *)correctedDoForwardWithId:(NSString *)arg0;

- (JavaLangEnum *)convertWithId:(NSString *)arg0;

- (NSString *)correctedDoBackwardWithId:(JavaLangEnum *)arg0;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseEnums_StringConverter)

J2OBJC_FIELD_SETTER(ComGoogleCommonBaseEnums_StringConverter, enumClass_, IOSClass *)

inline jlong ComGoogleCommonBaseEnums_StringConverter_get_serialVersionUID();
#define ComGoogleCommonBaseEnums_StringConverter_serialVersionUID 0LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonBaseEnums_StringConverter, serialVersionUID, jlong)

__attribute__((unused)) static void ComGoogleCommonBaseEnums_StringConverter_initWithIOSClass_(ComGoogleCommonBaseEnums_StringConverter *self, IOSClass *enumClass);

__attribute__((unused)) static ComGoogleCommonBaseEnums_StringConverter *new_ComGoogleCommonBaseEnums_StringConverter_initWithIOSClass_(IOSClass *enumClass) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonBaseEnums_StringConverter *create_ComGoogleCommonBaseEnums_StringConverter_initWithIOSClass_(IOSClass *enumClass);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseEnums_StringConverter__Annotations$0();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseEnums_StringConverter)

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonBaseEnums)

@implementation ComGoogleCommonBaseEnums

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonBaseEnums_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (JavaLangReflectField *)getFieldWithJavaLangEnum:(JavaLangEnum *)enumValue {
  return ComGoogleCommonBaseEnums_getFieldWithJavaLangEnum_(enumValue);
}

+ (ComGoogleCommonBaseOptional *)getIfPresentWithIOSClass:(IOSClass *)enumClass
                                             withNSString:(NSString *)value {
  return ComGoogleCommonBaseEnums_getIfPresentWithIOSClass_withNSString_(enumClass, value);
}

+ (id<JavaUtilMap>)populateCacheWithIOSClass:(IOSClass *)enumClass {
  return ComGoogleCommonBaseEnums_populateCacheWithIOSClass_(enumClass);
}

+ (id<JavaUtilMap>)getEnumConstantsWithIOSClass:(IOSClass *)enumClass {
  return ComGoogleCommonBaseEnums_getEnumConstantsWithIOSClass_(enumClass);
}

+ (ComGoogleCommonBaseConverter *)stringConverterWithIOSClass:(IOSClass *)enumClass {
  return ComGoogleCommonBaseEnums_stringConverterWithIOSClass_(enumClass);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangReflectField;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "LComGoogleCommonBaseOptional;", 0x9, 3, 4, -1, 5, -1, -1 },
    { NULL, "LJavaUtilMap;", 0xa, 6, 7, -1, 8, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x8, 9, 7, -1, 8, -1, -1 },
    { NULL, "LComGoogleCommonBaseConverter;", 0x9, 10, 7, -1, 11, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getFieldWithJavaLangEnum:);
  methods[2].selector = @selector(getIfPresentWithIOSClass:withNSString:);
  methods[3].selector = @selector(populateCacheWithIOSClass:);
  methods[4].selector = @selector(getEnumConstantsWithIOSClass:);
  methods[5].selector = @selector(stringConverterWithIOSClass:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "enumConstantCache", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 12, 13, -1 },
  };
  static const void *ptrTable[] = { "getField", "LJavaLangEnum;", "(Ljava/lang/Enum<*>;)Ljava/lang/reflect/Field;", "getIfPresent", "LIOSClass;LNSString;", "<T:Ljava/lang/Enum<TT;>;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)Lcom/google/common/base/Optional<TT;>;", "populateCache", "LIOSClass;", "<T:Ljava/lang/Enum<TT;>;>(Ljava/lang/Class<TT;>;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<+Ljava/lang/Enum<*>;>;>;", "getEnumConstants", "stringConverter", "<T:Ljava/lang/Enum<TT;>;>(Ljava/lang/Class<TT;>;)Lcom/google/common/base/Converter<Ljava/lang/String;TT;>;", &ComGoogleCommonBaseEnums_enumConstantCache, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/Enum<*>;>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<+Ljava/lang/Enum<*>;>;>;>;", "LComGoogleCommonBaseEnums_StringConverter;" };
  static const J2ObjcClassInfo _ComGoogleCommonBaseEnums = { "Enums", "com.google.common.base", ptrTable, methods, fields, 7, 0x11, 6, 1, -1, 14, -1, -1, -1 };
  return &_ComGoogleCommonBaseEnums;
}

+ (void)initialize {
  if (self == [ComGoogleCommonBaseEnums class]) {
    ComGoogleCommonBaseEnums_enumConstantCache = new_JavaUtilWeakHashMap_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonBaseEnums)
  }
}

@end

void ComGoogleCommonBaseEnums_init(ComGoogleCommonBaseEnums *self) {
  NSObject_init(self);
}

ComGoogleCommonBaseEnums *new_ComGoogleCommonBaseEnums_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonBaseEnums, init)
}

ComGoogleCommonBaseEnums *create_ComGoogleCommonBaseEnums_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonBaseEnums, init)
}

JavaLangReflectField *ComGoogleCommonBaseEnums_getFieldWithJavaLangEnum_(JavaLangEnum *enumValue) {
  ComGoogleCommonBaseEnums_initialize();
  IOSClass *clazz = [((JavaLangEnum *) nil_chk(enumValue)) getDeclaringClass];
  @try {
    return [((IOSClass *) nil_chk(clazz)) getDeclaredField:[enumValue name]];
  }
  @catch (JavaLangNoSuchFieldException *impossible) {
    @throw new_JavaLangAssertionError_initWithId_(impossible);
  }
}

ComGoogleCommonBaseOptional *ComGoogleCommonBaseEnums_getIfPresentWithIOSClass_withNSString_(IOSClass *enumClass, NSString *value) {
  ComGoogleCommonBaseEnums_initialize();
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(enumClass);
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(value);
  return ComGoogleCommonBasePlatform_getEnumIfPresentWithIOSClass_withNSString_(enumClass, value);
}

id<JavaUtilMap> ComGoogleCommonBaseEnums_populateCacheWithIOSClass_(IOSClass *enumClass) {
  ComGoogleCommonBaseEnums_initialize();
  id<JavaUtilMap> result = new_JavaUtilHashMap_init();
  for (JavaLangEnum * __strong enumInstance in nil_chk(JavaUtilEnumSet_allOfWithIOSClass_(enumClass))) {
    (void) [result putWithId:[((JavaLangEnum *) nil_chk(enumInstance)) name] withId:new_JavaLangRefWeakReference_initWithId_(enumInstance)];
  }
  (void) [((id<JavaUtilMap>) nil_chk(ComGoogleCommonBaseEnums_enumConstantCache)) putWithId:enumClass withId:result];
  return result;
}

id<JavaUtilMap> ComGoogleCommonBaseEnums_getEnumConstantsWithIOSClass_(IOSClass *enumClass) {
  ComGoogleCommonBaseEnums_initialize();
  @synchronized(ComGoogleCommonBaseEnums_enumConstantCache) {
    id<JavaUtilMap> constants = [((id<JavaUtilMap>) nil_chk(ComGoogleCommonBaseEnums_enumConstantCache)) getWithId:enumClass];
    if (constants == nil) {
      constants = ComGoogleCommonBaseEnums_populateCacheWithIOSClass_(enumClass);
    }
    return constants;
  }
}

ComGoogleCommonBaseConverter *ComGoogleCommonBaseEnums_stringConverterWithIOSClass_(IOSClass *enumClass) {
  ComGoogleCommonBaseEnums_initialize();
  return new_ComGoogleCommonBaseEnums_StringConverter_initWithIOSClass_(enumClass);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonBaseEnums)

@implementation ComGoogleCommonBaseEnums_StringConverter

- (instancetype)initWithIOSClass:(IOSClass *)enumClass {
  ComGoogleCommonBaseEnums_StringConverter_initWithIOSClass_(self, enumClass);
  return self;
}

- (JavaLangEnum *)doForwardWithId:(NSString *)value {
  return JavaLangEnum_valueOfWithIOSClass_withNSString_(enumClass_, value);
}

- (NSString *)doBackwardWithId:(JavaLangEnum *)enumValue {
  return [((JavaLangEnum *) nil_chk(enumValue)) name];
}

- (jboolean)isEqual:(id)object {
  if ([object isKindOfClass:[ComGoogleCommonBaseEnums_StringConverter class]]) {
    ComGoogleCommonBaseEnums_StringConverter *that = (ComGoogleCommonBaseEnums_StringConverter *) cast_chk(object, [ComGoogleCommonBaseEnums_StringConverter class]);
    return [((IOSClass *) nil_chk(self->enumClass_)) isEqual:((ComGoogleCommonBaseEnums_StringConverter *) nil_chk(that))->enumClass_];
  }
  return false;
}

- (NSUInteger)hash {
  return ((jint) [((IOSClass *) nil_chk(enumClass_)) hash]);
}

- (NSString *)description {
  return JreStrcat("$$$", @"Enums.stringConverter(", [((IOSClass *) nil_chk(enumClass_)) getName], @".class)");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LJavaLangEnum;", 0x4, 2, 3, -1, 4, -1, -1 },
    { NULL, "LNSString;", 0x4, 5, 6, -1, 7, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, 10 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 12, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithIOSClass:);
  methods[1].selector = @selector(doForwardWithId:);
  methods[2].selector = @selector(doBackwardWithId:);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "enumClass_", "LIOSClass;", .constantValue.asLong = 0, 0x12, -1, -1, 13, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonBaseEnums_StringConverter_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LIOSClass;", "(Ljava/lang/Class<TT;>;)V", "doForward", "LNSString;", "(Ljava/lang/String;)TT;", "doBackward", "LJavaLangEnum;", "(TT;)Ljava/lang/String;", "equals", "LNSObject;", (void *)&ComGoogleCommonBaseEnums_StringConverter__Annotations$0, "hashCode", "toString", "Ljava/lang/Class<TT;>;", "LComGoogleCommonBaseEnums;", "<T:Ljava/lang/Enum<TT;>;>Lcom/google/common/base/Converter<Ljava/lang/String;TT;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _ComGoogleCommonBaseEnums_StringConverter = { "StringConverter", "com.google.common.base", ptrTable, methods, fields, 7, 0x1a, 6, 2, 14, -1, -1, 15, -1 };
  return &_ComGoogleCommonBaseEnums_StringConverter;
}

@end

void ComGoogleCommonBaseEnums_StringConverter_initWithIOSClass_(ComGoogleCommonBaseEnums_StringConverter *self, IOSClass *enumClass) {
  ComGoogleCommonBaseConverter_init(self);
  self->enumClass_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(enumClass);
}

ComGoogleCommonBaseEnums_StringConverter *new_ComGoogleCommonBaseEnums_StringConverter_initWithIOSClass_(IOSClass *enumClass) {
  J2OBJC_NEW_IMPL(ComGoogleCommonBaseEnums_StringConverter, initWithIOSClass_, enumClass)
}

ComGoogleCommonBaseEnums_StringConverter *create_ComGoogleCommonBaseEnums_StringConverter_initWithIOSClass_(IOSClass *enumClass) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonBaseEnums_StringConverter, initWithIOSClass_, enumClass)
}

IOSObjectArray *ComGoogleCommonBaseEnums_StringConverter__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonBaseEnums_StringConverter)
