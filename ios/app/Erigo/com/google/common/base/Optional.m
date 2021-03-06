//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/base/Optional.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Absent.h"
#include "com/google/common/base/AbstractIterator.h"
#include "com/google/common/base/Function.h"
#include "com/google/common/base/Optional.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/base/Present.h"
#include "com/google/common/base/Supplier.h"
#include "java/lang/Iterable.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Iterator.h"
#include "java/util/Optional.h"
#include "java/util/Set.h"
#include "java/util/Spliterator.h"
#include "java/util/function/Consumer.h"
#include "javax/annotation/Nullable.h"

inline jlong ComGoogleCommonBaseOptional_get_serialVersionUID();
#define ComGoogleCommonBaseOptional_serialVersionUID 0LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonBaseOptional, serialVersionUID, jlong)

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$1();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$2();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$3();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$4();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$5();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$6();

@interface ComGoogleCommonBaseOptional_1 : NSObject < JavaLangIterable > {
 @public
  id<JavaLangIterable> val$optionals_;
}

- (instancetype)initWithJavaLangIterable:(id<JavaLangIterable>)capture$0;

- (id<JavaUtilIterator>)iterator;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseOptional_1)

__attribute__((unused)) static void ComGoogleCommonBaseOptional_1_initWithJavaLangIterable_(ComGoogleCommonBaseOptional_1 *self, id<JavaLangIterable> capture$0);

__attribute__((unused)) static ComGoogleCommonBaseOptional_1 *new_ComGoogleCommonBaseOptional_1_initWithJavaLangIterable_(id<JavaLangIterable> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonBaseOptional_1 *create_ComGoogleCommonBaseOptional_1_initWithJavaLangIterable_(id<JavaLangIterable> capture$0);

@interface ComGoogleCommonBaseOptional_1_1 : ComGoogleCommonBaseAbstractIterator {
 @public
  id<JavaUtilIterator> iterator_;
}

- (instancetype)initWithComGoogleCommonBaseOptional_1:(ComGoogleCommonBaseOptional_1 *)outer$;

- (id)computeNext;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseOptional_1_1)

J2OBJC_FIELD_SETTER(ComGoogleCommonBaseOptional_1_1, iterator_, id<JavaUtilIterator>)

__attribute__((unused)) static void ComGoogleCommonBaseOptional_1_1_initWithComGoogleCommonBaseOptional_1_(ComGoogleCommonBaseOptional_1_1 *self, ComGoogleCommonBaseOptional_1 *outer$);

__attribute__((unused)) static ComGoogleCommonBaseOptional_1_1 *new_ComGoogleCommonBaseOptional_1_1_initWithComGoogleCommonBaseOptional_1_(ComGoogleCommonBaseOptional_1 *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonBaseOptional_1_1 *create_ComGoogleCommonBaseOptional_1_1_initWithComGoogleCommonBaseOptional_1_(ComGoogleCommonBaseOptional_1 *outer$);

@implementation ComGoogleCommonBaseOptional

+ (ComGoogleCommonBaseOptional *)absent {
  return ComGoogleCommonBaseOptional_absent();
}

+ (ComGoogleCommonBaseOptional *)ofWithId:(id)reference {
  return ComGoogleCommonBaseOptional_ofWithId_(reference);
}

+ (ComGoogleCommonBaseOptional *)fromNullableWithId:(id)nullableReference {
  return ComGoogleCommonBaseOptional_fromNullableWithId_(nullableReference);
}

+ (ComGoogleCommonBaseOptional *)fromJavaUtilWithJavaUtilOptional:(JavaUtilOptional *)javaUtilOptional {
  return ComGoogleCommonBaseOptional_fromJavaUtilWithJavaUtilOptional_(javaUtilOptional);
}

+ (JavaUtilOptional *)toJavaUtilWithComGoogleCommonBaseOptional:(ComGoogleCommonBaseOptional *)googleOptional {
  return ComGoogleCommonBaseOptional_toJavaUtilWithComGoogleCommonBaseOptional_(googleOptional);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonBaseOptional_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)isPresent {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)or__WithId:(id)defaultValue {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComGoogleCommonBaseOptional *)or__WithComGoogleCommonBaseOptional:(ComGoogleCommonBaseOptional *)secondChoice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)or__WithComGoogleCommonBaseSupplier:(id<ComGoogleCommonBaseSupplier>)supplier {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)orNull {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaUtilSet>)asSet {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComGoogleCommonBaseOptional *)transformWithComGoogleCommonBaseFunction:(id<ComGoogleCommonBaseFunction>)function {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaUtilOptional *)toJavaUtil {
  return JavaUtilOptional_ofNullableWithId_([self orNull]);
}

