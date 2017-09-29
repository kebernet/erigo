//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/MoreCollectors.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/collect/MoreCollectors.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/Optional.h"
#include "java/util/function/BiConsumer.h"
#include "java/util/function/BiFunction.h"
#include "java/util/function/BinaryOperator.h"
#include "java/util/function/Function.h"
#include "java/util/function/Supplier.h"
#include "java/util/stream/Collector.h"
#include "javax/annotation/Nullable.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface ComGoogleCommonCollectMoreCollectors ()

- (instancetype)init;

@end

inline id<JavaUtilStreamCollector> ComGoogleCommonCollectMoreCollectors_get_TO_OPTIONAL();
static id<JavaUtilStreamCollector> ComGoogleCommonCollectMoreCollectors_TO_OPTIONAL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors, TO_OPTIONAL, id<JavaUtilStreamCollector>)

inline id ComGoogleCommonCollectMoreCollectors_get_NULL_PLACEHOLDER();
static id ComGoogleCommonCollectMoreCollectors_NULL_PLACEHOLDER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors, NULL_PLACEHOLDER, id)

inline id<JavaUtilStreamCollector> ComGoogleCommonCollectMoreCollectors_get_ONLY_ELEMENT();
static id<JavaUtilStreamCollector> ComGoogleCommonCollectMoreCollectors_ONLY_ELEMENT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors, ONLY_ELEMENT, id<JavaUtilStreamCollector>)

__attribute__((unused)) static void ComGoogleCommonCollectMoreCollectors_init(ComGoogleCommonCollectMoreCollectors *self);

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors *new_ComGoogleCommonCollectMoreCollectors_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors *create_ComGoogleCommonCollectMoreCollectors_init();

@interface ComGoogleCommonCollectMoreCollectors_ToOptionalState : NSObject {
 @public
  id element_;
  id<JavaUtilList> extras_;
}

- (instancetype)init;

- (JavaLangIllegalArgumentException *)multiplesWithBoolean:(jboolean)overflow;

- (void)addWithId:(id)o;

- (ComGoogleCommonCollectMoreCollectors_ToOptionalState *)combineWithComGoogleCommonCollectMoreCollectors_ToOptionalState:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)other;

- (JavaUtilOptional *)getOptional;

- (id)getElement;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectMoreCollectors_ToOptionalState)

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectMoreCollectors_ToOptionalState, element_, id)
J2OBJC_FIELD_SETTER(ComGoogleCommonCollectMoreCollectors_ToOptionalState, extras_, id<JavaUtilList>)

inline jint ComGoogleCommonCollectMoreCollectors_ToOptionalState_get_MAX_EXTRAS();
#define ComGoogleCommonCollectMoreCollectors_ToOptionalState_MAX_EXTRAS 4
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonCollectMoreCollectors_ToOptionalState, MAX_EXTRAS, jint)

__attribute__((unused)) static void ComGoogleCommonCollectMoreCollectors_ToOptionalState_init(ComGoogleCommonCollectMoreCollectors_ToOptionalState *self);

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_ToOptionalState *new_ComGoogleCommonCollectMoreCollectors_ToOptionalState_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_ToOptionalState *create_ComGoogleCommonCollectMoreCollectors_ToOptionalState_init();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectMoreCollectors_ToOptionalState__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectMoreCollectors_ToOptionalState__Annotations$1();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectMoreCollectors_ToOptionalState)

@interface ComGoogleCommonCollectMoreCollectors_$Lambda$1 : NSObject < JavaUtilFunctionSupplier >

- (id)get;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonCollectMoreCollectors_$Lambda$1)

inline ComGoogleCommonCollectMoreCollectors_$Lambda$1 *ComGoogleCommonCollectMoreCollectors_$Lambda$1_get_instance();
static ComGoogleCommonCollectMoreCollectors_$Lambda$1 *ComGoogleCommonCollectMoreCollectors_$Lambda$1_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors_$Lambda$1, instance, ComGoogleCommonCollectMoreCollectors_$Lambda$1 *)

