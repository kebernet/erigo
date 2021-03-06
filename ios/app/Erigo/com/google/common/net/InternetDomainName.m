//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/net/InternetDomainName.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Ascii.h"
#include "com/google/common/base/CharMatcher.h"
#include "com/google/common/base/Joiner.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/base/Splitter.h"
#include "com/google/common/collect/ImmutableList.h"
#include "com/google/common/collect/ImmutableMap.h"
#include "com/google/common/net/InternetDomainName.h"
#include "com/google/thirdparty/publicsuffix/PublicSuffixPatterns.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Iterable.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/List.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonNetInternetDomainName () {
 @public
  NSString *name_;
  ComGoogleCommonCollectImmutableList *parts_;
  jint publicSuffixIndex_;
}

- (jint)findPublicSuffix;

+ (jboolean)validateSyntaxWithJavaUtilList:(id<JavaUtilList>)parts;

+ (jboolean)validatePartWithNSString:(NSString *)part
                         withBoolean:(jboolean)isFinalPart;

- (ComGoogleCommonNetInternetDomainName *)ancestorWithInt:(jint)levels;

+ (jboolean)matchesWildcardPublicSuffixWithNSString:(NSString *)domain;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonNetInternetDomainName, name_, NSString *)
J2OBJC_FIELD_SETTER(ComGoogleCommonNetInternetDomainName, parts_, ComGoogleCommonCollectImmutableList *)

inline ComGoogleCommonBaseCharMatcher *ComGoogleCommonNetInternetDomainName_get_DOTS_MATCHER();
static ComGoogleCommonBaseCharMatcher *ComGoogleCommonNetInternetDomainName_DOTS_MATCHER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetInternetDomainName, DOTS_MATCHER, ComGoogleCommonBaseCharMatcher *)

inline ComGoogleCommonBaseSplitter *ComGoogleCommonNetInternetDomainName_get_DOT_SPLITTER();
static ComGoogleCommonBaseSplitter *ComGoogleCommonNetInternetDomainName_DOT_SPLITTER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetInternetDomainName, DOT_SPLITTER, ComGoogleCommonBaseSplitter *)

inline ComGoogleCommonBaseJoiner *ComGoogleCommonNetInternetDomainName_get_DOT_JOINER();
static ComGoogleCommonBaseJoiner *ComGoogleCommonNetInternetDomainName_DOT_JOINER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetInternetDomainName, DOT_JOINER, ComGoogleCommonBaseJoiner *)

inline jint ComGoogleCommonNetInternetDomainName_get_NO_PUBLIC_SUFFIX_FOUND();
#define ComGoogleCommonNetInternetDomainName_NO_PUBLIC_SUFFIX_FOUND -1
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonNetInternetDomainName, NO_PUBLIC_SUFFIX_FOUND, jint)

inline NSString *ComGoogleCommonNetInternetDomainName_get_DOT_REGEX();
static NSString *ComGoogleCommonNetInternetDomainName_DOT_REGEX = @"\\.";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetInternetDomainName, DOT_REGEX, NSString *)

inline jint ComGoogleCommonNetInternetDomainName_get_MAX_PARTS();
#define ComGoogleCommonNetInternetDomainName_MAX_PARTS 127
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonNetInternetDomainName, MAX_PARTS, jint)

inline jint ComGoogleCommonNetInternetDomainName_get_MAX_LENGTH();
#define ComGoogleCommonNetInternetDomainName_MAX_LENGTH 253
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonNetInternetDomainName, MAX_LENGTH, jint)

inline jint ComGoogleCommonNetInternetDomainName_get_MAX_DOMAIN_PART_LENGTH();
#define ComGoogleCommonNetInternetDomainName_MAX_DOMAIN_PART_LENGTH 63
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleCommonNetInternetDomainName, MAX_DOMAIN_PART_LENGTH, jint)

inline ComGoogleCommonBaseCharMatcher *ComGoogleCommonNetInternetDomainName_get_DASH_MATCHER();
static ComGoogleCommonBaseCharMatcher *ComGoogleCommonNetInternetDomainName_DASH_MATCHER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetInternetDomainName, DASH_MATCHER, ComGoogleCommonBaseCharMatcher *)

inline ComGoogleCommonBaseCharMatcher *ComGoogleCommonNetInternetDomainName_get_PART_CHAR_MATCHER();
static ComGoogleCommonBaseCharMatcher *ComGoogleCommonNetInternetDomainName_PART_CHAR_MATCHER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonNetInternetDomainName, PART_CHAR_MATCHER, ComGoogleCommonBaseCharMatcher *)

__attribute__((unused)) static jint ComGoogleCommonNetInternetDomainName_findPublicSuffix(ComGoogleCommonNetInternetDomainName *self);

__attribute__((unused)) static jboolean ComGoogleCommonNetInternetDomainName_validateSyntaxWithJavaUtilList_(id<JavaUtilList> parts);

__attribute__((unused)) static jboolean ComGoogleCommonNetInternetDomainName_validatePartWithNSString_withBoolean_(NSString *part, jboolean isFinalPart);

__attribute__((unused)) static ComGoogleCommonNetInternetDomainName *ComGoogleCommonNetInternetDomainName_ancestorWithInt_(ComGoogleCommonNetInternetDomainName *self, jint levels);

__attribute__((unused)) static jboolean ComGoogleCommonNetInternetDomainName_matchesWildcardPublicSuffixWithNSString_(NSString *domain);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonNetInternetDomainName__Annotations$0();

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonNetInternetDomainName)

@implementation ComGoogleCommonNetInternetDomainName

- (instancetype)initWithNSString:(NSString *)name {
  ComGoogleCommonNetInternetDomainName_initWithNSString_(self, name);
  return self;
}

- (jint)findPublicSuffix {
  return ComGoogleCommonNetInternetDomainName_findPublicSuffix(self);
}

+ (ComGoogleCommonNetInternetDomainName *)fromWithNSString:(NSString *)domain {
  return ComGoogleCommonNetInternetDomainName_fromWithNSString_(domain);
}

+ (jboolean)validateSyntaxWithJavaUtilList:(id<JavaUtilList>)parts {
  return ComGoogleCommonNetInternetDomainName_validateSyntaxWithJavaUtilList_(parts);
}

+ (jboolean)validatePartWithNSString:(NSString *)part
                         withBoolean:(jboolean)isFinalPart {
  return ComGoogleCommonNetInternetDomainName_validatePartWithNSString_withBoolean_(part, isFinalPart);
}

- (ComGoogleCommonCollectImmutableList *)parts {
  return parts_;
}

- (jboolean)isPublicSuffix {
  return publicSuffixIndex_ == 0;
}

- (jboolean)hasPublicSuffix {
  return publicSuffixIndex_ != ComGoogleCommonNetInternetDomainName_NO_PUBLIC_SUFFIX_FOUND;
}

- (ComGoogleCommonNetInternetDomainName *)publicSuffix {
  return [self hasPublicSuffix] ? ComGoogleCommonNetInternetDomainName_ancestorWithInt_(self, publicSuffixIndex_) : nil;
}

- (jboolean)isUnderPublicSuffix {
  return publicSuffixIndex_ > 0;
}

- (jboolean)isTopPrivateDomain {
  return publicSuffixIndex_ == 1;
}

- (ComGoogleCommonNetInternetDomainName *)topPrivateDomain {
  if ([self isTopPrivateDomain]) {
    return self;
  }
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_withNSString_withId_([self isUnderPublicSuffix], @"Not under a public suffix: %s", name_);
  return ComGoogleCommonNetInternetDomainName_ancestorWithInt_(self, publicSuffixIndex_ - 1);
}