- (jboolean)isEqual:(id)object {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSUInteger)hash {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (id<JavaLangIterable>)presentInstancesWithJavaLangIterable:(id<JavaLangIterable>)optionals {
  return ComGoogleCommonBaseOptional_presentInstancesWithJavaLangIterable_(optionals);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComGoogleCommonBaseOptional;", 0x9, -1, -1, -1, 0, -1, -1 },
    { NULL, "LComGoogleCommonBaseOptional;", 0x9, 1, 2, -1, 3, -1, -1 },
    { NULL, "LComGoogleCommonBaseOptional;", 0x9, 4, 2, -1, 3, -1, 5 },
    { NULL, "LComGoogleCommonBaseOptional;", 0x9, 6, 7, -1, 8, 9, 10 },
    { NULL, "LJavaUtilOptional;", 0x9, 11, 12, -1, 13, 14, 15 },
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x401, -1, -1, -1, 16, -1, -1 },
    { NULL, "LNSObject;", 0x401, 17, 2, -1, 18, -1, -1 },
    { NULL, "LComGoogleCommonBaseOptional;", 0x401, 17, 12, -1, 19, -1, -1 },
    { NULL, "LNSObject;", 0x401, 17, 20, -1, 21, -1, -1 },
    { NULL, "LNSObject;", 0x401, -1, -1, -1, 16, 22, -1 },
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 23, -1, -1 },
    { NULL, "LComGoogleCommonBaseOptional;", 0x401, 24, 25, -1, 26, -1, -1 },
    { NULL, "LJavaUtilOptional;", 0x1, -1, -1, -1, 27, -1, -1 },
    { NULL, "Z", 0x401, 28, 2, -1, -1, -1, 29 },
    { NULL, "I", 0x401, 30, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 31, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangIterable;", 0x9, 32, 33, -1, 34, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(absent);
  methods[1].selector = @selector(ofWithId:);
  methods[2].selector = @selector(fromNullableWithId:);
  methods[3].selector = @selector(fromJavaUtilWithJavaUtilOptional:);
  methods[4].selector = @selector(toJavaUtilWithComGoogleCommonBaseOptional:);
  methods[5].selector = @selector(init);
  methods[6].selector = @selector(isPresent);
  methods[7].selector = @selector(get);
  methods[8].selector = @selector(or__WithId:);
  methods[9].selector = @selector(or__WithComGoogleCommonBaseOptional:);
  methods[10].selector = @selector(or__WithComGoogleCommonBaseSupplier:);
  methods[11].selector = @selector(orNull);
  methods[12].selector = @selector(asSet);
  methods[13].selector = @selector(transformWithComGoogleCommonBaseFunction:);
  methods[14].selector = @selector(toJavaUtil);
  methods[15].selector = @selector(isEqual:);
  methods[16].selector = @selector(hash);
  methods[17].selector = @selector(description);
  methods[18].selector = @selector(presentInstancesWithJavaLangIterable:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonBaseOptional_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "<T:Ljava/lang/Object;>()Lcom/google/common/base/Optional<TT;>;", "of", "LNSObject;", "<T:Ljava/lang/Object;>(TT;)Lcom/google/common/base/Optional<TT;>;", "fromNullable", (void *)&ComGoogleCommonBaseOptional__Annotations$0, "fromJavaUtil", "LJavaUtilOptional;", "<T:Ljava/lang/Object;>(Ljava/util/Optional<TT;>;)Lcom/google/common/base/Optional<TT;>;", (void *)&ComGoogleCommonBaseOptional__Annotations$1, (void *)&ComGoogleCommonBaseOptional__Annotations$2, "toJavaUtil", "LComGoogleCommonBaseOptional;", "<T:Ljava/lang/Object;>(Lcom/google/common/base/Optional<TT;>;)Ljava/util/Optional<TT;>;", (void *)&ComGoogleCommonBaseOptional__Annotations$3, (void *)&ComGoogleCommonBaseOptional__Annotations$4, "()TT;", "or", "(TT;)TT;", "(Lcom/google/common/base/Optional<+TT;>;)Lcom/google/common/base/Optional<TT;>;", "LComGoogleCommonBaseSupplier;", "(Lcom/google/common/base/Supplier<+TT;>;)TT;", (void *)&ComGoogleCommonBaseOptional__Annotations$5, "()Ljava/util/Set<TT;>;", "transform", "LComGoogleCommonBaseFunction;", "<V:Ljava/lang/Object;>(Lcom/google/common/base/Function<-TT;TV;>;)Lcom/google/common/base/Optional<TV;>;", "()Ljava/util/Optional<TT;>;", "equals", (void *)&ComGoogleCommonBaseOptional__Annotations$6, "hashCode", "toString", "presentInstances", "LJavaLangIterable;", "<T:Ljava/lang/Object;>(Ljava/lang/Iterable<+Lcom/google/common/base/Optional<+TT;>;>;)Ljava/lang/Iterable<TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _ComGoogleCommonBaseOptional = { "Optional", "com.google.common.base", ptrTable, methods, fields, 7, 0x401, 19, 1, -1, -1, -1, 35, -1 };
  return &_ComGoogleCommonBaseOptional;
}

@end

ComGoogleCommonBaseOptional *ComGoogleCommonBaseOptional_absent() {
  ComGoogleCommonBaseOptional_initialize();
  return ComGoogleCommonBaseAbsent_withType();
}

ComGoogleCommonBaseOptional *ComGoogleCommonBaseOptional_ofWithId_(id reference) {
  ComGoogleCommonBaseOptional_initialize();
  return new_ComGoogleCommonBasePresent_initWithId_(ComGoogleCommonBasePreconditions_checkNotNullWithId_(reference));
}

ComGoogleCommonBaseOptional *ComGoogleCommonBaseOptional_fromNullableWithId_(id nullableReference) {
  ComGoogleCommonBaseOptional_initialize();
  return (nullableReference == nil) ? ComGoogleCommonBaseOptional_absent() : new_ComGoogleCommonBasePresent_initWithId_(nullableReference);
}

ComGoogleCommonBaseOptional *ComGoogleCommonBaseOptional_fromJavaUtilWithJavaUtilOptional_(JavaUtilOptional *javaUtilOptional) {
  ComGoogleCommonBaseOptional_initialize();
  return (javaUtilOptional == nil) ? nil : ComGoogleCommonBaseOptional_fromNullableWithId_([((JavaUtilOptional *) nil_chk(javaUtilOptional)) orElseWithId:nil]);
}

JavaUtilOptional *ComGoogleCommonBaseOptional_toJavaUtilWithComGoogleCommonBaseOptional_(ComGoogleCommonBaseOptional *googleOptional) {
  ComGoogleCommonBaseOptional_initialize();
  return googleOptional == nil ? nil : [googleOptional toJavaUtil];
}

void ComGoogleCommonBaseOptional_init(ComGoogleCommonBaseOptional *self) {
  NSObject_init(self);
}

id<JavaLangIterable> ComGoogleCommonBaseOptional_presentInstancesWithJavaLangIterable_(id<JavaLangIterable> optionals) {
  ComGoogleCommonBaseOptional_initialize();
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_(optionals);
  return new_ComGoogleCommonBaseOptional_1_initWithJavaLangIterable_(optionals);
}

IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$4() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$5() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ComGoogleCommonBaseOptional__Annotations$6() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonBaseOptional)

@implementation ComGoogleCommonBaseOptional_1

- (instancetype)initWithJavaLangIterable:(id<JavaLangIterable>)capture$0 {
  ComGoogleCommonBaseOptional_1_initWithJavaLangIterable_(self, capture$0);
  return self;
}

- (id<JavaUtilIterator>)iterator {
  return new_ComGoogleCommonBaseOptional_1_1_initWithComGoogleCommonBaseOptional_1_(self);
}

- (void)forEachWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaLangIterable_forEachWithJavaUtilFunctionConsumer_(self, arg0);
}

- (id<JavaUtilSpliterator>)spliterator {
  return JavaLangIterable_spliterator(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 0, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaLangIterable:);
  methods[1].selector = @selector(iterator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$optionals_", "LJavaLangIterable;", .constantValue.asLong = 0, 0x1012, -1, -1, 1, -1 },
  };
  static const void *ptrTable[] = { "()Ljava/util/Iterator<TT;>;", "Ljava/lang/Iterable<+Lcom/google/common/base/Optional<+TT;>;>;", "LComGoogleCommonBaseOptional;", "presentInstancesWithJavaLangIterable:", "Ljava/lang/Object;Ljava/lang/Iterable<TT;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonBaseOptional_1 = { "", "com.google.common.base", ptrTable, methods, fields, 7, 0x8018, 2, 1, 2, -1, 3, 4, -1 };
  return &_ComGoogleCommonBaseOptional_1;
}

@end

void ComGoogleCommonBaseOptional_1_initWithJavaLangIterable_(ComGoogleCommonBaseOptional_1 *self, id<JavaLangIterable> capture$0) {
  self->val$optionals_ = capture$0;
  NSObject_init(self);
}

ComGoogleCommonBaseOptional_1 *new_ComGoogleCommonBaseOptional_1_initWithJavaLangIterable_(id<JavaLangIterable> capture$0) {
  J2OBJC_NEW_IMPL(ComGoogleCommonBaseOptional_1, initWithJavaLangIterable_, capture$0)
}

ComGoogleCommonBaseOptional_1 *create_ComGoogleCommonBaseOptional_1_initWithJavaLangIterable_(id<JavaLangIterable> capture$0) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonBaseOptional_1, initWithJavaLangIterable_, capture$0)
}

