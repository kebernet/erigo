//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/AtomicDouble.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/common/util/concurrent/AtomicDouble.h"
#include "java/io/ObjectInputStream.h"
#include "java/io/ObjectOutputStream.h"
#include "java/lang/Double.h"
#include "java/util/concurrent/atomic/AtomicLongFieldUpdater.h"

@interface ComGoogleCommonUtilConcurrentAtomicDouble () {
 @public
  volatile_jlong value_;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)s;

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)s;

@end

inline jlong ComGoogleCommonUtilConcurrentAtomicDouble_get_serialVersionUID();
#define ComGoogleCommonUtilConcurrentAtomicDouble_serialVersionUID 0LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonUtilConcurrentAtomicDouble, serialVersionUID, jlong)

inline JavaUtilConcurrentAtomicAtomicLongFieldUpdater *ComGoogleCommonUtilConcurrentAtomicDouble_get_updater();
static JavaUtilConcurrentAtomicAtomicLongFieldUpdater *ComGoogleCommonUtilConcurrentAtomicDouble_updater;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonUtilConcurrentAtomicDouble, updater, JavaUtilConcurrentAtomicAtomicLongFieldUpdater *)

__attribute__((unused)) static jdouble ComGoogleCommonUtilConcurrentAtomicDouble_get(ComGoogleCommonUtilConcurrentAtomicDouble *self);

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentAtomicDouble_setWithDouble_(ComGoogleCommonUtilConcurrentAtomicDouble *self, jdouble newValue);

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonUtilConcurrentAtomicDouble)

@implementation ComGoogleCommonUtilConcurrentAtomicDouble

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)initWithDouble:(jdouble)initialValue {
  ComGoogleCommonUtilConcurrentAtomicDouble_initWithDouble_(self, initialValue);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonUtilConcurrentAtomicDouble_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jdouble)get {
  return ComGoogleCommonUtilConcurrentAtomicDouble_get(self);
}

- (void)setWithDouble:(jdouble)newValue {
  ComGoogleCommonUtilConcurrentAtomicDouble_setWithDouble_(self, newValue);
}

- (void)lazySetWithDouble:(jdouble)newValue {
  ComGoogleCommonUtilConcurrentAtomicDouble_setWithDouble_(self, newValue);
}

- (jdouble)getAndSetWithDouble:(jdouble)newValue {
  jlong next = JavaLangDouble_doubleToRawLongBitsWithDouble_(newValue);
  return JavaLangDouble_longBitsToDoubleWithLong_([((JavaUtilConcurrentAtomicAtomicLongFieldUpdater *) nil_chk(ComGoogleCommonUtilConcurrentAtomicDouble_updater)) getAndSetWithId:self withLong:next]);
}

- (jboolean)compareAndSetWithDouble:(jdouble)expect
                         withDouble:(jdouble)update {
  return [((JavaUtilConcurrentAtomicAtomicLongFieldUpdater *) nil_chk(ComGoogleCommonUtilConcurrentAtomicDouble_updater)) compareAndSetWithId:self withLong:JavaLangDouble_doubleToRawLongBitsWithDouble_(expect) withLong:JavaLangDouble_doubleToRawLongBitsWithDouble_(update)];
}

- (jboolean)weakCompareAndSetWithDouble:(jdouble)expect
                             withDouble:(jdouble)update {
  return [((JavaUtilConcurrentAtomicAtomicLongFieldUpdater *) nil_chk(ComGoogleCommonUtilConcurrentAtomicDouble_updater)) weakCompareAndSetWithId:self withLong:JavaLangDouble_doubleToRawLongBitsWithDouble_(expect) withLong:JavaLangDouble_doubleToRawLongBitsWithDouble_(update)];
}

- (jdouble)getAndAddWithDouble:(jdouble)delta {
  while (true) {
    jlong current = JreLoadVolatileLong(&value_);
    jdouble currentVal = JavaLangDouble_longBitsToDoubleWithLong_(current);
    jdouble nextVal = currentVal + delta;
    jlong next = JavaLangDouble_doubleToRawLongBitsWithDouble_(nextVal);
    if ([((JavaUtilConcurrentAtomicAtomicLongFieldUpdater *) nil_chk(ComGoogleCommonUtilConcurrentAtomicDouble_updater)) compareAndSetWithId:self withLong:current withLong:next]) {
      return currentVal;
    }
  }
}

- (jdouble)addAndGetWithDouble:(jdouble)delta {
  while (true) {
    jlong current = JreLoadVolatileLong(&value_);
    jdouble currentVal = JavaLangDouble_longBitsToDoubleWithLong_(current);
    jdouble nextVal = currentVal + delta;
    jlong next = JavaLangDouble_doubleToRawLongBitsWithDouble_(nextVal);
    if ([((JavaUtilConcurrentAtomicAtomicLongFieldUpdater *) nil_chk(ComGoogleCommonUtilConcurrentAtomicDouble_updater)) compareAndSetWithId:self withLong:current withLong:next]) {
      return nextVal;
    }
  }
}

- (NSString *)description {
  return JavaLangDouble_toStringWithDouble_(ComGoogleCommonUtilConcurrentAtomicDouble_get(self));
}

- (jint)intValue {
  return JreFpToInt(ComGoogleCommonUtilConcurrentAtomicDouble_get(self));
}

- (jlong)longLongValue {
  return JreFpToLong(ComGoogleCommonUtilConcurrentAtomicDouble_get(self));
}

- (jfloat)floatValue {
  return (jfloat) ComGoogleCommonUtilConcurrentAtomicDouble_get(self);
}

