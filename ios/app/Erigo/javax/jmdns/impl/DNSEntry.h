//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/impl/DNSEntry.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxJmdnsImplDNSEntry")
#ifdef RESTRICT_JavaxJmdnsImplDNSEntry
#define INCLUDE_ALL_JavaxJmdnsImplDNSEntry 0
#else
#define INCLUDE_ALL_JavaxJmdnsImplDNSEntry 1
#endif
#undef RESTRICT_JavaxJmdnsImplDNSEntry

#if !defined (JavaxJmdnsImplDNSEntry_) && (INCLUDE_ALL_JavaxJmdnsImplDNSEntry || defined(INCLUDE_JavaxJmdnsImplDNSEntry))
#define JavaxJmdnsImplDNSEntry_

@class IOSByteArray;
@class JavaIoDataOutputStream;
@class JavaLangStringBuilder;
@class JavaxJmdnsImplConstantsDNSRecordClass;
@class JavaxJmdnsImplConstantsDNSRecordType;
@protocol JavaUtilMap;

@interface JavaxJmdnsImplDNSEntry : NSObject {
 @public
  id<JavaUtilMap> _qualifiedNameMap_;
}

#pragma mark Public

- (jint)compareToWithJavaxJmdnsImplDNSEntry:(JavaxJmdnsImplDNSEntry *)that;

- (jboolean)isEqual:(id)obj;

- (NSString *)getKey;

- (NSString *)getName;

- (id<JavaUtilMap>)getQualifiedNameMap;

- (JavaxJmdnsImplConstantsDNSRecordClass *)getRecordClass;

- (JavaxJmdnsImplConstantsDNSRecordType *)getRecordType;

- (NSString *)getSubtype;

- (NSString *)getType;

- (NSUInteger)hash;

- (jboolean)isDomainDiscoveryQuery;

- (jboolean)isExpiredWithLong:(jlong)now;

- (jboolean)isReverseLookup;

- (jboolean)isSameEntryWithJavaxJmdnsImplDNSEntry:(JavaxJmdnsImplDNSEntry *)entry_;

- (jboolean)isSameRecordClassWithJavaxJmdnsImplDNSEntry:(JavaxJmdnsImplDNSEntry *)entry_;

- (jboolean)isSameTypeWithJavaxJmdnsImplDNSEntry:(JavaxJmdnsImplDNSEntry *)entry_;

- (jboolean)isServicesDiscoveryMetaQuery;

- (jboolean)isStaleWithLong:(jlong)now;

- (jboolean)isUnique;

- (jboolean)isV4ReverseLookup;

- (jboolean)isV6ReverseLookup;

- (jboolean)sameSubtypeWithJavaxJmdnsImplDNSEntry:(JavaxJmdnsImplDNSEntry *)other;

- (NSString *)description;

#pragma mark Protected

- (IOSByteArray *)toByteArray;

- (void)toByteArrayWithJavaIoDataOutputStream:(JavaIoDataOutputStream *)dout;

- (void)toStringWithJavaLangStringBuilder:(JavaLangStringBuilder *)aLog;

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)name
withJavaxJmdnsImplConstantsDNSRecordType:(JavaxJmdnsImplConstantsDNSRecordType *)type
withJavaxJmdnsImplConstantsDNSRecordClass:(JavaxJmdnsImplConstantsDNSRecordClass *)recordClass
                     withBoolean:(jboolean)unique;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxJmdnsImplDNSEntry)

J2OBJC_FIELD_SETTER(JavaxJmdnsImplDNSEntry, _qualifiedNameMap_, id<JavaUtilMap>)

FOUNDATION_EXPORT void JavaxJmdnsImplDNSEntry_initWithNSString_withJavaxJmdnsImplConstantsDNSRecordType_withJavaxJmdnsImplConstantsDNSRecordClass_withBoolean_(JavaxJmdnsImplDNSEntry *self, NSString *name, JavaxJmdnsImplConstantsDNSRecordType *type, JavaxJmdnsImplConstantsDNSRecordClass *recordClass, jboolean unique);

J2OBJC_TYPE_LITERAL_HEADER(JavaxJmdnsImplDNSEntry)

#endif

#pragma pop_macro("INCLUDE_ALL_JavaxJmdnsImplDNSEntry")