- (jboolean)hasParent {
  return [((ComGoogleCommonCollectImmutableList *) nil_chk(parts_)) size] > 1;
}

- (ComGoogleCommonNetInternetDomainName *)parent {
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_withNSString_withId_([self hasParent], @"Domain '%s' has no parent", name_);
  return ComGoogleCommonNetInternetDomainName_ancestorWithInt_(self, 1);
}

- (ComGoogleCommonNetInternetDomainName *)ancestorWithInt:(jint)levels {
  return ComGoogleCommonNetInternetDomainName_ancestorWithInt_(self, levels);
}

- (ComGoogleCommonNetInternetDomainName *)childWithNSString:(NSString *)leftParts {
  return ComGoogleCommonNetInternetDomainName_fromWithNSString_(JreStrcat("$C$", ComGoogleCommonBasePreconditions_checkNotNullWithId_(leftParts), '.', name_));
}

+ (jboolean)isValidWithNSString:(NSString *)name {
  return ComGoogleCommonNetInternetDomainName_isValidWithNSString_(name);
}

+ (jboolean)matchesWildcardPublicSuffixWithNSString:(NSString *)domain {
  return ComGoogleCommonNetInternetDomainName_matchesWildcardPublicSuffixWithNSString_(domain);
}

- (NSString *)description {
  return name_;
}

