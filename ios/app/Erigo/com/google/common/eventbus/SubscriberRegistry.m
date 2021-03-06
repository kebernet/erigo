//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/eventbus/SubscriberRegistry.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/MoreObjects.h"
#include "com/google/common/base/Objects.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/base/Throwables.h"
#include "com/google/common/cache/CacheBuilder.h"
#include "com/google/common/cache/CacheLoader.h"
#include "com/google/common/cache/LoadingCache.h"
#include "com/google/common/collect/HashMultimap.h"
#include "com/google/common/collect/ImmutableList.h"
#include "com/google/common/collect/ImmutableSet.h"
#include "com/google/common/collect/Iterators.h"
#include "com/google/common/collect/Lists.h"
#include "com/google/common/collect/Maps.h"
#include "com/google/common/collect/Multimap.h"
#include "com/google/common/eventbus/EventBus.h"
#include "com/google/common/eventbus/Subscribe.h"
#include "com/google/common/eventbus/Subscriber.h"
#include "com/google/common/eventbus/SubscriberRegistry.h"
#include "com/google/common/reflect/TypeToken.h"
#include "com/google/common/util/concurrent/UncheckedExecutionException.h"
#include "java/io/Serializable.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/reflect/Method.h"
#include "java/util/AbstractCollection.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentMap.h"
#include "java/util/concurrent/CopyOnWriteArraySet.h"
#include "javax/annotation/Nullable.h"

@interface ComGoogleCommonEventbusSubscriberRegistry () {
 @public
  id<JavaUtilConcurrentConcurrentMap> subscribers_;
  __unsafe_unretained ComGoogleCommonEventbusEventBus *bus_;
}

- (id<ComGoogleCommonCollectMultimap>)findAllSubscribersWithId:(id)listener;

+ (ComGoogleCommonCollectImmutableList *)getAnnotatedMethodsWithIOSClass:(IOSClass *)clazz;

+ (ComGoogleCommonCollectImmutableList *)getAnnotatedMethodsNotCachedWithIOSClass:(IOSClass *)clazz;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonEventbusSubscriberRegistry, subscribers_, id<JavaUtilConcurrentConcurrentMap>)

inline id<ComGoogleCommonCacheLoadingCache> ComGoogleCommonEventbusSubscriberRegistry_get_subscriberMethodsCache();
static id<ComGoogleCommonCacheLoadingCache> ComGoogleCommonEventbusSubscriberRegistry_subscriberMethodsCache;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonEventbusSubscriberRegistry, subscriberMethodsCache, id<ComGoogleCommonCacheLoadingCache>)

inline id<ComGoogleCommonCacheLoadingCache> ComGoogleCommonEventbusSubscriberRegistry_get_flattenHierarchyCache();
static id<ComGoogleCommonCacheLoadingCache> ComGoogleCommonEventbusSubscriberRegistry_flattenHierarchyCache;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonEventbusSubscriberRegistry, flattenHierarchyCache, id<ComGoogleCommonCacheLoadingCache>)

__attribute__((unused)) static id<ComGoogleCommonCollectMultimap> ComGoogleCommonEventbusSubscriberRegistry_findAllSubscribersWithId_(ComGoogleCommonEventbusSubscriberRegistry *self, id listener);

__attribute__((unused)) static ComGoogleCommonCollectImmutableList *ComGoogleCommonEventbusSubscriberRegistry_getAnnotatedMethodsWithIOSClass_(IOSClass *clazz);

__attribute__((unused)) static ComGoogleCommonCollectImmutableList *ComGoogleCommonEventbusSubscriberRegistry_getAnnotatedMethodsNotCachedWithIOSClass_(IOSClass *clazz);

@interface ComGoogleCommonEventbusSubscriberRegistry_1 : ComGoogleCommonCacheCacheLoader

- (instancetype)init;

- (ComGoogleCommonCollectImmutableList *)load__WithId:(IOSClass *)concreteClass;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonEventbusSubscriberRegistry_1)

__attribute__((unused)) static void ComGoogleCommonEventbusSubscriberRegistry_1_init(ComGoogleCommonEventbusSubscriberRegistry_1 *self);

__attribute__((unused)) static ComGoogleCommonEventbusSubscriberRegistry_1 *new_ComGoogleCommonEventbusSubscriberRegistry_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonEventbusSubscriberRegistry_1 *create_ComGoogleCommonEventbusSubscriberRegistry_1_init();

@interface ComGoogleCommonEventbusSubscriberRegistry_2 : ComGoogleCommonCacheCacheLoader

- (instancetype)init;

- (ComGoogleCommonCollectImmutableSet *)load__WithId:(IOSClass *)concreteClass;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonEventbusSubscriberRegistry_2)

__attribute__((unused)) static void ComGoogleCommonEventbusSubscriberRegistry_2_init(ComGoogleCommonEventbusSubscriberRegistry_2 *self);

__attribute__((unused)) static ComGoogleCommonEventbusSubscriberRegistry_2 *new_ComGoogleCommonEventbusSubscriberRegistry_2_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonEventbusSubscriberRegistry_2 *create_ComGoogleCommonEventbusSubscriberRegistry_2_init();

@interface ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier : NSObject {
 @public
  NSString *name_;
  id<JavaUtilList> parameterTypes_;
}

- (instancetype)initWithJavaLangReflectMethod:(JavaLangReflectMethod *)method;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)o;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier)

J2OBJC_FIELD_SETTER(ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier, name_, NSString *)
J2OBJC_FIELD_SETTER(ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier, parameterTypes_, id<JavaUtilList>)

__attribute__((unused)) static void ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier_initWithJavaLangReflectMethod_(ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier *self, JavaLangReflectMethod *method);

__attribute__((unused)) static ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier *new_ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier_initWithJavaLangReflectMethod_(JavaLangReflectMethod *method) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier *create_ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier_initWithJavaLangReflectMethod_(JavaLangReflectMethod *method);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier__Annotations$0();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier)

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonEventbusSubscriberRegistry)

@implementation ComGoogleCommonEventbusSubscriberRegistry

- (instancetype)initWithComGoogleCommonEventbusEventBus:(ComGoogleCommonEventbusEventBus *)bus {
  ComGoogleCommonEventbusSubscriberRegistry_initWithComGoogleCommonEventbusEventBus_(self, bus);
  return self;
}

- (void)register__WithId:(id)listener {
  id<ComGoogleCommonCollectMultimap> listenerMethods = ComGoogleCommonEventbusSubscriberRegistry_findAllSubscribersWithId_(self, listener);
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk([((id<ComGoogleCommonCollectMultimap>) nil_chk(listenerMethods)) asMap])) entrySet])) {
    IOSClass *eventType = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
    id<JavaUtilCollection> eventMethodsInListener = [entry_ getValue];
    JavaUtilConcurrentCopyOnWriteArraySet *eventSubscribers = [((id<JavaUtilConcurrentConcurrentMap>) nil_chk(subscribers_)) getWithId:eventType];
    if (eventSubscribers == nil) {
      JavaUtilConcurrentCopyOnWriteArraySet *newSet = new_JavaUtilConcurrentCopyOnWriteArraySet_init();
      eventSubscribers = ComGoogleCommonBaseMoreObjects_firstNonNullWithId_withId_([subscribers_ putIfAbsentWithId:eventType withId:newSet], newSet);
    }
    [((JavaUtilConcurrentCopyOnWriteArraySet *) nil_chk(eventSubscribers)) addAllWithJavaUtilCollection:eventMethodsInListener];
  }
}

