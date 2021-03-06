//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/collect/ForwardingMapEntry.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Objects.h"
#include "com/google/common/collect/ForwardingMapEntry.h"
#include "com/google/common/collect/ForwardingObject.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Map.h"
#include "javax/annotation/Nullable.h"

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectForwardingMapEntry__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonCollectForwardingMapEntry__Annotations$1();

@implementation ComGoogleCommonCollectForwardingMapEntry

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonCollectForwardingMapEntry_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaUtilMap_Entry>)delegate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)getKey {
  return [((id<JavaUtilMap_Entry>) nil_chk([self delegate])) getKey];
}

- (id)getValue {
  return [((id<JavaUtilMap_Entry>) nil_chk([self delegate])) getValue];
}

- (id)setValueWithId:(id)value {
  return [((id<JavaUtilMap_Entry>) nil_chk([self delegate])) setValueWithId:value];
}

- (jboolean)isEqual:(id)object {
  return [((id<JavaUtilMap_Entry>) nil_chk([self delegate])) isEqual:object];
}

- (NSUInteger)hash {
  return ((jint) [((id<JavaUtilMap_Entry>) nil_chk([self delegate])) hash]);
}

- (jboolean)standardEqualsWithId:(id)object {
  if ([JavaUtilMap_Entry_class_() isInstance:object]) {
    id<JavaUtilMap_Entry> that = (id<JavaUtilMap_Entry>) cast_check(object, JavaUtilMap_Entry_class_());
    return ComGoogleCommonBaseObjects_equalWithId_withId_([self getKey], [((id<JavaUtilMap_Entry>) nil_chk(that)) getKey]) && ComGoogleCommonBaseObjects_equalWithId_withId_([self getValue], [that getValue]);
  }
  return false;
}

- (jint)standardHashCode {
  id k = [self getKey];
  id v = [self getValue];
  return ((k == nil) ? 0 : ((jint) [nil_chk(k) hash])) ^ ((v == nil) ? 0 : ((jint) [nil_chk(v) hash]));
}

- (NSString *)standardToString {
  return JreStrcat("@C@", [self getKey], '=', [self getValue]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap_Entry;", 0x404, -1, -1, -1, 0, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LNSObject;", 0x1, 3, 4, -1, 5, -1, -1 },
    { NULL, "Z", 0x1, 6, 4, -1, -1, -1, 7 },
    { NULL, "I", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 9, 4, -1, -1, -1, 10 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(delegate);
  methods[2].selector = @selector(getKey);
  methods[3].selector = @selector(getValue);
  methods[4].selector = @selector(setValueWithId:);
  methods[5].selector = @selector(isEqual:);
  methods[6].selector = @selector(hash);
  methods[7].selector = @selector(standardEqualsWithId:);
  methods[8].selector = @selector(standardHashCode);
  methods[9].selector = @selector(standardToString);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Ljava/util/Map$Entry<TK;TV;>;", "()TK;", "()TV;", "setValue", "LNSObject;", "(TV;)TV;", "equals", (void *)&ComGoogleCommonCollectForwardingMapEntry__Annotations$0, "hashCode", "standardEquals", (void *)&ComGoogleCommonCollectForwardingMapEntry__Annotations$1, "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lcom/google/common/collect/ForwardingObject;Ljava/util/Map$Entry<TK;TV;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonCollectForwardingMapEntry = { "ForwardingMapEntry", "com.google.common.collect", ptrTable, methods, NULL, 7, 0x401, 10, 0, -1, -1, -1, 11, -1 };
  return &_ComGoogleCommonCollectForwardingMapEntry;
}

@end

void ComGoogleCommonCollectForwardingMapEntry_init(ComGoogleCommonCollectForwardingMapEntry *self) {
  ComGoogleCommonCollectForwardingObject_init(self);
}

IOSObjectArray *ComGoogleCommonCollectForwardingMapEntry__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

IOSObjectArray *ComGoogleCommonCollectForwardingMapEntry__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonCollectForwardingMapEntry)
