//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/net/kebernet/configuration/client/model/SettingValue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetKebernetConfigurationClientModelSettingValue")
#ifdef RESTRICT_NetKebernetConfigurationClientModelSettingValue
#define INCLUDE_ALL_NetKebernetConfigurationClientModelSettingValue 0
#else
#define INCLUDE_ALL_NetKebernetConfigurationClientModelSettingValue 1
#endif
#undef RESTRICT_NetKebernetConfigurationClientModelSettingValue

#if !defined (ERMSettingValue_) && (INCLUDE_ALL_NetKebernetConfigurationClientModelSettingValue || defined(INCLUDE_ERMSettingValue))
#define ERMSettingValue_

@interface ERMSettingValue : NSObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value;

- (jboolean)isEqual:(id)o;

- (NSString *)getName;

- (NSString *)getValue;

- (NSUInteger)hash;

- (void)setNameWithNSString:(NSString *)name;

- (void)setValueWithNSString:(NSString *)value;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ERMSettingValue)

FOUNDATION_EXPORT void ERMSettingValue_init(ERMSettingValue *self);

FOUNDATION_EXPORT ERMSettingValue *new_ERMSettingValue_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ERMSettingValue *create_ERMSettingValue_init();

FOUNDATION_EXPORT void ERMSettingValue_initWithNSString_withNSString_(ERMSettingValue *self, NSString *name, NSString *value);

FOUNDATION_EXPORT ERMSettingValue *new_ERMSettingValue_initWithNSString_withNSString_(NSString *name, NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ERMSettingValue *create_ERMSettingValue_initWithNSString_withNSString_(NSString *name, NSString *value);

J2OBJC_TYPE_LITERAL_HEADER(ERMSettingValue)

@compatibility_alias NetKebernetConfigurationClientModelSettingValue ERMSettingValue;

#endif

#pragma pop_macro("INCLUDE_ALL_NetKebernetConfigurationClientModelSettingValue")