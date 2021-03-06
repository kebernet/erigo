//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/util/concurrent/ExecutionList.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/util/concurrent/ExecutionList.h"
#include "java/lang/Runnable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/concurrent/Executor.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"
#include "javax/annotation/Nullable.h"

@class ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair;

@interface ComGoogleCommonUtilConcurrentExecutionList () {
 @public
  ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *runnables_;
  jboolean executed_;
}

+ (void)executeListenerWithJavaLangRunnable:(id<JavaLangRunnable>)runnable
             withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonUtilConcurrentExecutionList, runnables_, ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *)

inline JavaUtilLoggingLogger *ComGoogleCommonUtilConcurrentExecutionList_get_log();
static JavaUtilLoggingLogger *ComGoogleCommonUtilConcurrentExecutionList_log;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleCommonUtilConcurrentExecutionList, log, JavaUtilLoggingLogger *)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentExecutionList_executeListenerWithJavaLangRunnable_withJavaUtilConcurrentExecutor_(id<JavaLangRunnable> runnable, id<JavaUtilConcurrentExecutor> executor);

@interface ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair : NSObject {
 @public
  id<JavaLangRunnable> runnable_;
  id<JavaUtilConcurrentExecutor> executor_;
  ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *next_;
}

- (instancetype)initWithJavaLangRunnable:(id<JavaLangRunnable>)runnable
          withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor
withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair:(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *)next;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair)

J2OBJC_FIELD_SETTER(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair, runnable_, id<JavaLangRunnable>)
J2OBJC_FIELD_SETTER(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair, executor_, id<JavaUtilConcurrentExecutor>)
J2OBJC_FIELD_SETTER(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair, next_, ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *)

__attribute__((unused)) static void ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_initWithJavaLangRunnable_withJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *self, id<JavaLangRunnable> runnable, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *next);

__attribute__((unused)) static ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *new_ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_initWithJavaLangRunnable_withJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_(id<JavaLangRunnable> runnable, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *next) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *create_ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_initWithJavaLangRunnable_withJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_(id<JavaLangRunnable> runnable, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *next);

__attribute__((unused)) static IOSObjectArray *ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair__Annotations$0();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair)

J2OBJC_INITIALIZED_DEFN(ComGoogleCommonUtilConcurrentExecutionList)

@implementation ComGoogleCommonUtilConcurrentExecutionList

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonUtilConcurrentExecutionList_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addWithJavaLangRunnable:(id<JavaLangRunnable>)runnable
 withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor {
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_withId_(runnable, @"Runnable was null.");
  (void) ComGoogleCommonBasePreconditions_checkNotNullWithId_withId_(executor, @"Executor was null.");
  @synchronized(self) {
    if (!executed_) {
      runnables_ = new_ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_initWithJavaLangRunnable_withJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_(runnable, executor, runnables_);
      return;
    }
  }
  ComGoogleCommonUtilConcurrentExecutionList_executeListenerWithJavaLangRunnable_withJavaUtilConcurrentExecutor_(runnable, executor);
}

- (void)execute {
  ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *list;
  @synchronized(self) {
    if (executed_) {
      return;
    }
    executed_ = true;
    list = runnables_;
    runnables_ = nil;
  }
  ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *reversedList = nil;
  while (list != nil) {
    ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *tmp = list;
    list = list->next_;
    tmp->next_ = reversedList;
    reversedList = tmp;
  }
  while (reversedList != nil) {
    ComGoogleCommonUtilConcurrentExecutionList_executeListenerWithJavaLangRunnable_withJavaUtilConcurrentExecutor_(reversedList->runnable_, reversedList->executor_);
    reversedList = reversedList->next_;
  }
}

+ (void)executeListenerWithJavaLangRunnable:(id<JavaLangRunnable>)runnable
             withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor {
  ComGoogleCommonUtilConcurrentExecutionList_executeListenerWithJavaLangRunnable_withJavaUtilConcurrentExecutor_(runnable, executor);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 2, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithJavaLangRunnable:withJavaUtilConcurrentExecutor:);
  methods[2].selector = @selector(execute);
  methods[3].selector = @selector(executeListenerWithJavaLangRunnable:withJavaUtilConcurrentExecutor:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "log", "LJavaUtilLoggingLogger;", .constantValue.asLong = 0, 0x1a, -1, 3, -1, -1 },
    { "runnables_", "LComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "executed_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "LJavaLangRunnable;LJavaUtilConcurrentExecutor;", "executeListener", &ComGoogleCommonUtilConcurrentExecutionList_log, "LComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentExecutionList = { "ExecutionList", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x11, 4, 3, -1, 4, -1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentExecutionList;
}

