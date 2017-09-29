//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/base/PairwiseEquivalence.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Equivalence.h"
#include "com/google/common/base/PairwiseEquivalence.h"
#include "com/google/common/base/Preconditions.h"
#include "java/lang/Iterable.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Iterator.h"
#include "javax/annotation/Nullable.h"

inline jlong ComGoogleCommonBasePairwiseEquivalence_get_serialVersionUID();
#define ComGoogleCommonBasePairwiseEquivalence_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonBasePairwiseEquivalence, serialVersionUID, jlong)

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonBasePairwiseEquivalence__Annotations$0();

@implementation ComGoogleCommonBasePairwiseEquivalence

- (instancetype)initWithComGoogleCommonBaseEquivalence:(ComGoogleCommonBaseEquivalence *)elementEquivalence {
  ComGoogleCommonBasePairwiseEquivalence_initWithComGoogleCommonBaseEquivalence_(self, elementEquivalence);
  return self;
}

- (jboolean)doEquivalentWithId:(id<JavaLangIterable>)iterableA
                        withId:(id<JavaLangIterable>)iterableB {
  id<JavaUtilIterator> iteratorA = [((id<JavaLangIterable>) nil_chk(iterableA)) iterator];
  id<JavaUtilIterator> iteratorB = [((id<JavaLangIterable>) nil_chk(iterableB)) iterator];
  while ([((id<JavaUtilIterator>) nil_chk(iteratorA)) hasNext] && [((id<JavaUtilIterator>) nil_chk(iteratorB)) hasNext]) {
    if (![((ComGoogleCommonBaseEquivalence *) nil_chk(elementEquivalence_)) equivalentWithId:[iteratorA next] withId:[((id<JavaUtilIterator>) nil_chk(iteratorB)) next]]) {
      return false;
    }
  }
  return ![iteratorA hasNext] && ![((id<JavaUtilIterator>) nil_chk(iteratorB)) hasNext];
}

- (jint)doHashWithId:(id<JavaLangIterable>)iterable {
  jint hash_ = 78721;
  for (id __strong element in nil_chk(iterable)) {
    hash_ = hash_ * 24943 + [((ComGoogleCommonBaseEquivalence *) nil_chk(elementEquivalence_)) hash__WithId:element];
  }
  return hash_;
}

- (jboolean)isEqual:(id)object {
  if ([object isKindOfClass:[ComGoogleCommonBasePairwiseEquivalence class]]) {
    ComGoogleCommonBasePairwiseEquivalence *that = (ComGoogleCommonBasePairwiseEquivalence *) cast_chk(object, [ComGoogleCommonBasePairwiseEquivalence class]);
    return [((ComGoogleCommonBaseEquivalence *) nil_chk(self->elementEquivalence_)) isEqual:((ComGoogleCommonBasePairwiseEquivalence *) nil_chk(that))->elementEquivalence_];
  }
  return false;
}

- (NSUInteger)hash {
  return ((jint) [((ComGoogleCommonBaseEquivalence *) nil_chk(elementEquivalence_)) hash]) ^ (jint) 0x46a3eb07;
}

- (NSString *)description {
  return JreStrcat("@$", elementEquivalence_, @".pairwise()");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "Z", 0x4, 2, 3, -1, 4, -1, -1 },
    { NULL, "I", 0x4, 5, 6, -1, 7, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, 10 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 12, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonBaseEquivalence:);
  methods[1].selector = @selector(doEquivalentWithId:withId:);
  methods[2].selector = @selector(doHashWithId:);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "elementEquivalence_", "LComGoogleCommonBaseEquivalence;", .constantValue.asLong = 0, 0x10, -1, -1, 13, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = ComGoogleCommonBasePairwiseEquivalence_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonBaseEquivalence;", "(Lcom/google/common/base/Equivalence<-TT;>;)V", "doEquivalent", "LJavaLangIterable;LJavaLangIterable;", "(Ljava/lang/Iterable<TT;>;Ljava/lang/Iterable<TT;>;)Z", "doHash", "LJavaLangIterable;", "(Ljava/lang/Iterable<TT;>;)I", "equals", "LNSObject;", (void *)&ComGoogleCommonBasePairwiseEquivalence__Annotations$0, "hashCode", "toString", "Lcom/google/common/base/Equivalence<-TT;>;", "<T:Ljava/lang/Object;>Lcom/google/common/base/Equivalence<Ljava/lang/Iterable<TT;>;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _ComGoogleCommonBasePairwiseEquivalence = { "PairwiseEquivalence", "com.google.common.base", ptrTable, methods, fields, 7, 0x10, 6, 2, -1, -1, -1, 14, -1 };
  return &_ComGoogleCommonBasePairwiseEquivalence;
}

@end

void ComGoogleCommonBasePairwiseEquivalence_initWithComGoogleCommonBaseEquivalence_(ComGoogleCommonBasePairwiseEquivalence *self, ComGoogleCommonBaseEquivalence *elementEquivalence) {
  ComGoogleCommonBaseEquivalence_init(self);
  self->elementEquivalence_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(elementEquivalence);
}

ComGoogleCommonBasePairwiseEquivalence *new_ComGoogleCommonBasePairwiseEquivalence_initWithComGoogleCommonBaseEquivalence_(ComGoogleCommonBaseEquivalence *elementEquivalence) {
  J2OBJC_NEW_IMPL(ComGoogleCommonBasePairwiseEquivalence, initWithComGoogleCommonBaseEquivalence_, elementEquivalence)
}

ComGoogleCommonBasePairwiseEquivalence *create_ComGoogleCommonBasePairwiseEquivalence_initWithComGoogleCommonBaseEquivalence_(ComGoogleCommonBaseEquivalence *elementEquivalence) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonBasePairwiseEquivalence, initWithComGoogleCommonBaseEquivalence_, elementEquivalence)
}

IOSObjectArray *ComGoogleCommonBasePairwiseEquivalence__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonBasePairwiseEquivalence)