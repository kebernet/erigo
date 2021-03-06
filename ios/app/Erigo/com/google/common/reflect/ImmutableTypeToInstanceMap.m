//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/reflect/ImmutableTypeToInstanceMap.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/collect/ForwardingMap.h"
#include "com/google/common/collect/ImmutableMap.h"
#include "com/google/common/reflect/ImmutableTypeToInstanceMap.h"
#include "com/google/common/reflect/TypeToken.h"
#include "java/lang/Deprecated.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Map.h"

@interface ComGoogleCommonReflectImmutableTypeToInstanceMap () {
 @public
  ComGoogleCommonCollectImmutableMap *delegate_;
}

- (instancetype)initWithComGoogleCommonCollectImmutableMap:(ComGoogleCommonCollectImmutableMap *)delegate;

- (id)trustedGetWithComGoogleCommonReflectTypeToken:(ComGoogleCommonReflectTypeToken *)type;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonReflectImmutableTypeToInstanceMap, delegate_, ComGoogleCommonCollectImmutableMap *)

__attribute__((unused)) static void ComGoogleCommonReflectImmutableTypeToInstanceMap_initWithComGoogleCommonCollectImmutableMap_(ComGoogleCommonReflectImmutableTypeToInstanceMap *self, ComGoogleCommonCollectImmutableMap *delegate);

__attribute__((unused)) static ComGoogleCommonReflectImmutableTypeToInstanceMap *new_ComGoogleCommonReflectImmutableTypeToInstanceMap_initWithComGoogleCommonCollectImmutableMap_(ComGoogleCommonCollectImmutableMap *delegate) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonReflectImmutableTypeToInstanceMap *create_ComGoogleCommonReflectImmutableTypeToInstanceMap_initWithComGoogleCommonCollectImmutableMap_(ComGoogleCommonCollectImmutableMap *delegate);

__attribute__((unused)) static id ComGoogleCommonReflectImmutableTypeToInstanceMap_trustedGetWithComGoogleCommonReflectTypeToken_(ComGoogleCommonReflectImmutableTypeToInstanceMap *self, ComGoogleCommonReflectTypeToken *type);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$1();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$2();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$3();

@interface ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder () {
 @public
  ComGoogleCommonCollectImmutableMap_Builder *mapBuilder_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder, mapBuilder_, ComGoogleCommonCollectImmutableMap_Builder *)

__attribute__((unused)) static void ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder_init(ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder *self);

__attribute__((unused)) static ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder *new_ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder *create_ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder_init();

@implementation ComGoogleCommonReflectImmutableTypeToInstanceMap

+ (ComGoogleCommonReflectImmutableTypeToInstanceMap *)of {
  return ComGoogleCommonReflectImmutableTypeToInstanceMap_of();
}

+ (ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder *)builder {
  return ComGoogleCommonReflectImmutableTypeToInstanceMap_builder();
}

- (instancetype)initWithComGoogleCommonCollectImmutableMap:(ComGoogleCommonCollectImmutableMap *)delegate {
  ComGoogleCommonReflectImmutableTypeToInstanceMap_initWithComGoogleCommonCollectImmutableMap_(self, delegate);
  return self;
}

- (id)getInstanceWithComGoogleCommonReflectTypeToken:(ComGoogleCommonReflectTypeToken *)type {
  return ComGoogleCommonReflectImmutableTypeToInstanceMap_trustedGetWithComGoogleCommonReflectTypeToken_(self, [((ComGoogleCommonReflectTypeToken *) nil_chk(type)) rejectTypeVariables]);
}