- (jdouble)doubleValue {
  return ComGoogleCommonUtilConcurrentAtomicDouble_get(self);
}

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)s {
  [((JavaIoObjectOutputStream *) nil_chk(s)) defaultWriteObject];
  [s writeDoubleWithDouble:ComGoogleCommonUtilConcurrentAtomicDouble_get(self)];
}

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)s {
  [((JavaIoObjectInputStream *) nil_chk(s)) defaultReadObject];
  ComGoogleCommonUtilConcurrentAtomicDouble_setWithDouble_(self, [s readDouble]);
}

- (jboolean)isEqual:(id)obj {
  return self == obj;
}

- (NSUInteger)hash {
  return (NSUInteger)self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 2, 0, -1, -1, -1, -1 },
    { NULL, "D", 0x11, 3, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, 6, 5, -1, -1, -1, -1 },
    { NULL, "D", 0x11, 7, 0, -1, -1, -1, -1 },
    { NULL, "D", 0x11, 8, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 10, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 11, 12, 13, -1, -1, -1 },
    { NULL, "V", 0x2, 14, 15, 16, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithDouble:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(get);
  methods[3].selector = @selector(setWithDouble:);
  methods[4].selector = @selector(lazySetWithDouble:);
  methods[5].selector = @selector(getAndSetWithDouble:);
  methods[6].selector = @selector(compareAndSetWithDouble:withDouble:);
  methods[7].selector = @selector(weakCompareAndSetWithDouble:withDouble:);
  methods[8].selector = @selector(getAndAddWithDouble:);
  methods[9].selector = @selector(addAndGetWithDouble:);
  methods[10].selector = @selector(description);
  methods[11].selector = @selector(intValue);
  methods[12].selector = @selector(longLongValue);
  methods[13].selector = @selector(floatValue);
  methods[14].selector = @selector(doubleValue);
  methods[15].selector = @selector(writeObjectWithJavaIoObjectOutputStream:);
  methods[16].selector = @selector(readObjectWithJavaIoObjectInputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonUtilConcurrentAtomicDouble_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "value_", "J", .constantValue.asLong = 0, 0xc2, -1, -1, -1, -1 },
    { "updater", "LJavaUtilConcurrentAtomicAtomicLongFieldUpdater;", .constantValue.asLong = 0, 0x1a, -1, 17, 18, -1 },
  };
  static const void *ptrTable[] = { "D", "set", "lazySet", "getAndSet", "compareAndSet", "DD", "weakCompareAndSet", "getAndAdd", "addAndGet", "toString", "longValue", "writeObject", "LJavaIoObjectOutputStream;", "LJavaIoIOException;", "readObject", "LJavaIoObjectInputStream;", "LJavaIoIOException;LJavaLangClassNotFoundException;", &ComGoogleCommonUtilConcurrentAtomicDouble_updater, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<Lcom/google/common/util/concurrent/AtomicDouble;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentAtomicDouble = { "AtomicDouble", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x1, 17, 3, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentAtomicDouble;
}

+ (void)initialize {
  if (self == [ComGoogleCommonUtilConcurrentAtomicDouble class]) {
    ComGoogleCommonUtilConcurrentAtomicDouble_updater = JavaUtilConcurrentAtomicAtomicLongFieldUpdater_newUpdaterWithIOSClass_withNSString_(ComGoogleCommonUtilConcurrentAtomicDouble_class_(), @"value");
    J2OBJC_SET_INITIALIZED(ComGoogleCommonUtilConcurrentAtomicDouble)
  }
}

@end

void ComGoogleCommonUtilConcurrentAtomicDouble_initWithDouble_(ComGoogleCommonUtilConcurrentAtomicDouble *self, jdouble initialValue) {
  NSNumber_init(self);
  JreAssignVolatileLong(&self->value_, JavaLangDouble_doubleToRawLongBitsWithDouble_(initialValue));
}

ComGoogleCommonUtilConcurrentAtomicDouble *new_ComGoogleCommonUtilConcurrentAtomicDouble_initWithDouble_(jdouble initialValue) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentAtomicDouble, initWithDouble_, initialValue)
}

ComGoogleCommonUtilConcurrentAtomicDouble *create_ComGoogleCommonUtilConcurrentAtomicDouble_initWithDouble_(jdouble initialValue) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentAtomicDouble, initWithDouble_, initialValue)
}

void ComGoogleCommonUtilConcurrentAtomicDouble_init(ComGoogleCommonUtilConcurrentAtomicDouble *self) {
  NSNumber_init(self);
}

ComGoogleCommonUtilConcurrentAtomicDouble *new_ComGoogleCommonUtilConcurrentAtomicDouble_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentAtomicDouble, init)
}

ComGoogleCommonUtilConcurrentAtomicDouble *create_ComGoogleCommonUtilConcurrentAtomicDouble_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentAtomicDouble, init)
}

jdouble ComGoogleCommonUtilConcurrentAtomicDouble_get(ComGoogleCommonUtilConcurrentAtomicDouble *self) {
  return JavaLangDouble_longBitsToDoubleWithLong_(JreLoadVolatileLong(&self->value_));
}

void ComGoogleCommonUtilConcurrentAtomicDouble_setWithDouble_(ComGoogleCommonUtilConcurrentAtomicDouble *self, jdouble newValue) {
  jlong next = JavaLangDouble_doubleToRawLongBitsWithDouble_(newValue);
  JreAssignVolatileLong(&self->value_, next);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentAtomicDouble)
