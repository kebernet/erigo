//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/net/kebernet/configuration/client/model/Device.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/MoreObjects.h"
#include "com/google/common/base/Objects.h"
#include "io/swagger/annotations/ApiModelProperty.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/logging/Logger.h"
#include "net/kebernet/configuration/client/model/Device.h"
#include "net/kebernet/configuration/client/util/URIUtil.h"

@interface ERMDevice () {
 @public
  NSString *address_;
  NSString *name_;
  NSString *type_;
  NSString *manufacturer_;
  NSString *thumbnailUrl_;
  NSString *settingsUrl_;
  NSString *settingsValuesUrl_;
  NSString *webUiUrl_;
  NSString *tlsCertificateUrl_;
}

@end

J2OBJC_FIELD_SETTER(ERMDevice, address_, NSString *)
J2OBJC_FIELD_SETTER(ERMDevice, name_, NSString *)
J2OBJC_FIELD_SETTER(ERMDevice, type_, NSString *)
J2OBJC_FIELD_SETTER(ERMDevice, manufacturer_, NSString *)
J2OBJC_FIELD_SETTER(ERMDevice, thumbnailUrl_, NSString *)
J2OBJC_FIELD_SETTER(ERMDevice, settingsUrl_, NSString *)
J2OBJC_FIELD_SETTER(ERMDevice, settingsValuesUrl_, NSString *)
J2OBJC_FIELD_SETTER(ERMDevice, webUiUrl_, NSString *)
J2OBJC_FIELD_SETTER(ERMDevice, tlsCertificateUrl_, NSString *)

inline JavaUtilLoggingLogger *ERMDevice_get_LOGGER();
static JavaUtilLoggingLogger *ERMDevice_LOGGER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ERMDevice, LOGGER, JavaUtilLoggingLogger *)

__attribute__((unused)) static IOSObjectArray *ERMDevice__Annotations$0();

__attribute__((unused)) static IOSObjectArray *ERMDevice__Annotations$1();

__attribute__((unused)) static IOSObjectArray *ERMDevice__Annotations$2();

__attribute__((unused)) static IOSObjectArray *ERMDevice__Annotations$3();

__attribute__((unused)) static IOSObjectArray *ERMDevice__Annotations$4();

__attribute__((unused)) static IOSObjectArray *ERMDevice__Annotations$5();

__attribute__((unused)) static IOSObjectArray *ERMDevice__Annotations$6();

__attribute__((unused)) static IOSObjectArray *ERMDevice__Annotations$7();

__attribute__((unused)) static IOSObjectArray *ERMDevice__Annotations$8();

J2OBJC_INITIALIZED_DEFN(ERMDevice)

@implementation ERMDevice

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ERMDevice_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getAddress {
  return address_;
}

- (void)setAddressWithNSString:(NSString *)address {
  self->address_ = address;
}

- (NSString *)getName {
  return name_;
}

- (void)setNameWithNSString:(NSString *)name {
  self->name_ = name;
}

- (NSString *)getType {
  return type_;
}

- (void)setTypeWithNSString:(NSString *)type {
  self->type_ = type;
}

- (NSString *)getManufacturer {
  return manufacturer_;
}

- (void)setManufacturerWithNSString:(NSString *)manufacturer {
  self->manufacturer_ = manufacturer;
}

- (NSString *)getThumbnailUrl {
  return NetKebernetConfigurationClientUtilURIUtil_resolveRelativeURIWithNSString_withNSString_([self getAddress], self->thumbnailUrl_);
}

- (void)setThumbnailUrlWithNSString:(NSString *)thumbnailUrl {
  self->thumbnailUrl_ = thumbnailUrl;
}

- (NSString *)getSettingsUrl {
  return NetKebernetConfigurationClientUtilURIUtil_resolveRelativeURIWithNSString_withNSString_([self getAddress], self->settingsUrl_);
}

- (void)setSettingsUrlWithNSString:(NSString *)settingsUrl {
  self->settingsUrl_ = settingsUrl;
}

- (NSString *)getSettingsValuesUrl {
  return NetKebernetConfigurationClientUtilURIUtil_resolveRelativeURIWithNSString_withNSString_([self getAddress], settingsValuesUrl_);
}

- (void)setSettingsValuesUrlWithNSString:(NSString *)settingsValuesUrl {
  self->settingsValuesUrl_ = settingsValuesUrl;
}