__attribute__((unused)) static void ComGoogleCommonCollectMoreCollectors_$Lambda$1_init(ComGoogleCommonCollectMoreCollectors_$Lambda$1 *self);

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$1 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$1 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$1_init();

@interface ComGoogleCommonCollectMoreCollectors_$Lambda$2 : NSObject < JavaUtilFunctionBiConsumer >

- (void)acceptWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)a
              withId:(id)b;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonCollectMoreCollectors_$Lambda$2)

inline ComGoogleCommonCollectMoreCollectors_$Lambda$2 *ComGoogleCommonCollectMoreCollectors_$Lambda$2_get_instance();
static ComGoogleCommonCollectMoreCollectors_$Lambda$2 *ComGoogleCommonCollectMoreCollectors_$Lambda$2_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors_$Lambda$2, instance, ComGoogleCommonCollectMoreCollectors_$Lambda$2 *)

__attribute__((unused)) static void ComGoogleCommonCollectMoreCollectors_$Lambda$2_init(ComGoogleCommonCollectMoreCollectors_$Lambda$2 *self);

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$2 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$2_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$2 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$2_init();

@interface ComGoogleCommonCollectMoreCollectors_$Lambda$3 : NSObject < JavaUtilFunctionBinaryOperator >

- (id)applyWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)a
           withId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)b;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonCollectMoreCollectors_$Lambda$3)

inline ComGoogleCommonCollectMoreCollectors_$Lambda$3 *ComGoogleCommonCollectMoreCollectors_$Lambda$3_get_instance();
static ComGoogleCommonCollectMoreCollectors_$Lambda$3 *ComGoogleCommonCollectMoreCollectors_$Lambda$3_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors_$Lambda$3, instance, ComGoogleCommonCollectMoreCollectors_$Lambda$3 *)

__attribute__((unused)) static void ComGoogleCommonCollectMoreCollectors_$Lambda$3_init(ComGoogleCommonCollectMoreCollectors_$Lambda$3 *self);

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$3 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$3_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$3 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$3_init();

@interface ComGoogleCommonCollectMoreCollectors_$Lambda$4 : NSObject < JavaUtilFunctionFunction >

- (id)applyWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)a;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonCollectMoreCollectors_$Lambda$4)

inline ComGoogleCommonCollectMoreCollectors_$Lambda$4 *ComGoogleCommonCollectMoreCollectors_$Lambda$4_get_instance();
static ComGoogleCommonCollectMoreCollectors_$Lambda$4 *ComGoogleCommonCollectMoreCollectors_$Lambda$4_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors_$Lambda$4, instance, ComGoogleCommonCollectMoreCollectors_$Lambda$4 *)

__attribute__((unused)) static void ComGoogleCommonCollectMoreCollectors_$Lambda$4_init(ComGoogleCommonCollectMoreCollectors_$Lambda$4 *self);

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$4 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$4_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$4 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$4_init();

@interface ComGoogleCommonCollectMoreCollectors_$Lambda$5 : NSObject < JavaUtilFunctionSupplier >

- (id)get;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonCollectMoreCollectors_$Lambda$5)

inline ComGoogleCommonCollectMoreCollectors_$Lambda$5 *ComGoogleCommonCollectMoreCollectors_$Lambda$5_get_instance();
static ComGoogleCommonCollectMoreCollectors_$Lambda$5 *ComGoogleCommonCollectMoreCollectors_$Lambda$5_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors_$Lambda$5, instance, ComGoogleCommonCollectMoreCollectors_$Lambda$5 *)

__attribute__((unused)) static void ComGoogleCommonCollectMoreCollectors_$Lambda$5_init(ComGoogleCommonCollectMoreCollectors_$Lambda$5 *self);

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$5 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$5_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$5 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$5_init();

