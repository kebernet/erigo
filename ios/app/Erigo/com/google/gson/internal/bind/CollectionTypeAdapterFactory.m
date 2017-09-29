//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/gson/internal/bind/CollectionTypeAdapterFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/gson/Gson.h"
#include "com/google/gson/TypeAdapter.h"
#include "com/google/gson/internal/$Gson$Types.h"
#include "com/google/gson/internal/ConstructorConstructor.h"
#include "com/google/gson/internal/ObjectConstructor.h"
#include "com/google/gson/internal/bind/CollectionTypeAdapterFactory.h"
#include "com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper.h"
#include "com/google/gson/reflect/TypeToken.h"
#include "com/google/gson/stream/JsonReader.h"
#include "com/google/gson/stream/JsonToken.h"
#include "com/google/gson/stream/JsonWriter.h"
#include "java/lang/reflect/Type.h"
#include "java/util/Collection.h"

@class ComGoogleGsonJsonElement;
@class JavaIoReader;

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ComGoogleGsonInternalBindCollectionTypeAdapterFactory () {
 @public
  ComGoogleGsonInternalConstructorConstructor *constructorConstructor_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindCollectionTypeAdapterFactory, constructorConstructor_, ComGoogleGsonInternalConstructorConstructor *)

@interface ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter : ComGoogleGsonTypeAdapter {
 @public
  ComGoogleGsonTypeAdapter *elementTypeAdapter_;
  id<ComGoogleGsonInternalObjectConstructor> constructor_;
}

- (instancetype)initWithComGoogleGsonGson:(ComGoogleGsonGson *)context
                  withJavaLangReflectType:(id<JavaLangReflectType>)elementType
             withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)elementTypeAdapter
withComGoogleGsonInternalObjectConstructor:(id<ComGoogleGsonInternalObjectConstructor>)constructor;

- (id<JavaUtilCollection>)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg;

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id<JavaUtilCollection>)collection;

- (id<JavaUtilCollection>)fromJsonWithJavaIoReader:(JavaIoReader *)arg0;

- (id<JavaUtilCollection>)fromJsonTreeWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)arg0;

- (id<JavaUtilCollection>)fromJsonWithNSString:(NSString *)arg0;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter)

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter, elementTypeAdapter_, ComGoogleGsonTypeAdapter *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter, constructor_, id<ComGoogleGsonInternalObjectConstructor>)

__attribute__((unused)) static void ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *self, ComGoogleGsonGson *context, id<JavaLangReflectType> elementType, ComGoogleGsonTypeAdapter *elementTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor);

__attribute__((unused)) static ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *new_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonGson *context, id<JavaLangReflectType> elementType, ComGoogleGsonTypeAdapter *elementTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *create_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonGson *context, id<JavaLangReflectType> elementType, ComGoogleGsonTypeAdapter *elementTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter)

@implementation ComGoogleGsonInternalBindCollectionTypeAdapterFactory

- (instancetype)initWithComGoogleGsonInternalConstructorConstructor:(ComGoogleGsonInternalConstructorConstructor *)constructorConstructor {
  ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(self, constructorConstructor);
  return self;
}

- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken {
  id<JavaLangReflectType> type = [((ComGoogleGsonReflectTypeToken *) nil_chk(typeToken)) getType];
  IOSClass *rawType = [typeToken getRawType];
  if (![JavaUtilCollection_class_() isAssignableFrom:rawType]) {
    return nil;
  }
  id<JavaLangReflectType> elementType = ComGoogleGsonInternal_Gson_Types_getCollectionElementTypeWithJavaLangReflectType_withIOSClass_(type, rawType);
  ComGoogleGsonTypeAdapter *elementTypeAdapter = [((ComGoogleGsonGson *) nil_chk(gson)) getAdapterWithComGoogleGsonReflectTypeToken:ComGoogleGsonReflectTypeToken_getWithJavaLangReflectType_(elementType)];
  id<ComGoogleGsonInternalObjectConstructor> constructor = [((ComGoogleGsonInternalConstructorConstructor *) nil_chk(constructorConstructor_)) getWithComGoogleGsonReflectTypeToken:typeToken];
  ComGoogleGsonTypeAdapter *result = new_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(gson, elementType, elementTypeAdapter, constructor);
  return result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LComGoogleGsonTypeAdapter;", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleGsonInternalConstructorConstructor:);
  methods[1].selector = @selector(createWithComGoogleGsonGson:withComGoogleGsonReflectTypeToken:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "constructorConstructor_", "LComGoogleGsonInternalConstructorConstructor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleGsonInternalConstructorConstructor;", "create", "LComGoogleGsonGson;LComGoogleGsonReflectTypeToken;", "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;", "LComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindCollectionTypeAdapterFactory = { "CollectionTypeAdapterFactory", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, 4, -1, -1, -1 };
  return &_ComGoogleGsonInternalBindCollectionTypeAdapterFactory;
}

@end

void ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(ComGoogleGsonInternalBindCollectionTypeAdapterFactory *self, ComGoogleGsonInternalConstructorConstructor *constructorConstructor) {
  NSObject_init(self);
  self->constructorConstructor_ = constructorConstructor;
}

ComGoogleGsonInternalBindCollectionTypeAdapterFactory *new_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(ComGoogleGsonInternalConstructorConstructor *constructorConstructor) {
  J2OBJC_NEW_IMPL(ComGoogleGsonInternalBindCollectionTypeAdapterFactory, initWithComGoogleGsonInternalConstructorConstructor_, constructorConstructor)
}

ComGoogleGsonInternalBindCollectionTypeAdapterFactory *create_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(ComGoogleGsonInternalConstructorConstructor *constructorConstructor) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInternalBindCollectionTypeAdapterFactory, initWithComGoogleGsonInternalConstructorConstructor_, constructorConstructor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindCollectionTypeAdapterFactory)

@implementation ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter

- (instancetype)initWithComGoogleGsonGson:(ComGoogleGsonGson *)context
                  withJavaLangReflectType:(id<JavaLangReflectType>)elementType
             withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)elementTypeAdapter
withComGoogleGsonInternalObjectConstructor:(id<ComGoogleGsonInternalObjectConstructor>)constructor {
  ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(self, context, elementType, elementTypeAdapter, constructor);
  return self;
}

- (id<JavaUtilCollection>)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg {
  if ([((ComGoogleGsonStreamJsonReader *) nil_chk(inArg)) peek] == JreLoadEnum(ComGoogleGsonStreamJsonToken, NULL)) {
    [inArg nextNull];
    return nil;
  }
  id<JavaUtilCollection> collection = [((id<ComGoogleGsonInternalObjectConstructor>) nil_chk(constructor_)) construct];
  [inArg beginArray];
  while ([inArg hasNext]) {
    id instance = [((ComGoogleGsonTypeAdapter *) nil_chk(elementTypeAdapter_)) readWithComGoogleGsonStreamJsonReader:inArg];
    [((id<JavaUtilCollection>) nil_chk(collection)) addWithId:instance];
  }
  [inArg endArray];
  return collection;
}

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id<JavaUtilCollection>)collection {
  if (collection == nil) {
    (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) beginArray];
  for (id __strong element in collection) {
    [((ComGoogleGsonTypeAdapter *) nil_chk(elementTypeAdapter_)) writeWithComGoogleGsonStreamJsonWriter:outArg withId:element];
  }
  (void) [outArg endArray];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, 2, 3, 4, 5, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 4, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleGsonGson:withJavaLangReflectType:withComGoogleGsonTypeAdapter:withComGoogleGsonInternalObjectConstructor:);
  methods[1].selector = @selector(readWithComGoogleGsonStreamJsonReader:);
  methods[2].selector = @selector(writeWithComGoogleGsonStreamJsonWriter:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "elementTypeAdapter_", "LComGoogleGsonTypeAdapter;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
    { "constructor_", "LComGoogleGsonInternalObjectConstructor;", .constantValue.asLong = 0, 0x12, -1, -1, 10, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleGsonGson;LJavaLangReflectType;LComGoogleGsonTypeAdapter;LComGoogleGsonInternalObjectConstructor;", "(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TE;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;)V", "read", "LComGoogleGsonStreamJsonReader;", "LJavaIoIOException;", "(Lcom/google/gson/stream/JsonReader;)Ljava/util/Collection<TE;>;", "write", "LComGoogleGsonStreamJsonWriter;LJavaUtilCollection;", "(Lcom/google/gson/stream/JsonWriter;Ljava/util/Collection<TE;>;)V", "Lcom/google/gson/TypeAdapter<TE;>;", "Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;", "LComGoogleGsonInternalBindCollectionTypeAdapterFactory;", "<E:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<Ljava/util/Collection<TE;>;>;" };
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter = { "Adapter", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x1a, 3, 2, 11, -1, -1, 12, -1 };
  return &_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter;
}

@end

void ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *self, ComGoogleGsonGson *context, id<JavaLangReflectType> elementType, ComGoogleGsonTypeAdapter *elementTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) {
  ComGoogleGsonTypeAdapter_init(self);
  self->elementTypeAdapter_ = new_ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withJavaLangReflectType_(context, elementTypeAdapter, elementType);
  self->constructor_ = constructor;
}

ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *new_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonGson *context, id<JavaLangReflectType> elementType, ComGoogleGsonTypeAdapter *elementTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) {
  J2OBJC_NEW_IMPL(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter, initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_, context, elementType, elementTypeAdapter, constructor)
}

ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter *create_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter_initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonGson *context, id<JavaLangReflectType> elementType, ComGoogleGsonTypeAdapter *elementTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter, initWithComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_, context, elementType, elementTypeAdapter, constructor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_Adapter)