- (NSString *)getWebUiUrl {
  return NetKebernetConfigurationClientUtilURIUtil_resolveRelativeURIWithNSString_withNSString_([self getAddress], webUiUrl_);
}

- (void)setWebUiUrlWithNSString:(NSString *)webUiUrl {
  self->webUiUrl_ = webUiUrl;
}

- (NSString *)getTlsCertificateUrl {
  return tlsCertificateUrl_;
}

- (void)setTlsCertificateUrlWithNSString:(NSString *)tlsCertificateUrl {
  self->tlsCertificateUrl_ = tlsCertificateUrl;
}

- (NSString *)description {
  return [((GVBMoreObjects_ToStringHelper *) nil_chk([((GVBMoreObjects_ToStringHelper *) nil_chk([((GVBMoreObjects_ToStringHelper *) nil_chk([((GVBMoreObjects_ToStringHelper *) nil_chk([((GVBMoreObjects_ToStringHelper *) nil_chk([((GVBMoreObjects_ToStringHelper *) nil_chk([((GVBMoreObjects_ToStringHelper *) nil_chk([((GVBMoreObjects_ToStringHelper *) nil_chk([((GVBMoreObjects_ToStringHelper *) nil_chk([((GVBMoreObjects_ToStringHelper *) nil_chk(GVBMoreObjects_toStringHelperWithId_(self))) addWithNSString:@"address" withId:address_])) addWithNSString:@"name" withId:name_])) addWithNSString:@"type" withId:type_])) addWithNSString:@"manufacturer" withId:manufacturer_])) addWithNSString:@"thumbnailUrl" withId:thumbnailUrl_])) addWithNSString:@"settingsUrl" withId:settingsUrl_])) addWithNSString:@"settingsValuesUrl" withId:settingsValuesUrl_])) addWithNSString:@"webUiUrl" withId:webUiUrl_])) addWithNSString:@"tlsCertificateUrl" withId:tlsCertificateUrl_])) description];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (!([o isKindOfClass:[ERMDevice class]])) return false;
  ERMDevice *device = (ERMDevice *) cast_chk(o, [ERMDevice class]);
  return GVBObjects_equalWithId_withId_(address_, ((ERMDevice *) nil_chk(device))->address_) && GVBObjects_equalWithId_withId_(name_, device->name_) && GVBObjects_equalWithId_withId_(type_, device->type_) && GVBObjects_equalWithId_withId_(manufacturer_, device->manufacturer_) && GVBObjects_equalWithId_withId_(thumbnailUrl_, device->thumbnailUrl_) && GVBObjects_equalWithId_withId_(settingsUrl_, device->settingsUrl_) && GVBObjects_equalWithId_withId_(settingsValuesUrl_, device->settingsValuesUrl_) && GVBObjects_equalWithId_withId_(webUiUrl_, device->webUiUrl_) && GVBObjects_equalWithId_withId_(tlsCertificateUrl_, device->tlsCertificateUrl_);
}