@interface ComGoogleCommonCollectMoreCollectors_$Lambda$6 : NSObject < JavaUtilFunctionBiConsumer >

- (void)acceptWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)state
              withId:(id)o;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonCollectMoreCollectors_$Lambda$6)

inline ComGoogleCommonCollectMoreCollectors_$Lambda$6 *ComGoogleCommonCollectMoreCollectors_$Lambda$6_get_instance();
static ComGoogleCommonCollectMoreCollectors_$Lambda$6 *ComGoogleCommonCollectMoreCollectors_$Lambda$6_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors_$Lambda$6, instance, ComGoogleCommonCollectMoreCollectors_$Lambda$6 *)

__attribute__((unused)) static void ComGoogleCommonCollectMoreCollectors_$Lambda$6_init(ComGoogleCommonCollectMoreCollectors_$Lambda$6 *self);

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$6 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$6_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$6 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$6_init();

@interface ComGoogleCommonCollectMoreCollectors_$Lambda$7 : NSObject < JavaUtilFunctionBinaryOperator >

- (id)applyWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)a
           withId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)b;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonCollectMoreCollectors_$Lambda$7)

inline ComGoogleCommonCollectMoreCollectors_$Lambda$7 *ComGoogleCommonCollectMoreCollectors_$Lambda$7_get_instance();
static ComGoogleCommonCollectMoreCollectors_$Lambda$7 *ComGoogleCommonCollectMoreCollectors_$Lambda$7_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors_$Lambda$7, instance, ComGoogleCommonCollectMoreCollectors_$Lambda$7 *)

__attribute__((unused)) static void ComGoogleCommonCollectMoreCollectors_$Lambda$7_init(ComGoogleCommonCollectMoreCollectors_$Lambda$7 *self);

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$7 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$7_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$7 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$7_init();

@interface ComGoogleCommonCollectMoreCollectors_$Lambda$8 : NSObject < JavaUtilFunctionFunction >

- (id)applyWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)state;

@end

J2OBJC_STATIC_INIT(ComGoogleCommonCollectMoreCollectors_$Lambda$8)

inline ComGoogleCommonCollectMoreCollectors_$Lambda$8 *ComGoogleCommonCollectMoreCollectors_$Lambda$8_get_instance();
static ComGoogleCommonCollectMoreCollectors_$Lambda$8 *ComGoogleCommonCollectMoreCollectors_$Lambda$8_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonCollectMoreCollectors_$Lambda$8, instance, ComGoogleCommonCollectMoreCollectors_$Lambda$8 *)

__attribute__((unused)) static void ComGoogleCommonCollectMoreCollectors_$Lambda$8_init(ComGoogleCommonCollectMoreCollectors_$Lambda$8 *self);

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$8 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$8_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonCollectMoreCollectors_$Lambda$8 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$8_init();

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectMoreCollectors)

@implementation ComGoogleCommonCollectMoreCollectors

+ (id<JavaUtilStreamCollector>)toOptional {
  return ComGoogleCommonCollectMoreCollectors_toOptional();
}