- (void)unregisterWithId:(id)listener {
  id<ComGoogleCommonCollectMultimap> listenerMethods = ComGoogleCommonEventbusSubscriberRegistry_findAllSubscribersWithId_(self, listener);
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk([((id<ComGoogleCommonCollectMultimap>) nil_chk(listenerMethods)) asMap])) entrySet])) {
    IOSClass *eventType = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
    id<JavaUtilCollection> listenerMethodsForType = [entry_ getValue];
    JavaUtilConcurrentCopyOnWriteArraySet *currentSubscribers = [((id<JavaUtilConcurrentConcurrentMap>) nil_chk(subscribers_)) getWithId:eventType];
    if (currentSubscribers == nil || ![currentSubscribers removeAllWithJavaUtilCollection:listenerMethodsForType]) {
      @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$", @"missing event subscriber for an annotated method. Is ", listener, @" registered?"));
    }
  }
}

- (id<JavaUtilSet>)getSubscribersForTestingWithIOSClass:(IOSClass *)eventType {
  return ComGoogleCommonBaseMoreObjects_firstNonNullWithId_withId_([((id<JavaUtilConcurrentConcurrentMap>) nil_chk(subscribers_)) getWithId:eventType], ComGoogleCommonCollectImmutableSet_of());
}

- (id<JavaUtilIterator>)getSubscribersWithId:(id)event {
  ComGoogleCommonCollectImmutableSet *eventTypes = ComGoogleCommonEventbusSubscriberRegistry_flattenHierarchyWithIOSClass_([nil_chk(event) java_getClass]);
  id<JavaUtilList> subscriberIterators = ComGoogleCommonCollectLists_newArrayListWithCapacityWithInt_([((ComGoogleCommonCollectImmutableSet *) nil_chk(eventTypes)) size]);
  for (IOSClass * __strong eventType in eventTypes) {
    JavaUtilConcurrentCopyOnWriteArraySet *eventSubscribers = [((id<JavaUtilConcurrentConcurrentMap>) nil_chk(subscribers_)) getWithId:eventType];
    if (eventSubscribers != nil) {
      [((id<JavaUtilList>) nil_chk(subscriberIterators)) addWithId:[eventSubscribers iterator]];
    }
  }
  return ComGoogleCommonCollectIterators_concatWithJavaUtilIterator_([((id<JavaUtilList>) nil_chk(subscriberIterators)) iterator]);
}

- (id<ComGoogleCommonCollectMultimap>)findAllSubscribersWithId:(id)listener {
  return ComGoogleCommonEventbusSubscriberRegistry_findAllSubscribersWithId_(self, listener);
}

+ (ComGoogleCommonCollectImmutableList *)getAnnotatedMethodsWithIOSClass:(IOSClass *)clazz {
  return ComGoogleCommonEventbusSubscriberRegistry_getAnnotatedMethodsWithIOSClass_(clazz);
}

+ (ComGoogleCommonCollectImmutableList *)getAnnotatedMethodsNotCachedWithIOSClass:(IOSClass *)clazz {
  return ComGoogleCommonEventbusSubscriberRegistry_getAnnotatedMethodsNotCachedWithIOSClass_(clazz);
}

+ (ComGoogleCommonCollectImmutableSet *)flattenHierarchyWithIOSClass:(IOSClass *)concreteClass {
  return ComGoogleCommonEventbusSubscriberRegistry_flattenHierarchyWithIOSClass_(concreteClass);
}

- (void)__javaClone:(ComGoogleCommonEventbusSubscriberRegistry *)original {
  [super __javaClone:original];
  JreRelease(bus_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 3, 2, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x0, 4, 5, -1, 6, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x0, 7, 2, -1, 8, -1, -1 },
    { NULL, "LComGoogleCommonCollectMultimap;", 0x2, 9, 2, -1, 10, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableList;", 0xa, 11, 5, -1, 12, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableList;", 0xa, 13, 5, -1, 12, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableSet;", 0x8, 14, 5, -1, 15, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithComGoogleCommonEventbusEventBus:);
  methods[1].selector = @selector(register__WithId:);
  methods[2].selector = @selector(unregisterWithId:);
  methods[3].selector = @selector(getSubscribersForTestingWithIOSClass:);
  methods[4].selector = @selector(getSubscribersWithId:);
  methods[5].selector = @selector(findAllSubscribersWithId:);
  methods[6].selector = @selector(getAnnotatedMethodsWithIOSClass:);
  methods[7].selector = @selector(getAnnotatedMethodsNotCachedWithIOSClass:);
  methods[8].selector = @selector(flattenHierarchyWithIOSClass:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "subscribers_", "LJavaUtilConcurrentConcurrentMap;", .constantValue.asLong = 0, 0x12, -1, -1, 16, -1 },
    { "bus_", "LComGoogleCommonEventbusEventBus;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "subscriberMethodsCache", "LComGoogleCommonCacheLoadingCache;", .constantValue.asLong = 0, 0x1a, -1, 17, 18, -1 },
    { "flattenHierarchyCache", "LComGoogleCommonCacheLoadingCache;", .constantValue.asLong = 0, 0x1a, -1, 19, 20, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleCommonEventbusEventBus;", "register", "LNSObject;", "unregister", "getSubscribersForTesting", "LIOSClass;", "(Ljava/lang/Class<*>;)Ljava/util/Set<Lcom/google/common/eventbus/Subscriber;>;", "getSubscribers", "(Ljava/lang/Object;)Ljava/util/Iterator<Lcom/google/common/eventbus/Subscriber;>;", "findAllSubscribers", "(Ljava/lang/Object;)Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/Subscriber;>;", "getAnnotatedMethods", "(Ljava/lang/Class<*>;)Lcom/google/common/collect/ImmutableList<Ljava/lang/reflect/Method;>;", "getAnnotatedMethodsNotCached", "flattenHierarchy", "(Ljava/lang/Class<*>;)Lcom/google/common/collect/ImmutableSet<Ljava/lang/Class<*>;>;", "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<*>;Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/google/common/eventbus/Subscriber;>;>;", &ComGoogleCommonEventbusSubscriberRegistry_subscriberMethodsCache, "Lcom/google/common/cache/LoadingCache<Ljava/lang/Class<*>;Lcom/google/common/collect/ImmutableList<Ljava/lang/reflect/Method;>;>;", &ComGoogleCommonEventbusSubscriberRegistry_flattenHierarchyCache, "Lcom/google/common/cache/LoadingCache<Ljava/lang/Class<*>;Lcom/google/common/collect/ImmutableSet<Ljava/lang/Class<*>;>;>;", "LComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier;" };
  static const J2ObjcClassInfo _ComGoogleCommonEventbusSubscriberRegistry = { "SubscriberRegistry", "com.google.common.eventbus", ptrTable, methods, fields, 7, 0x10, 9, 4, -1, 21, -1, -1, -1 };
  return &_ComGoogleCommonEventbusSubscriberRegistry;
}

+ (void)initialize {
  if (self == [ComGoogleCommonEventbusSubscriberRegistry class]) {
    ComGoogleCommonEventbusSubscriberRegistry_subscriberMethodsCache = [((ComGoogleCommonCacheCacheBuilder *) nil_chk([((ComGoogleCommonCacheCacheBuilder *) nil_chk(ComGoogleCommonCacheCacheBuilder_newBuilder())) weakKeys])) buildWithComGoogleCommonCacheCacheLoader:new_ComGoogleCommonEventbusSubscriberRegistry_1_init()];
    ComGoogleCommonEventbusSubscriberRegistry_flattenHierarchyCache = [((ComGoogleCommonCacheCacheBuilder *) nil_chk([((ComGoogleCommonCacheCacheBuilder *) nil_chk(ComGoogleCommonCacheCacheBuilder_newBuilder())) weakKeys])) buildWithComGoogleCommonCacheCacheLoader:new_ComGoogleCommonEventbusSubscriberRegistry_2_init()];
    J2OBJC_SET_INITIALIZED(ComGoogleCommonEventbusSubscriberRegistry)
  }
}

@end

void ComGoogleCommonEventbusSubscriberRegistry_initWithComGoogleCommonEventbusEventBus_(ComGoogleCommonEventbusSubscriberRegistry *self, ComGoogleCommonEventbusEventBus *bus) {
  NSObject_init(self);
  self->subscribers_ = ComGoogleCommonCollectMaps_newConcurrentMap();
  self->bus_ = ComGoogleCommonBasePreconditions_checkNotNullWithId_(bus);
}

ComGoogleCommonEventbusSubscriberRegistry *new_ComGoogleCommonEventbusSubscriberRegistry_initWithComGoogleCommonEventbusEventBus_(ComGoogleCommonEventbusEventBus *bus) {
  J2OBJC_NEW_IMPL(ComGoogleCommonEventbusSubscriberRegistry, initWithComGoogleCommonEventbusEventBus_, bus)
}

ComGoogleCommonEventbusSubscriberRegistry *create_ComGoogleCommonEventbusSubscriberRegistry_initWithComGoogleCommonEventbusEventBus_(ComGoogleCommonEventbusEventBus *bus) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonEventbusSubscriberRegistry, initWithComGoogleCommonEventbusEventBus_, bus)
}

id<ComGoogleCommonCollectMultimap> ComGoogleCommonEventbusSubscriberRegistry_findAllSubscribersWithId_(ComGoogleCommonEventbusSubscriberRegistry *self, id listener) {
  id<ComGoogleCommonCollectMultimap> methodsInListener = ComGoogleCommonCollectHashMultimap_create();
  IOSClass *clazz = [nil_chk(listener) java_getClass];
  for (JavaLangReflectMethod * __strong method in nil_chk(ComGoogleCommonEventbusSubscriberRegistry_getAnnotatedMethodsWithIOSClass_(clazz))) {
    IOSObjectArray *parameterTypes = [((JavaLangReflectMethod *) nil_chk(method)) getParameterTypes];
    IOSClass *eventType = IOSObjectArray_Get(nil_chk(parameterTypes), 0);
    [((id<ComGoogleCommonCollectMultimap>) nil_chk(methodsInListener)) putWithId:eventType withId:ComGoogleCommonEventbusSubscriber_createWithComGoogleCommonEventbusEventBus_withId_withJavaLangReflectMethod_(self->bus_, listener, method)];
  }
  return methodsInListener;
}

ComGoogleCommonCollectImmutableList *ComGoogleCommonEventbusSubscriberRegistry_getAnnotatedMethodsWithIOSClass_(IOSClass *clazz) {
  ComGoogleCommonEventbusSubscriberRegistry_initialize();
  return [((id<ComGoogleCommonCacheLoadingCache>) nil_chk(ComGoogleCommonEventbusSubscriberRegistry_subscriberMethodsCache)) getUncheckedWithId:clazz];
}

ComGoogleCommonCollectImmutableList *ComGoogleCommonEventbusSubscriberRegistry_getAnnotatedMethodsNotCachedWithIOSClass_(IOSClass *clazz) {
  ComGoogleCommonEventbusSubscriberRegistry_initialize();
  id<JavaUtilSet> supertypes = [((ComGoogleCommonReflectTypeToken_TypeSet *) nil_chk([((ComGoogleCommonReflectTypeToken *) nil_chk(ComGoogleCommonReflectTypeToken_ofWithIOSClass_(clazz))) getTypes])) rawTypes];
  id<JavaUtilMap> identifiers = ComGoogleCommonCollectMaps_newHashMap();
  for (IOSClass * __strong supertype in nil_chk(supertypes)) {
    {
      IOSObjectArray *a__ = [((IOSClass *) nil_chk(supertype)) getDeclaredMethods];
      JavaLangReflectMethod * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      JavaLangReflectMethod * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        JavaLangReflectMethod *method = *b__++;
        if ([((JavaLangReflectMethod *) nil_chk(method)) isAnnotationPresentWithIOSClass:ComGoogleCommonEventbusSubscribe_class_()] && ![method isSynthetic]) {
          IOSObjectArray *parameterTypes = [method getParameterTypes];
          ComGoogleCommonBasePreconditions_checkArgumentWithBoolean_withNSString_withId_withInt_(((IOSObjectArray *) nil_chk(parameterTypes))->size_ == 1, @"Method %s has @Subscribe annotation but has %s parameters.Subscriber methods must have exactly 1 parameter.", method, parameterTypes->size_);
          ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier *ident = new_ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier_initWithJavaLangReflectMethod_(method);
          if (![((id<JavaUtilMap>) nil_chk(identifiers)) containsKeyWithId:ident]) {
            (void) [identifiers putWithId:ident withId:method];
          }
        }
      }
    }
  }
  return ComGoogleCommonCollectImmutableList_copyOfWithJavaUtilCollection_([((id<JavaUtilMap>) nil_chk(identifiers)) values]);
}