+ (void)initialize {
  if (self == [ComGoogleCommonUtilConcurrentExecutionList class]) {
    ComGoogleCommonUtilConcurrentExecutionList_log = JavaUtilLoggingLogger_getLoggerWithNSString_([ComGoogleCommonUtilConcurrentExecutionList_class_() getName]);
    J2OBJC_SET_INITIALIZED(ComGoogleCommonUtilConcurrentExecutionList)
  }
}

@end

void ComGoogleCommonUtilConcurrentExecutionList_init(ComGoogleCommonUtilConcurrentExecutionList *self) {
  NSObject_init(self);
}

ComGoogleCommonUtilConcurrentExecutionList *new_ComGoogleCommonUtilConcurrentExecutionList_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentExecutionList, init)
}

ComGoogleCommonUtilConcurrentExecutionList *create_ComGoogleCommonUtilConcurrentExecutionList_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentExecutionList, init)
}

void ComGoogleCommonUtilConcurrentExecutionList_executeListenerWithJavaLangRunnable_withJavaUtilConcurrentExecutor_(id<JavaLangRunnable> runnable, id<JavaUtilConcurrentExecutor> executor) {
  ComGoogleCommonUtilConcurrentExecutionList_initialize();
  @try {
    [((id<JavaUtilConcurrentExecutor>) nil_chk(executor)) executeWithJavaLangRunnable:runnable];
  }
  @catch (JavaLangRuntimeException *e) {
    [((JavaUtilLoggingLogger *) nil_chk(ComGoogleCommonUtilConcurrentExecutionList_log)) logWithJavaUtilLoggingLevel:JreLoadStatic(JavaUtilLoggingLevel, SEVERE) withNSString:JreStrcat("$@$@", @"RuntimeException while executing runnable ", runnable, @" with executor ", executor) withNSException:e];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentExecutionList)

@implementation ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair

- (instancetype)initWithJavaLangRunnable:(id<JavaLangRunnable>)runnable
          withJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)executor
withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair:(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *)next {
  ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_initWithJavaLangRunnable_withJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_(self, runnable, executor, next);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaLangRunnable:withJavaUtilConcurrentExecutor:withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "runnable_", "LJavaLangRunnable;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "executor_", "LJavaUtilConcurrentExecutor;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "next_", "LComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair;", .constantValue.asLong = 0, 0x0, -1, -1, -1, 1 },
  };
  static const void *ptrTable[] = { "LJavaLangRunnable;LJavaUtilConcurrentExecutor;LComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair;", (void *)&ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair__Annotations$0, "LComGoogleCommonUtilConcurrentExecutionList;" };
  static const J2ObjcClassInfo _ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair = { "RunnableExecutorPair", "com.google.common.util.concurrent", ptrTable, methods, fields, 7, 0x1a, 1, 3, 2, -1, -1, -1, -1 };
  return &_ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair;
}

@end

void ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_initWithJavaLangRunnable_withJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *self, id<JavaLangRunnable> runnable, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *next) {
  NSObject_init(self);
  self->runnable_ = runnable;
  self->executor_ = executor;
  self->next_ = next;
}

ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *new_ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_initWithJavaLangRunnable_withJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_(id<JavaLangRunnable> runnable, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *next) {
  J2OBJC_NEW_IMPL(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair, initWithJavaLangRunnable_withJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_, runnable, executor, next)
}

ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *create_ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_initWithJavaLangRunnable_withJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_(id<JavaLangRunnable> runnable, id<JavaUtilConcurrentExecutor> executor, ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair *next) {
  J2OBJC_CREATE_IMPL(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair, initWithJavaLangRunnable_withJavaUtilConcurrentExecutor_withComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair_, runnable, executor, next)
}

IOSObjectArray *ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaxAnnotationNullable() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonUtilConcurrentExecutionList_RunnableExecutorPair)