+ (id<JavaUtilStreamCollector>)onlyElement {
  return ComGoogleCommonCollectMoreCollectors_onlyElement();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCollectMoreCollectors_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LJavaUtilStreamCollector;", 0x9, -1, -1, -1, 0, -1, -1 },
    { NULL, "LJavaUtilStreamCollector;", 0x9, -1, -1, -1, 1, -1, -1 },
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(toOptional);
  methods[1].selector = @selector(onlyElement);
  methods[2].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TO_OPTIONAL", "LJavaUtilStreamCollector;", .constantValue.asLong = 0, 0x1a, -1, 2, 3, -1 },
    { "NULL_PLACEHOLDER", "LNSObject;", .constantValue.asLong = 0, 0x1a, -1, 4, -1, -1 },
    { "ONLY_ELEMENT", "LJavaUtilStreamCollector;", .constantValue.asLong = 0, 0x1a, -1, 5, 6, -1 },
  };
  static const void *ptrTable[] = { "<T:Ljava/lang/Object;>()Ljava/util/stream/Collector<TT;*Ljava/util/Optional<TT;>;>;", "<T:Ljava/lang/Object;>()Ljava/util/stream/Collector<TT;*TT;>;", &ComGoogleCommonCollectMoreCollectors_TO_OPTIONAL, "Ljava/util/stream/Collector<Ljava/lang/Object;*Ljava/util/Optional<Ljava/lang/Object;>;>;", &ComGoogleCommonCollectMoreCollectors_NULL_PLACEHOLDER, &ComGoogleCommonCollectMoreCollectors_ONLY_ELEMENT, "Ljava/util/stream/Collector<Ljava/lang/Object;*Ljava/lang/Object;>;", "LComGoogleCommonCollectMoreCollectors_ToOptionalState;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectMoreCollectors = { "MoreCollectors", "com.google.common.collect", ptrTable, methods, fields, 7, 0x11, 3, 3, -1, 7, -1, -1, -1 };
  return &_ComGoogleCommonCollectMoreCollectors;
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectMoreCollectors class]) {
    ComGoogleCommonCollectMoreCollectors_TO_OPTIONAL = JavaUtilStreamCollector_ofWithJavaUtilFunctionSupplier_withJavaUtilFunctionBiConsumer_withJavaUtilFunctionBinaryOperator_withJavaUtilFunctionFunction_withJavaUtilStreamCollector_CharacteristicsArray_(JreLoadStatic(ComGoogleCommonCollectMoreCollectors_$Lambda$1, instance), JreLoadStatic(ComGoogleCommonCollectMoreCollectors_$Lambda$2, instance), JreLoadStatic(ComGoogleCommonCollectMoreCollectors_$Lambda$3, instance), JreLoadStatic(ComGoogleCommonCollectMoreCollectors_$Lambda$4, instance), [IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaUtilStreamCollector_Characteristics, UNORDERED) } count:1 type:JavaUtilStreamCollector_Characteristics_class_()]);
    ComGoogleCommonCollectMoreCollectors_NULL_PLACEHOLDER = new_NSObject_init();
    ComGoogleCommonCollectMoreCollectors_ONLY_ELEMENT = JavaUtilStreamCollector_ofWithJavaUtilFunctionSupplier_withJavaUtilFunctionBiConsumer_withJavaUtilFunctionBinaryOperator_withJavaUtilFunctionFunction_withJavaUtilStreamCollector_CharacteristicsArray_(JreLoadStatic(ComGoogleCommonCollectMoreCollectors_$Lambda$5, instance), JreLoadStatic(ComGoogleCommonCollectMoreCollectors_$Lambda$6, instance), JreLoadStatic(ComGoogleCommonCollectMoreCollectors_$Lambda$7, instance), JreLoadStatic(ComGoogleCommonCollectMoreCollectors_$Lambda$8, instance), [IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaUtilStreamCollector_Characteristics, UNORDERED) } count:1 type:JavaUtilStreamCollector_Characteristics_class_()]);
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectMoreCollectors)
  }
}

@end

id<JavaUtilStreamCollector> ComGoogleCommonCollectMoreCollectors_toOptional() {
  ComGoogleCommonCollectMoreCollectors_initialize();
  return ComGoogleCommonCollectMoreCollectors_TO_OPTIONAL;
}

id<JavaUtilStreamCollector> ComGoogleCommonCollectMoreCollectors_onlyElement() {
  ComGoogleCommonCollectMoreCollectors_initialize();
  return ComGoogleCommonCollectMoreCollectors_ONLY_ELEMENT;
}

void ComGoogleCommonCollectMoreCollectors_init(ComGoogleCommonCollectMoreCollectors *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectMoreCollectors *new_ComGoogleCommonCollectMoreCollectors_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectMoreCollectors, init)
}