ComGoogleCommonCollectImmutableSet *ComGoogleCommonEventbusSubscriberRegistry_flattenHierarchyWithIOSClass_(IOSClass *concreteClass) {
  ComGoogleCommonEventbusSubscriberRegistry_initialize();
  @try {
    return [((id<ComGoogleCommonCacheLoadingCache>) nil_chk(ComGoogleCommonEventbusSubscriberRegistry_flattenHierarchyCache)) getUncheckedWithId:concreteClass];
  }
  @catch (ComGoogleCommonUtilConcurrentUncheckedExecutionException *e) {
    @throw nil_chk(ComGoogleCommonBaseThrowables_propagateWithNSException_([e getCause]));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonEventbusSubscriberRegistry)

@implementation ComGoogleCommonEventbusSubscriberRegistry_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonEventbusSubscriberRegistry_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ComGoogleCommonCollectImmutableList *)load__WithId:(IOSClass *)concreteClass {
  return ComGoogleCommonEventbusSubscriberRegistry_getAnnotatedMethodsNotCachedWithIOSClass_(concreteClass);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableList;", 0x1, 0, 1, 2, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(load__WithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "load", "LIOSClass;", "LJavaLangException;", "(Ljava/lang/Class<*>;)Lcom/google/common/collect/ImmutableList<Ljava/lang/reflect/Method;>;", "LComGoogleCommonEventbusSubscriberRegistry;", "Lcom/google/common/cache/CacheLoader<Ljava/lang/Class<*>;Lcom/google/common/collect/ImmutableList<Ljava/lang/reflect/Method;>;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonEventbusSubscriberRegistry_1 = { "", "com.google.common.eventbus", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 4, -1, -1, 5, -1 };
  return &_ComGoogleCommonEventbusSubscriberRegistry_1;
}