- (NSUInteger)hash {
  return GVBObjects_hashCodeWithNSObjectArray_([IOSObjectArray newArrayWithObjects:(id[]){ address_, name_, type_, manufacturer_, thumbnailUrl_, settingsUrl_, webUiUrl_, tlsCertificateUrl_ } count:8 type:NSObject_class_()]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, 0, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, 3, -1 },
    { NULL, "V", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, 5, -1 },
    { NULL, "V", 0x1, 6, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, 7, -1 },
    { NULL, "V", 0x1, 8, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, 9, -1 },
    { NULL, "V", 0x1, 10, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, 11, -1 },
    { NULL, "V", 0x1, 12, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, 13, -1 },
    { NULL, "V", 0x1, 14, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, 15, -1 },
    { NULL, "V", 0x1, 16, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, 17, -1 },
    { NULL, "V", 0x1, 18, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 19, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 20, 21, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 22, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getAddress);
  methods[2].selector = @selector(setAddressWithNSString:);
  methods[3].selector = @selector(getName);
  methods[4].selector = @selector(setNameWithNSString:);
  methods[5].selector = @selector(getType);
  methods[6].selector = @selector(setTypeWithNSString:);
  methods[7].selector = @selector(getManufacturer);
  methods[8].selector = @selector(setManufacturerWithNSString:);
  methods[9].selector = @selector(getThumbnailUrl);
  methods[10].selector = @selector(setThumbnailUrlWithNSString:);
  methods[11].selector = @selector(getSettingsUrl);
  methods[12].selector = @selector(setSettingsUrlWithNSString:);
  methods[13].selector = @selector(getSettingsValuesUrl);
  methods[14].selector = @selector(setSettingsValuesUrlWithNSString:);
  methods[15].selector = @selector(getWebUiUrl);
  methods[16].selector = @selector(setWebUiUrlWithNSString:);
  methods[17].selector = @selector(getTlsCertificateUrl);
  methods[18].selector = @selector(setTlsCertificateUrlWithNSString:);
  methods[19].selector = @selector(description);
  methods[20].selector = @selector(isEqual:);
  methods[21].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LOGGER", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0x1a, -1, 23, -1, -1 },
    { "address_", "LNSString;", .constantValue.asLong = 0, 0x82, -1, -1, -1, -1 },
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "type_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "manufacturer_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "thumbnailUrl_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "settingsUrl_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "settingsValuesUrl_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "webUiUrl_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "tlsCertificateUrl_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&ERMDevice__Annotations$0, "setAddress", "LNSString;", (void *)&ERMDevice__Annotations$1, "setName", (void *)&ERMDevice__Annotations$2, "setType", (void *)&ERMDevice__Annotations$3, "setManufacturer", (void *)&ERMDevice__Annotations$4, "setThumbnailUrl", (void *)&ERMDevice__Annotations$5, "setSettingsUrl", (void *)&ERMDevice__Annotations$6, "setSettingsValuesUrl", (void *)&ERMDevice__Annotations$7, "setWebUiUrl", (void *)&ERMDevice__Annotations$8, "setTlsCertificateUrl", "toString", "equals", "LNSObject;", "hashCode", &ERMDevice_LOGGER };
  static const J2ObjcClassInfo _ERMDevice = { "Device", "net.kebernet.configuration.client.model", ptrTable, methods, fields, 7, 0x1, 22, 10, -1, -1, -1, -1, -1 };
  return &_ERMDevice;
}

+ (void)initialize {
  if (self == [ERMDevice class]) {
    ERMDevice_LOGGER = JavaUtilLoggingLogger_getLoggerWithNSString_([ERMDevice_class_() getCanonicalName]);
    J2OBJC_SET_INITIALIZED(ERMDevice)
  }
}

@end

void ERMDevice_init(ERMDevice *self) {
  NSObject_init(self);
}

ERMDevice *new_ERMDevice_init() {
  J2OBJC_NEW_IMPL(ERMDevice, init)
}

ERMDevice *create_ERMDevice_init() {
  J2OBJC_CREATE_IMPL(ERMDevice, init)
}

IOSObjectArray *ERMDevice__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsApiModelProperty(@"", @"", @"", @"", true, @"", @"", 0, false, @"", false, @"") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ERMDevice__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsApiModelProperty(@"", @"", @"", @"", false, @"", @"", 0, false, @"", false, @"The name of the device") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ERMDevice__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsApiModelProperty(@"", @"", @"", @"", false, @"", @"", 0, false, @"", false, @"The type of the device") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ERMDevice__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsApiModelProperty(@"", @"", @"", @"", false, @"", @"", 0, false, @"", false, @"The manufacturer of the device") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ERMDevice__Annotations$4() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsApiModelProperty(@"", @"", @"", @"", false, @"", @"", 0, false, @"", false, @"URL to a thumbnail/icon for the device. May be a relative path.") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ERMDevice__Annotations$5() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsApiModelProperty(@"", @"", @"", @"", false, @"", @"", 0, false, @"", false, @"URL to a thumbnail/icon for the device. May be a relative path.") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ERMDevice__Annotations$6() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsApiModelProperty(@"", @"", @"", @"", false, @"", @"", 0, false, @"", false, @"URL to a settings endpoint of the device. May be a relative path.") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ERMDevice__Annotations$7() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsApiModelProperty(@"", @"", @"", @"", false, @"", @"", 0, false, @"", false, @"Optional: If the device has a web ui for administration, URL here. May be a relative path.") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *ERMDevice__Annotations$8() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_IoSwaggerAnnotationsApiModelProperty(@"", @"", @"", @"", false, @"", @"", 0, false, @"", false, @"Optional: URL to the TLS certificate for the device.. May be a relative path.") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ERMDevice)