ComGoogleCommonCollectMoreCollectors *create_ComGoogleCommonCollectMoreCollectors_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectMoreCollectors, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectMoreCollectors)

@implementation ComGoogleCommonCollectMoreCollectors_ToOptionalState

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCollectMoreCollectors_ToOptionalState_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaLangIllegalArgumentException *)multiplesWithBoolean:(jboolean)overflow {
  JavaLangStringBuilder *sb = [((JavaLangStringBuilder *) nil_chk([new_JavaLangStringBuilder_init() appendWithNSString:@"expected one element but was: <"])) appendWithId:element_];
  for (id __strong o in nil_chk(extras_)) {
    (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@", "])) appendWithId:o];
  }
  if (overflow) {
    (void) [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@", ..."];
  }
  (void) [((JavaLangStringBuilder *) nil_chk(sb)) appendWithChar:'>'];
  @throw new_JavaLangIllegalArgumentException_initWithNSString_([sb description]);
}

- (void)addWithId:(id)o {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(o);
  if (element_ == nil) {
    self->element_ = o;
  }
  else if (extras_ == nil) {
    extras_ = new_JavaUtilArrayList_initWithInt_(ComGoogleCommonCollectMoreCollectors_ToOptionalState_MAX_EXTRAS);
    [extras_ addWithId:o];
  }
  else if ([extras_ size] < ComGoogleCommonCollectMoreCollectors_ToOptionalState_MAX_EXTRAS) {
    [((id<JavaUtilList>) nil_chk(extras_)) addWithId:o];
  }
  else {
    @throw nil_chk([self multiplesWithBoolean:true]);
  }
}

- (ComGoogleCommonCollectMoreCollectors_ToOptionalState *)combineWithComGoogleCommonCollectMoreCollectors_ToOptionalState:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)other {
  if (element_ == nil) {
    return other;
  }
  else if (((ComGoogleCommonCollectMoreCollectors_ToOptionalState *) nil_chk(other))->element_ == nil) {
    return self;
  }
  else {
    if (extras_ == nil) {
      extras_ = new_JavaUtilArrayList_init();
    }
    [extras_ addWithId:other->element_];
    if (other->extras_ != nil) {
      [self->extras_ addAllWithJavaUtilCollection:other->extras_];
    }
    if ([((id<JavaUtilList>) nil_chk(extras_)) size] > ComGoogleCommonCollectMoreCollectors_ToOptionalState_MAX_EXTRAS) {
      [((id<JavaUtilList>) nil_chk([((id<JavaUtilList>) nil_chk(extras_)) subListWithInt:ComGoogleCommonCollectMoreCollectors_ToOptionalState_MAX_EXTRAS withInt:[extras_ size]])) clear];
      @throw nil_chk([self multiplesWithBoolean:true]);
    }
    return self;
  }
}

- (JavaUtilOptional *)getOptional {
  if (extras_ == nil) {
    return JavaUtilOptional_ofNullableWithId_(element_);
  }
  else {
    @throw nil_chk([self multiplesWithBoolean:false]);
  }
}