@end

void ComGoogleCommonEventbusSubscriberRegistry_1_init(ComGoogleCommonEventbusSubscriberRegistry_1 *self) {
  ComGoogleCommonCacheCacheLoader_init(self);
}

ComGoogleCommonEventbusSubscriberRegistry_1 *new_ComGoogleCommonEventbusSubscriberRegistry_1_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonEventbusSubscriberRegistry_1, init)
}

ComGoogleCommonEventbusSubscriberRegistry_1 *create_ComGoogleCommonEventbusSubscriberRegistry_1_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonEventbusSubscriberRegistry_1, init)
}

@implementation ComGoogleCommonEventbusSubscriberRegistry_2

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonEventbusSubscriberRegistry_2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ComGoogleCommonCollectImmutableSet *)load__WithId:(IOSClass *)concreteClass {
  return ComGoogleCommonCollectImmutableSet_copyOfWithJavaUtilCollection_([((ComGoogleCommonReflectTypeToken_TypeSet *) nil_chk([((ComGoogleCommonReflectTypeToken *) nil_chk(ComGoogleCommonReflectTypeToken_ofWithIOSClass_(concreteClass))) getTypes])) rawTypes]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonCollectImmutableSet;", 0x1, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(load__WithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "load", "LIOSClass;", "(Ljava/lang/Class<*>;)Lcom/google/common/collect/ImmutableSet<Ljava/lang/Class<*>;>;", "LComGoogleCommonEventbusSubscriberRegistry;", "Lcom/google/common/cache/CacheLoader<Ljava/lang/Class<*>;Lcom/google/common/collect/ImmutableSet<Ljava/lang/Class<*>;>;>;" };
  static const J2ObjcClassInfo _ComGoogleCommonEventbusSubscriberRegistry_2 = { "", "com.google.common.eventbus", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 3, -1, -1, 4, -1 };
  return &_ComGoogleCommonEventbusSubscriberRegistry_2;
}

@end

void ComGoogleCommonEventbusSubscriberRegistry_2_init(ComGoogleCommonEventbusSubscriberRegistry_2 *self) {
  ComGoogleCommonCacheCacheLoader_init(self);
}

ComGoogleCommonEventbusSubscriberRegistry_2 *new_ComGoogleCommonEventbusSubscriberRegistry_2_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonEventbusSubscriberRegistry_2, init)
}