- (jboolean)isEqual:(id)object {
  if (object == self) {
    return true;
  }
  if ([object isKindOfClass:[ComGoogleCommonNetInternetDomainName class]]) {
    ComGoogleCommonNetInternetDomainName *that = (ComGoogleCommonNetInternetDomainName *) cast_chk(object, [ComGoogleCommonNetInternetDomainName class]);
    return [((NSString *) nil_chk(self->name_)) isEqual:((ComGoogleCommonNetInternetDomainName *) nil_chk(that))->name_];
  }
  return false;
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk(name_)) hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonNetInternetDomainName;", 0x9, 1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 2, 3, -1, 4, -1, -1 },
    { NULL, "Z", 0xa, 5, 6, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableList;", 0x1, -1, -1, -1, 7, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonNetInternetDomainName;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonNetInternetDomainName;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonNetInternetDomainName;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonNetInternetDomainName;", 0x2, 8, 9, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonNetInternetDomainName;", 0x1, 10, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 11, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 12, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 13, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 15, -1, -1, -1, 16 },
    { NULL, "I", 0x1, 17, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(findPublicSuffix);
  methods[2].selector = @selector(fromWithNSString:);
  methods[3].selector = @selector(validateSyntaxWithJavaUtilList:);
  methods[4].selector = @selector(validatePartWithNSString:withBoolean:);
  methods[5].selector = @selector(parts);
  methods[6].selector = @selector(isPublicSuffix);
  methods[7].selector = @selector(hasPublicSuffix);
  methods[8].selector = @selector(publicSuffix);
  methods[9].selector = @selector(isUnderPublicSuffix);
  methods[10].selector = @selector(isTopPrivateDomain);
  methods[11].selector = @selector(topPrivateDomain);
  methods[12].selector = @selector(hasParent);
  methods[13].selector = @selector(parent);
  methods[14].selector = @selector(ancestorWithInt:);
  methods[15].selector = @selector(childWithNSString:);
  methods[16].selector = @selector(isValidWithNSString:);
  methods[17].selector = @selector(matchesWildcardPublicSuffixWithNSString:);
  methods[18].selector = @selector(description);
  methods[19].selector = @selector(isEqual:);
  methods[20].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DOTS_MATCHER", "LComGoogleCommonBaseCharMatcher;", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
    { "DOT_SPLITTER", "LComGoogleCommonBaseSplitter;", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
    { "DOT_JOINER", "LComGoogleCommonBaseJoiner;", .constantValue.asLong = 0, 0x1a, -1, 20, -1, -1 },
    { "NO_PUBLIC_SUFFIX_FOUND", "I", .constantValue.asInt = ComGoogleCommonNetInternetDomainName_NO_PUBLIC_SUFFIX_FOUND, 0x1a, -1, -1, -1, -1 },
    { "DOT_REGEX", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 21, -1, -1 },
    { "MAX_PARTS", "I", .constantValue.asInt = ComGoogleCommonNetInternetDomainName_MAX_PARTS, 0x1a, -1, -1, -1, -1 },
    { "MAX_LENGTH", "I", .constantValue.asInt = ComGoogleCommonNetInternetDomainName_MAX_LENGTH, 0x1a, -1, -1, -1, -1 },
    { "MAX_DOMAIN_PART_LENGTH", "I", .constantValue.asInt = ComGoogleCommonNetInternetDomainName_MAX_DOMAIN_PART_LENGTH, 0x1a, -1, -1, -1, -1 },
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "parts_", "LComGoogleCommonCollectImmutableList;", .constantValue.asLong = 0, 0x12, -1, -1, 22, -1 },
    { "publicSuffixIndex_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "DASH_MATCHER", "LComGoogleCommonBaseCharMatcher;", .constantValue.asLong = 0, 0x1a, -1, 23, -1, -1 },
    { "PART_CHAR_MATCHER", "LComGoogleCommonBaseCharMatcher;", .constantValue.asLong = 0, 0x1a, -1, 24, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "from", "validateSyntax", "LJavaUtilList;", "(Ljava/util/List<Ljava/lang/String;>;)Z", "validatePart", "LNSString;Z", "()Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;", "ancestor", "I", "child", "isValid", "matchesWildcardPublicSuffix", "toString", "equals", "LNSObject;", (void *)&ComGoogleCommonNetInternetDomainName__Annotations$0, "hashCode", &ComGoogleCommonNetInternetDomainName_DOTS_MATCHER, &ComGoogleCommonNetInternetDomainName_DOT_SPLITTER, &ComGoogleCommonNetInternetDomainName_DOT_JOINER, &ComGoogleCommonNetInternetDomainName_DOT_REGEX, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;", &ComGoogleCommonNetInternetDomainName_DASH_MATCHER, &ComGoogleCommonNetInternetDomainName_PART_CHAR_MATCHER };
  static const J2ObjcClassInfo _ComGoogleCommonNetInternetDomainName = { "InternetDomainName", "com.google.common.net", ptrTable, methods, fields, 7, 0x11, 21, 13, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonNetInternetDomainName;
}

+ (void)initialize {
  if (self == [ComGoogleCommonNetInternetDomainName class]) {
    ComGoogleCommonNetInternetDomainName_DOTS_MATCHER = ComGoogleCommonBaseCharMatcher_anyOfWithJavaLangCharSequence_(@".\u3002\uff0e\uff61");
    ComGoogleCommonNetInternetDomainName_DOT_SPLITTER = ComGoogleCommonBaseSplitter_onWithChar_('.');
    ComGoogleCommonNetInternetDomainName_DOT_JOINER = ComGoogleCommonBaseJoiner_onWithChar_('.');
    ComGoogleCommonNetInternetDomainName_DASH_MATCHER = ComGoogleCommonBaseCharMatcher_anyOfWithJavaLangCharSequence_(@"-_");
    ComGoogleCommonNetInternetDomainName_PART_CHAR_MATCHER = [((ComGoogleCommonBaseCharMatcher *) nil_chk(ComGoogleCommonBaseCharMatcher_javaLetterOrDigit())) or__WithComGoogleCommonBaseCharMatcher:ComGoogleCommonNetInternetDomainName_DASH_MATCHER];
    J2OBJC_SET_INITIALIZED(ComGoogleCommonNetInternetDomainName)
  }
}

@end

void ComGoogleCommonNetInternetDomainName_initWithNSString_(ComGoogleCommonNetInternetDomainName *self, NSString *name) {
  NSObject_init(self);
  name = ComGoogleCommonBaseAscii_toLowerCaseWithNSString_([((ComGoogleCommonBaseCharMatcher *) nil_chk(ComGoogleCommonNetInternetDomainName_DOTS_MATCHER)) replaceFromWithJavaLangCharSequence:name withChar:'.']);
  if ([((NSString *) nil_chk(name)) java_hasSuffix:@"."]) {
    name = [name java_substring:0 endIndex:[name java_length] - 1];
  }
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withId_([((NSString *) nil_chk(name)) java_length] <= ComGoogleCommonNetInternetDomainName_MAX_LENGTH, @"Domain name too long: '%s':", name);
  self->name_ = name;
  self->parts_ = ComGoogleCommonCollectImmutableList_copyOfWithJavaLangIterable_([((ComGoogleCommonBaseSplitter *) nil_chk(ComGoogleCommonNetInternetDomainName_DOT_SPLITTER)) splitWithJavaLangCharSequence:name]);
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withId_([((ComGoogleCommonCollectImmutableList *) nil_chk(self->parts_)) size] <= ComGoogleCommonNetInternetDomainName_MAX_PARTS, @"Domain has too many parts: '%s'", name);
  ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withId_(ComGoogleCommonNetInternetDomainName_validateSyntaxWithJavaUtilList_(self->parts_), @"Not a valid domain name: '%s'", name);
  self->publicSuffixIndex_ = ComGoogleCommonNetInternetDomainName_findPublicSuffix(self);
}

ComGoogleCommonNetInternetDomainName *new_ComGoogleCommonNetInternetDomainName_initWithNSString_(NSString *name) {
  J2OBJC_NEW_IMPL(ComGoogleCommonNetInternetDomainName, initWithNSString_, name)
}

ComGoogleCommonNetInternetDomainName *create_ComGoogleCommonNetInternetDomainName_initWithNSString_(NSString *name) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonNetInternetDomainName, initWithNSString_, name)
}

jint ComGoogleCommonNetInternetDomainName_findPublicSuffix(ComGoogleCommonNetInternetDomainName *self) {
  jint partsSize = [((ComGoogleCommonCollectImmutableList *) nil_chk(self->parts_)) size];
  for (jint i = 0; i < partsSize; i++) {
    NSString *ancestorName = [((ComGoogleCommonBaseJoiner *) nil_chk(ComGoogleCommonNetInternetDomainName_DOT_JOINER)) joinWithJavaLangIterable:[self->parts_ subListWithInt:i withInt:partsSize]];
    if ([((ComGoogleCommonCollectImmutableMap *) nil_chk(JreLoadStatic(ComGoogleThirdpartyPublicsuffixPublicSuffixPatterns, EXACT))) containsKeyWithId:ancestorName]) {
      return i;
    }
    if ([((ComGoogleCommonCollectImmutableMap *) nil_chk(JreLoadStatic(ComGoogleThirdpartyPublicsuffixPublicSuffixPatterns, EXCLUDED))) containsKeyWithId:ancestorName]) {
      return i + 1;
    }
    if (ComGoogleCommonNetInternetDomainName_matchesWildcardPublicSuffixWithNSString_(ancestorName)) {
      return i;
    }
  }
  return ComGoogleCommonNetInternetDomainName_NO_PUBLIC_SUFFIX_FOUND;
}

ComGoogleCommonNetInternetDomainName *ComGoogleCommonNetInternetDomainName_fromWithNSString_(NSString *domain) {
  ComGoogleCommonNetInternetDomainName_initialize();
  return new_ComGoogleCommonNetInternetDomainName_initWithNSString_(ComGoogleCommonBasePreconditions_checkNotNullWithId_(domain));
}

jboolean ComGoogleCommonNetInternetDomainName_validateSyntaxWithJavaUtilList_(id<JavaUtilList> parts) {
  ComGoogleCommonNetInternetDomainName_initialize();
  jint lastIndex = [((id<JavaUtilList>) nil_chk(parts)) size] - 1;
  if (!ComGoogleCommonNetInternetDomainName_validatePartWithNSString_withBoolean_([parts getWithInt:lastIndex], true)) {
    return false;
  }
  for (jint i = 0; i < lastIndex; i++) {
    NSString *part = [parts getWithInt:i];
    if (!ComGoogleCommonNetInternetDomainName_validatePartWithNSString_withBoolean_(part, false)) {
      return false;
    }
  }
  return true;
}

jboolean ComGoogleCommonNetInternetDomainName_validatePartWithNSString_withBoolean_(NSString *part, jboolean isFinalPart) {
  ComGoogleCommonNetInternetDomainName_initialize();
  if ([((NSString *) nil_chk(part)) java_length] < 1 || [part java_length] > ComGoogleCommonNetInternetDomainName_MAX_DOMAIN_PART_LENGTH) {
    return false;
  }
  NSString *asciiChars = [((ComGoogleCommonBaseCharMatcher *) nil_chk(ComGoogleCommonBaseCharMatcher_ascii())) retainFromWithJavaLangCharSequence:part];
  if (![((ComGoogleCommonBaseCharMatcher *) nil_chk(ComGoogleCommonNetInternetDomainName_PART_CHAR_MATCHER)) matchesAllOfWithJavaLangCharSequence:asciiChars]) {
    return false;
  }
  if ([((ComGoogleCommonBaseCharMatcher *) nil_chk(ComGoogleCommonNetInternetDomainName_DASH_MATCHER)) matchesWithChar:[part charAtWithInt:0]] || [ComGoogleCommonNetInternetDomainName_DASH_MATCHER matchesWithChar:[part charAtWithInt:[part java_length] - 1]]) {
    return false;
  }
  if (isFinalPart && [((ComGoogleCommonBaseCharMatcher *) nil_chk(ComGoogleCommonBaseCharMatcher_digit())) matchesWithChar:[part charAtWithInt:0]]) {
    return false;
  }
  return true;
}

ComGoogleCommonNetInternetDomainName *ComGoogleCommonNetInternetDomainName_ancestorWithInt_(ComGoogleCommonNetInternetDomainName *self, jint levels) {
  return ComGoogleCommonNetInternetDomainName_fromWithNSString_([((ComGoogleCommonBaseJoiner *) nil_chk(ComGoogleCommonNetInternetDomainName_DOT_JOINER)) joinWithJavaLangIterable:[((ComGoogleCommonCollectImmutableList *) nil_chk(self->parts_)) subListWithInt:levels withInt:[self->parts_ size]]]);
}

jboolean ComGoogleCommonNetInternetDomainName_isValidWithNSString_(NSString *name) {
  ComGoogleCommonNetInternetDomainName_initialize();
  @try {
    (void) ComGoogleCommonNetInternetDomainName_fromWithNSString_(name);
    return true;
  }
  @catch (JavaLangIllegalArgumentException *e) {
    return false;
  }
}

jboolean ComGoogleCommonNetInternetDomainName_matchesWildcardPublicSuffixWithNSString_(NSString *domain) {
  ComGoogleCommonNetInternetDomainName_initialize();
  IOSObjectArray *pieces = [((NSString *) nil_chk(domain)) java_split:ComGoogleCommonNetInternetDomainName_DOT_REGEX limit:2];
  return ((IOSObjectArray *) nil_chk(pieces))->size_ == 2 && [((ComGoogleCommonCollectImmutableMap *) nil_chk(JreLoadStatic(ComGoogleThirdpartyPublicsuffixPublicSuffixPatterns, UNDER))) containsKeyWithId:IOSObjectArray_Get(pieces, 1)];
}

IOSObjectArray *ComGoogleCommonNetInternetDomainName__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonNetInternetDomainName)