- (id)getElement {
  if (element_ == nil) {
    @throw new_JavaUtilNoSuchElementException_init();
  }
  else if (extras_ == nil) {
    return element_;
  }
  else {
    @throw nil_chk([self multiplesWithBoolean:false]);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangIllegalArgumentException;", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 2, 3, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCollectMoreCollectors_ToOptionalState;", 0x0, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilOptional;", 0x0, -1, -1, -1, 6, -1, -1 },
    { NULL, "LNSObject;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(multiplesWithBoolean:);
  methods[2].selector = @selector(addWithId:);
  methods[3].selector = @selector(combineWithComGoogleCommonCollectMoreCollectors_ToOptionalState:);
  methods[4].selector = @selector(getOptional);
  methods[5].selector = @selector(getElement);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_EXTRAS", "I", .constantValue.asInt = ComGoogleCommonCollectMoreCollectors_ToOptionalState_MAX_EXTRAS, 0x18, -1, -1, -1, -1 },
    { "element_", "LNSObject;", .constantValue.asLong = 0, 0x0, -1, -1, -1, 7 },
    { "extras_", "LJavaUtilList;", .constantValue.asLong = 0, 0x0, -1, -1, 8, 9 },
  };
  static const void *ptrTable[] = { "multiples", "Z", "add", "LNSObject;", "combine", "LComGoogleCommonCollectMoreCollectors_ToOptionalState;", "()Ljava/util/Optional<Ljava/lang/Object;>;", (void *)&ComGoogleCommonCollectMoreCollectors_ToOptionalState__Annotations$0, "Ljava/util/List<Ljava/lang/Object;>;", (void *)&ComGoogleCommonCollectMoreCollectors_ToOptionalState__Annotations$1, "LComGoogleCommonCollectMoreCollectors;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectMoreCollectors_ToOptionalState = { "ToOptionalState", "com.google.common.collect", ptrTable, methods, fields, 7, 0x1a, 6, 3, 10, -1, -1, -1, -1 };
  return &_ComGoogleCommonCollectMoreCollectors_ToOptionalState;
}

@end

void ComGoogleCommonCollectMoreCollectors_ToOptionalState_init(ComGoogleCommonCollectMoreCollectors_ToOptionalState *self) {
  NSObject_init(self);
  self->element_ = nil;
  self->extras_ = nil;
}

ComGoogleCommonCollectMoreCollectors_ToOptionalState *new_ComGoogleCommonCollectMoreCollectors_ToOptionalState_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectMoreCollectors_ToOptionalState, init)
}

ComGoogleCommonCollectMoreCollectors_ToOptionalState *create_ComGoogleCommonCollectMoreCollectors_ToOptionalState_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectMoreCollectors_ToOptionalState, init)
}

IOSObjectArray *ComGoogleCommonCollectMoreCollectors_ToOptionalState__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonCollectMoreCollectors_ToOptionalState__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectMoreCollectors_ToOptionalState)

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectMoreCollectors_$Lambda$1)

@implementation ComGoogleCommonCollectMoreCollectors_$Lambda$1

- (id)get {
  return new_ComGoogleCommonCollectMoreCollectors_ToOptionalState_init();
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectMoreCollectors_$Lambda$1 class]) {
    ComGoogleCommonCollectMoreCollectors_$Lambda$1_instance = new_ComGoogleCommonCollectMoreCollectors_$Lambda$1_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectMoreCollectors_$Lambda$1)
  }
}

@end

void ComGoogleCommonCollectMoreCollectors_$Lambda$1_init(ComGoogleCommonCollectMoreCollectors_$Lambda$1 *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectMoreCollectors_$Lambda$1 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$1_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$1, init)
}

ComGoogleCommonCollectMoreCollectors_$Lambda$1 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$1_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$1, init)
}

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectMoreCollectors_$Lambda$2)

@implementation ComGoogleCommonCollectMoreCollectors_$Lambda$2

- (void)acceptWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)a
              withId:(id)b {
  [((ComGoogleCommonCollectMoreCollectors_ToOptionalState *) nil_chk(a)) addWithId:b];
}

- (id<JavaUtilFunctionBiConsumer>)andThenWithJavaUtilFunctionBiConsumer:(id<JavaUtilFunctionBiConsumer>)arg0 {
  return JavaUtilFunctionBiConsumer_andThenWithJavaUtilFunctionBiConsumer_(self, arg0);
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectMoreCollectors_$Lambda$2 class]) {
    ComGoogleCommonCollectMoreCollectors_$Lambda$2_instance = new_ComGoogleCommonCollectMoreCollectors_$Lambda$2_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectMoreCollectors_$Lambda$2)
  }
}