ComGoogleCommonEventbusSubscriberRegistry_2 *create_ComGoogleCommonEventbusSubscriberRegistry_2_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonEventbusSubscriberRegistry_2, init)
}

@implementation ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier

- (instancetype)initWithJavaLangReflectMethod:(JavaLangReflectMethod *)method {
  ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier_initWithJavaLangReflectMethod_(self, method);
  return self;
}

- (NSUInteger)hash {
  return ComGoogleCommonBaseObjects_hashCodeWithNSObjectArray_([IOSObjectArray newArrayWithObjects:(id[]){ name_, parameterTypes_ } count:2 type:NSObject_class_()]);
}

- (jboolean)isEqual:(id)o {
  if ([o isKindOfClass:[ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier class]]) {
    ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier *ident = (ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier *) cast_chk(o, [ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier class]);
    return [((NSString *) nil_chk(name_)) isEqual:((ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier *) nil_chk(ident))->name_] && [((id<JavaUtilList>) nil_chk(parameterTypes_)) isEqual:ident->parameterTypes_];
  }
  return false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, 4 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaLangReflectMethod:);
  methods[1].selector = @selector(hash);
  methods[2].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "parameterTypes_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangReflectMethod;", "hashCode", "equals", "LNSObject;", (void *)&ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier__Annotations$0, "Ljava/util/List<Ljava/lang/Class<*>;>;", "LComGoogleCommonEventbusSubscriberRegistry;" };
  static const J2ObjcClassInfo _ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier = { "MethodIdentifier", "com.google.common.eventbus", ptrTable, methods, fields, 7, 0x1a, 3, 2, 6, -1, -1, -1, -1 };
  return &_ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier;
}

@end

void ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier_initWithJavaLangReflectMethod_(ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier *self, JavaLangReflectMethod *method) {
  NSObject_init(self);
  self->name_ = [((JavaLangReflectMethod *) nil_chk(method)) getName];
  self->parameterTypes_ = JavaUtilArrays_asListWithNSObjectArray_([method getParameterTypes]);
}

ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier *new_ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier_initWithJavaLangReflectMethod_(JavaLangReflectMethod *method) {
  J2OBJC_NEW_IMPL(ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier, initWithJavaLangReflectMethod_, method)
}

ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier *create_ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier_initWithJavaLangReflectMethod_(JavaLangReflectMethod *method) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier, initWithJavaLangReflectMethod_, method)
}

IOSObjectArray *ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()] } count:1 type:IOSClass_arrayType(JavaLangAnnotationAnnotation_class_(), 1)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonEventbusSubscriberRegistry_MethodIdentifier)
