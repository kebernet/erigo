//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/javax/jmdns/impl/DNSIncoming.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxJmdnsImplDNSIncoming")
#ifdef RESTRICT_JavaxJmdnsImplDNSIncoming
#define INCLUDE_ALL_JavaxJmdnsImplDNSIncoming 0
#else
#define INCLUDE_ALL_JavaxJmdnsImplDNSIncoming 1
#endif
#undef RESTRICT_JavaxJmdnsImplDNSIncoming

#if !defined (JavaxJmdnsImplDNSIncoming_) && (INCLUDE_ALL_JavaxJmdnsImplDNSIncoming || defined(INCLUDE_JavaxJmdnsImplDNSIncoming))
#define JavaxJmdnsImplDNSIncoming_

#define RESTRICT_JavaxJmdnsImplDNSMessage 1
#define INCLUDE_JavaxJmdnsImplDNSMessage 1
#include "javax/jmdns/impl/DNSMessage.h"

@class JavaNetDatagramPacket;

@interface JavaxJmdnsImplDNSIncoming : JavaxJmdnsImplDNSMessage

#pragma mark Public

- (instancetype)initWithJavaNetDatagramPacket:(JavaNetDatagramPacket *)packet;

- (JavaxJmdnsImplDNSIncoming *)java_clone;

- (jint)elapseSinceArrival;

- (jint)getSenderUDPPayload;

- (NSString *)description;

#pragma mark Package-Private

- (void)appendWithJavaxJmdnsImplDNSIncoming:(JavaxJmdnsImplDNSIncoming *)that;

- (NSString *)printWithBoolean:(jboolean)dump;

@end

J2OBJC_STATIC_INIT(JavaxJmdnsImplDNSIncoming)

inline jboolean JavaxJmdnsImplDNSIncoming_get_USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET();
inline jboolean JavaxJmdnsImplDNSIncoming_set_USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET(jboolean value);
inline jboolean *JavaxJmdnsImplDNSIncoming_getRef_USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jboolean JavaxJmdnsImplDNSIncoming_USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET;
J2OBJC_STATIC_FIELD_PRIMITIVE(JavaxJmdnsImplDNSIncoming, USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET, jboolean)

FOUNDATION_EXPORT void JavaxJmdnsImplDNSIncoming_initWithJavaNetDatagramPacket_(JavaxJmdnsImplDNSIncoming *self, JavaNetDatagramPacket *packet);

FOUNDATION_EXPORT JavaxJmdnsImplDNSIncoming *new_JavaxJmdnsImplDNSIncoming_initWithJavaNetDatagramPacket_(JavaNetDatagramPacket *packet) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxJmdnsImplDNSIncoming *create_JavaxJmdnsImplDNSIncoming_initWithJavaNetDatagramPacket_(JavaNetDatagramPacket *packet);

J2OBJC_TYPE_LITERAL_HEADER(JavaxJmdnsImplDNSIncoming)

#endif

#if !defined (JavaxJmdnsImplDNSIncoming_MessageInputStream_) && (INCLUDE_ALL_JavaxJmdnsImplDNSIncoming || defined(INCLUDE_JavaxJmdnsImplDNSIncoming_MessageInputStream))
#define JavaxJmdnsImplDNSIncoming_MessageInputStream_

#define RESTRICT_JavaIoByteArrayInputStream 1
#define INCLUDE_JavaIoByteArrayInputStream 1
#include "java/io/ByteArrayInputStream.h"

@class IOSByteArray;
@protocol JavaUtilMap;

@interface JavaxJmdnsImplDNSIncoming_MessageInputStream : JavaIoByteArrayInputStream {
 @public
  id<JavaUtilMap> _names_;
}

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)buffer
                          withInt:(jint)length;

- (instancetype)initWithByteArray:(IOSByteArray *)buffer
                          withInt:(jint)offset
                          withInt:(jint)length;

- (jint)readByte;

- (IOSByteArray *)readBytesWithInt:(jint)len;

- (jint)readInt;

- (NSString *)readName;

- (NSString *)readNonNameString;

- (jint)readUnsignedShort;

- (NSString *)readUTFWithInt:(jint)len;

#pragma mark Protected

- (jint)peek;

@end

J2OBJC_STATIC_INIT(JavaxJmdnsImplDNSIncoming_MessageInputStream)

J2OBJC_FIELD_SETTER(JavaxJmdnsImplDNSIncoming_MessageInputStream, _names_, id<JavaUtilMap>)

FOUNDATION_EXPORT void JavaxJmdnsImplDNSIncoming_MessageInputStream_initWithByteArray_withInt_(JavaxJmdnsImplDNSIncoming_MessageInputStream *self, IOSByteArray *buffer, jint length);

FOUNDATION_EXPORT JavaxJmdnsImplDNSIncoming_MessageInputStream *new_JavaxJmdnsImplDNSIncoming_MessageInputStream_initWithByteArray_withInt_(IOSByteArray *buffer, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxJmdnsImplDNSIncoming_MessageInputStream *create_JavaxJmdnsImplDNSIncoming_MessageInputStream_initWithByteArray_withInt_(IOSByteArray *buffer, jint length);

FOUNDATION_EXPORT void JavaxJmdnsImplDNSIncoming_MessageInputStream_initWithByteArray_withInt_withInt_(JavaxJmdnsImplDNSIncoming_MessageInputStream *self, IOSByteArray *buffer, jint offset, jint length);

FOUNDATION_EXPORT JavaxJmdnsImplDNSIncoming_MessageInputStream *new_JavaxJmdnsImplDNSIncoming_MessageInputStream_initWithByteArray_withInt_withInt_(IOSByteArray *buffer, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxJmdnsImplDNSIncoming_MessageInputStream *create_JavaxJmdnsImplDNSIncoming_MessageInputStream_initWithByteArray_withInt_withInt_(IOSByteArray *buffer, jint offset, jint length);

J2OBJC_TYPE_LITERAL_HEADER(JavaxJmdnsImplDNSIncoming_MessageInputStream)

#endif

#pragma pop_macro("INCLUDE_ALL_JavaxJmdnsImplDNSIncoming")