@end

void ComGoogleCommonCollectMoreCollectors_$Lambda$2_init(ComGoogleCommonCollectMoreCollectors_$Lambda$2 *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectMoreCollectors_$Lambda$2 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$2_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$2, init)
}

ComGoogleCommonCollectMoreCollectors_$Lambda$2 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$2_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$2, init)
}

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectMoreCollectors_$Lambda$3)

@implementation ComGoogleCommonCollectMoreCollectors_$Lambda$3

- (id)applyWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)a
           withId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)b {
  return [((ComGoogleCommonCollectMoreCollectors_ToOptionalState *) nil_chk(a)) combineWithComGoogleCommonCollectMoreCollectors_ToOptionalState:b];
}

- (id<JavaUtilFunctionBiFunction>)andThenWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionBiFunction_andThenWithJavaUtilFunctionFunction_(self, arg0);
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectMoreCollectors_$Lambda$3 class]) {
    ComGoogleCommonCollectMoreCollectors_$Lambda$3_instance = new_ComGoogleCommonCollectMoreCollectors_$Lambda$3_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectMoreCollectors_$Lambda$3)
  }
}

@end

void ComGoogleCommonCollectMoreCollectors_$Lambda$3_init(ComGoogleCommonCollectMoreCollectors_$Lambda$3 *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectMoreCollectors_$Lambda$3 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$3_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$3, init)
}

ComGoogleCommonCollectMoreCollectors_$Lambda$3 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$3_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$3, init)
}

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectMoreCollectors_$Lambda$4)

@implementation ComGoogleCommonCollectMoreCollectors_$Lambda$4

- (id)applyWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)a {
  return [((ComGoogleCommonCollectMoreCollectors_ToOptionalState *) nil_chk(a)) getOptional];
}

- (id<JavaUtilFunctionFunction>)composeWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_composeWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilFunctionFunction>)andThenWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_andThenWithJavaUtilFunctionFunction_(self, arg0);
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectMoreCollectors_$Lambda$4 class]) {
    ComGoogleCommonCollectMoreCollectors_$Lambda$4_instance = new_ComGoogleCommonCollectMoreCollectors_$Lambda$4_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectMoreCollectors_$Lambda$4)
  }
}

@end

void ComGoogleCommonCollectMoreCollectors_$Lambda$4_init(ComGoogleCommonCollectMoreCollectors_$Lambda$4 *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectMoreCollectors_$Lambda$4 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$4_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$4, init)
}

ComGoogleCommonCollectMoreCollectors_$Lambda$4 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$4_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$4, init)
}

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectMoreCollectors_$Lambda$5)

@implementation ComGoogleCommonCollectMoreCollectors_$Lambda$5

- (id)get {
  return new_ComGoogleCommonCollectMoreCollectors_ToOptionalState_init();
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectMoreCollectors_$Lambda$5 class]) {
    ComGoogleCommonCollectMoreCollectors_$Lambda$5_instance = new_ComGoogleCommonCollectMoreCollectors_$Lambda$5_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectMoreCollectors_$Lambda$5)
  }
}

@end

void ComGoogleCommonCollectMoreCollectors_$Lambda$5_init(ComGoogleCommonCollectMoreCollectors_$Lambda$5 *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectMoreCollectors_$Lambda$5 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$5_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$5, init)
}

ComGoogleCommonCollectMoreCollectors_$Lambda$5 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$5_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$5, init)
}

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectMoreCollectors_$Lambda$6)

@implementation ComGoogleCommonCollectMoreCollectors_$Lambda$6

- (void)acceptWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)state
              withId:(id)o {
  [((ComGoogleCommonCollectMoreCollectors_ToOptionalState *) nil_chk(state)) addWithId:(o == nil) ? JreLoadStatic(ComGoogleCommonCollectMoreCollectors, NULL_PLACEHOLDER) : o];
}