- (id)putInstanceWithComGoogleCommonReflectTypeToken:(ComGoogleCommonReflectTypeToken *)type
                                              withId:(id)value {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (id)getInstanceWithIOSClass:(IOSClass *)type {
  return ComGoogleCommonReflectImmutableTypeToInstanceMap_trustedGetWithComGoogleCommonReflectTypeToken_(self, ComGoogleCommonReflectTypeToken_ofWithIOSClass_(type));
}

- (id)putInstanceWithIOSClass:(IOSClass *)type
                       withId:(id)value {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (id)putWithId:(ComGoogleCommonReflectTypeToken *)key
         withId:(id)value {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (id<JavaUtilMap>)delegate {
  return delegate_;
}

- (id)trustedGetWithComGoogleCommonReflectTypeToken:(ComGoogleCommonReflectTypeToken *)type {
  return ComGoogleCommonReflectImmutableTypeToInstanceMap_trustedGetWithComGoogleCommonReflectTypeToken_(self, type);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComGoogleCommonReflectImmutableTypeToInstanceMap;", 0x9, -1, -1, -1, 0, -1, -1 },
    { NULL, "LComGoogleCommonReflectImmutableTypeToInstanceMap_Builder;", 0x9, -1, -1, -1, 1, -1, -1 },
    { NULL, NULL, 0x2, -1, 2, -1, 3, -1, -1 },
    { NULL, "LNSObject;", 0x1, 4, 5, -1, 6, -1, -1 },
    { NULL, "LNSObject;", 0x1, 7, 8, -1, 9, 10, -1 },
    { NULL, "LNSObject;", 0x1, 4, 11, -1, 12, -1, -1 },
    { NULL, "LNSObject;", 0x1, 7, 13, -1, 14, 15, -1 },
    { NULL, "LNSObject;", 0x1, 16, 8, -1, 17, 18, -1 },
    { NULL, "V", 0x1, 19, 20, -1, 21, 22, -1 },
    { NULL, "LJavaUtilMap;", 0x4, -1, -1, -1, 23, -1, -1 },
    { NULL, "LNSObject;", 0x2, 24, 5, -1, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(of);
  methods[1].selector = @selector(builder);
  methods[2].selector = @selector(initWithComGoogleCommonCollectImmutableMap:);
  methods[3].selector = @selector(getInstanceWithComGoogleCommonReflectTypeToken:);
  methods[4].selector = @selector(putInstanceWithComGoogleCommonReflectTypeToken:withId:);
  methods[5].selector = @selector(getInstanceWithIOSClass:);
  methods[6].selector = @selector(putInstanceWithIOSClass:withId:);
  methods[7].selector = @selector(putWithId:withId:);
  methods[8].selector = @selector(putAllWithJavaUtilMap:);
  methods[9].selector = @selector(delegate);
  methods[10].selector = @selector(trustedGetWithComGoogleCommonReflectTypeToken:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LComGoogleCommonCollectImmutableMap;", .constantValue.asLong = 0, 0x12, -1, -1, 25, -1 },
  };
  static const void *ptrTable[] = { "<B:Ljava/lang/Object;>()Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;", "<B:Ljava/lang/Object;>()Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder<TB;>;", "LComGoogleCommonCollectImmutableMap;", "(Lcom/google/common/collect/ImmutableMap<Lcom/google/common/reflect/TypeToken<+TB;>;TB;>;)V", "getInstance", "LComGoogleCommonReflectTypeToken;", "<T:TB;>(Lcom/google/common/reflect/TypeToken<TT;>;)TT;", "putInstance", "LComGoogleCommonReflectTypeToken;LNSObject;", "<T:TB;>(Lcom/google/common/reflect/TypeToken<TT;>;TT;)TT;", (void *)&ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$0, "LIOSClass;", "<T:TB;>(Ljava/lang/Class<TT;>;)TT;", "LIOSClass;LNSObject;", "<T:TB;>(Ljava/lang/Class<TT;>;TT;)TT;", (void *)&ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$1, "put", "(Lcom/google/common/reflect/TypeToken<+TB;>;TB;)TB;", (void *)&ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$2, "putAll", "LJavaUtilMap;", "(Ljava/util/Map<+Lcom/google/common/reflect/TypeToken<+TB;>;+TB;>;)V", (void *)&ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$3, "()Ljava/util/Map<Lcom/google/common/reflect/TypeToken<+TB;>;TB;>;", "trustedGet", "Lcom/google/common/collect/ImmutableMap<Lcom/google/common/reflect/TypeToken<+TB;>;TB;>;", "LComGoogleCommonReflectImmutableTypeToInstanceMap_Builder;", "<B:Ljava/lang/Object;>Lcom/google/common/collect/ForwardingMap<Lcom/google/common/reflect/TypeToken<+TB;>;TB;>;Lcom/google/common/reflect/TypeToInstanceMap<TB;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonReflectImmutableTypeToInstanceMap = { "ImmutableTypeToInstanceMap", "com.google.common.reflect", ptrTable, methods, fields, 7, 0x11, 11, 1, -1, 26, -1, 27, -1 };
  return &_ComGoogleCommonReflectImmutableTypeToInstanceMap;
}

@end

ComGoogleCommonReflectImmutableTypeToInstanceMap *ComGoogleCommonReflectImmutableTypeToInstanceMap_of() {
  ComGoogleCommonReflectImmutableTypeToInstanceMap_initialize();
  return new_ComGoogleCommonReflectImmutableTypeToInstanceMap_initWithComGoogleCommonCollectImmutableMap_(ComGoogleCommonCollectImmutableMap_of());
}

ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder *ComGoogleCommonReflectImmutableTypeToInstanceMap_builder() {
  ComGoogleCommonReflectImmutableTypeToInstanceMap_initialize();
  return new_ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder_init();
}

void ComGoogleCommonReflectImmutableTypeToInstanceMap_initWithComGoogleCommonCollectImmutableMap_(ComGoogleCommonReflectImmutableTypeToInstanceMap *self, ComGoogleCommonCollectImmutableMap *delegate) {
  ComGoogleCommonCollectForwardingMap_init(self);
  self->delegate_ = delegate;
}

ComGoogleCommonReflectImmutableTypeToInstanceMap *new_ComGoogleCommonReflectImmutableTypeToInstanceMap_initWithComGoogleCommonCollectImmutableMap_(ComGoogleCommonCollectImmutableMap *delegate) {
  J2OBJC_NEW_IMPL(ComGoogleCommonReflectImmutableTypeToInstanceMap, initWithComGoogleCommonCollectImmutableMap_, delegate)
}

ComGoogleCommonReflectImmutableTypeToInstanceMap *create_ComGoogleCommonReflectImmutableTypeToInstanceMap_initWithComGoogleCommonCollectImmutableMap_(ComGoogleCommonCollectImmutableMap *delegate) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonReflectImmutableTypeToInstanceMap, initWithComGoogleCommonCollectImmutableMap_, delegate)
}

id ComGoogleCommonReflectImmutableTypeToInstanceMap_trustedGetWithComGoogleCommonReflectTypeToken_(ComGoogleCommonReflectImmutableTypeToInstanceMap *self, ComGoogleCommonReflectTypeToken *type) {
  return [((ComGoogleCommonCollectImmutableMap *) nil_chk(self->delegate_)) getWithId:type];
}

IOSObjectArray *ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonReflectImmutableTypeToInstanceMap__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonReflectImmutableTypeToInstanceMap)

@implementation ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder *)putWithIOSClass:(IOSClass *)key
                                                                       withId:(id)value {
  (void) [((ComGoogleCommonCollectImmutableMap_Builder *) nil_chk(mapBuilder_)) putWithId:ComGoogleCommonReflectTypeToken_ofWithIOSClass_(key) withId:value];
  return self;
}

- (ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder *)putWithComGoogleCommonReflectTypeToken:(ComGoogleCommonReflectTypeToken *)key
                                                                                              withId:(id)value {
  (void) [((ComGoogleCommonCollectImmutableMap_Builder *) nil_chk(mapBuilder_)) putWithId:[((ComGoogleCommonReflectTypeToken *) nil_chk(key)) rejectTypeVariables] withId:value];
  return self;
}

- (ComGoogleCommonReflectImmutableTypeToInstanceMap *)build {
  return new_ComGoogleCommonReflectImmutableTypeToInstanceMap_initWithComGoogleCommonCollectImmutableMap_([((ComGoogleCommonCollectImmutableMap_Builder *) nil_chk(mapBuilder_)) build]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonReflectImmutableTypeToInstanceMap_Builder;", 0x1, 0, 1, -1, 2, -1, -1 },
    { NULL, "LComGoogleCommonReflectImmutableTypeToInstanceMap_Builder;", 0x1, 0, 3, -1, 4, -1, -1 },
    { NULL, "LComGoogleCommonReflectImmutableTypeToInstanceMap;", 0x1, -1, -1, -1, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(putWithIOSClass:withId:);
  methods[2].selector = @selector(putWithComGoogleCommonReflectTypeToken:withId:);
  methods[3].selector = @selector(build);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mapBuilder_", "LComGoogleCommonCollectImmutableMap_Builder;", .constantValue.asLong = 0, 0x12, -1, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "put", "LIOSClass;LNSObject;", "<T:TB;>(Ljava/lang/Class<TT;>;TT;)Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder<TB;>;", "LComGoogleCommonReflectTypeToken;LNSObject;", "<T:TB;>(Lcom/google/common/reflect/TypeToken<TT;>;TT;)Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder<TB;>;", "()Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;", "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/common/reflect/TypeToken<+TB;>;TB;>;", "LComGoogleCommonReflectImmutableTypeToInstanceMap;", "<B:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder = { "Builder", "com.google.common.reflect", ptrTable, methods, fields, 7, 0x19, 4, 1, 7, -1, -1, 8, -1 };
  return &_ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder;
}

@end

void ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder_init(ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder *self) {
  NSObject_init(self);
  self->mapBuilder_ = ComGoogleCommonCollectImmutableMap_builder();
}

ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder *new_ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder, init)
}

ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder *create_ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonReflectImmutableTypeToInstanceMap_Builder)