@implementation ComGoogleCommonBaseOptional_1_1

- (instancetype)initWithComGoogleCommonBaseOptional_1:(ComGoogleCommonBaseOptional_1 *)outer$ {
  ComGoogleCommonBaseOptional_1_1_initWithComGoogleCommonBaseOptional_1_(self, outer$);
  return self;
}

- (id)computeNext {
  while ([((id<JavaUtilIterator>) nil_chk(iterator_)) hasNext]) {
    ComGoogleCommonBaseOptional *optional = [iterator_ next];
    if ([((ComGoogleCommonBaseOptional *) nil_chk(optional)) isPresent]) {
      return [optional get];
    }
  }
  return [self endOfData];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, 0, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonBaseOptional_1:);
  methods[1].selector = @selector(computeNext);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iterator_", "LJavaUtilIterator;", .constantValue.asLong = 0, 0x12, -1, -1, 1, -1 },
  };
  static const void *ptrTable[] = { "()TT;", "Ljava/util/Iterator<+Lcom/google/common/base/Optional<+TT;>;>;", "LComGoogleCommonBaseOptional_1;", "iterator", "Lcom/google/common/base/AbstractIterator<TT;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonBaseOptional_1_1 = { "", "com.google.common.base", ptrTable, methods, fields, 7, 0x8018, 2, 1, 2, -1, 3, 4, -1 };
  return &_ComGoogleCommonBaseOptional_1_1;
}

@end

void ComGoogleCommonBaseOptional_1_1_initWithComGoogleCommonBaseOptional_1_(ComGoogleCommonBaseOptional_1_1 *self, ComGoogleCommonBaseOptional_1 *outer$) {
  ComGoogleCommonBaseAbstractIterator_init(self);
  self->iterator_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_([((id<JavaLangIterable>) nil_chk(outer$->val$optionals_)) iterator]);
}

ComGoogleCommonBaseOptional_1_1 *new_ComGoogleCommonBaseOptional_1_1_initWithComGoogleCommonBaseOptional_1_(ComGoogleCommonBaseOptional_1 *outer$) {
  J2OBJC_NEW_IMPL(ComGoogleCommonBaseOptional_1_1, initWithComGoogleCommonBaseOptional_1_, outer$)
}

ComGoogleCommonBaseOptional_1_1 *create_ComGoogleCommonBaseOptional_1_1_initWithComGoogleCommonBaseOptional_1_(ComGoogleCommonBaseOptional_1 *outer$) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonBaseOptional_1_1, initWithComGoogleCommonBaseOptional_1_, outer$)
}