- (id<JavaUtilFunctionBiConsumer>)andThenWithJavaUtilFunctionBiConsumer:(id<JavaUtilFunctionBiConsumer>)arg0 {
  return JavaUtilFunctionBiConsumer_andThenWithJavaUtilFunctionBiConsumer_(self, arg0);
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectMoreCollectors_$Lambda$6 class]) {
    ComGoogleCommonCollectMoreCollectors_$Lambda$6_instance = new_ComGoogleCommonCollectMoreCollectors_$Lambda$6_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectMoreCollectors_$Lambda$6)
  }
}

@end

void ComGoogleCommonCollectMoreCollectors_$Lambda$6_init(ComGoogleCommonCollectMoreCollectors_$Lambda$6 *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectMoreCollectors_$Lambda$6 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$6_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$6, init)
}

ComGoogleCommonCollectMoreCollectors_$Lambda$6 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$6_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$6, init)
}

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectMoreCollectors_$Lambda$7)

@implementation ComGoogleCommonCollectMoreCollectors_$Lambda$7

- (id)applyWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)a
           withId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)b {
  return [((ComGoogleCommonCollectMoreCollectors_ToOptionalState *) nil_chk(a)) combineWithComGoogleCommonCollectMoreCollectors_ToOptionalState:b];
}

- (id<JavaUtilFunctionBiFunction>)andThenWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionBiFunction_andThenWithJavaUtilFunctionFunction_(self, arg0);
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectMoreCollectors_$Lambda$7 class]) {
    ComGoogleCommonCollectMoreCollectors_$Lambda$7_instance = new_ComGoogleCommonCollectMoreCollectors_$Lambda$7_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectMoreCollectors_$Lambda$7)
  }
}

@end

void ComGoogleCommonCollectMoreCollectors_$Lambda$7_init(ComGoogleCommonCollectMoreCollectors_$Lambda$7 *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectMoreCollectors_$Lambda$7 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$7_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$7, init)
}

ComGoogleCommonCollectMoreCollectors_$Lambda$7 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$7_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$7, init)
}

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonCollectMoreCollectors_$Lambda$8)

@implementation ComGoogleCommonCollectMoreCollectors_$Lambda$8

- (id)applyWithId:(ComGoogleCommonCollectMoreCollectors_ToOptionalState *)state {
  id result = [((ComGoogleCommonCollectMoreCollectors_ToOptionalState *) nil_chk(state)) getElement];
  return (result == JreLoadStatic(ComGoogleCommonCollectMoreCollectors, NULL_PLACEHOLDER)) ? nil : result;
}

- (id<JavaUtilFunctionFunction>)composeWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_composeWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilFunctionFunction>)andThenWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilFunctionFunction_andThenWithJavaUtilFunctionFunction_(self, arg0);
}

+ (void)initialize {
  if (self == [ComGoogleCommonCollectMoreCollectors_$Lambda$8 class]) {
    ComGoogleCommonCollectMoreCollectors_$Lambda$8_instance = new_ComGoogleCommonCollectMoreCollectors_$Lambda$8_init();
    J2OBJC_SET_INITIALIZED(ComGoogleCommonCollectMoreCollectors_$Lambda$8)
  }
}

@end

void ComGoogleCommonCollectMoreCollectors_$Lambda$8_init(ComGoogleCommonCollectMoreCollectors_$Lambda$8 *self) {
  NSObject_init(self);
}

ComGoogleCommonCollectMoreCollectors_$Lambda$8 *new_ComGoogleCommonCollectMoreCollectors_$Lambda$8_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$8, init)
}

ComGoogleCommonCollectMoreCollectors_$Lambda$8 *create_ComGoogleCommonCollectMoreCollectors_$Lambda$8_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonCollectMoreCollectors_$Lambda$8, init)
}