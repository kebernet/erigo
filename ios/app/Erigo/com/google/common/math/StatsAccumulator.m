//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/math/StatsAccumulator.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/math/DoubleUtils.h"
#include "com/google/common/math/Stats.h"
#include "com/google/common/math/StatsAccumulator.h"
#include "com/google/common/primitives/Doubles.h"
#include "java/lang/Double.h"
#include "java/lang/Iterable.h"
#include "java/lang/Math.h"
#include "java/util/Iterator.h"

@interface ComGoogleCommonMathStatsAccumulator () {
 @public
  jlong count_;
  jdouble mean_;
  jdouble sumOfSquaresOfDeltas_;
  jdouble min_;
  jdouble max_;
}

@end

__attribute__((unused)) static jdouble ComGoogleCommonMathStatsAccumulator_populationVariance(ComGoogleCommonMathStatsAccumulator *self);

__attribute__((unused)) static jdouble ComGoogleCommonMathStatsAccumulator_sampleVariance(ComGoogleCommonMathStatsAccumulator *self);

@implementation ComGoogleCommonMathStatsAccumulator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonMathStatsAccumulator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addWithDouble:(jdouble)value {
  if (count_ == 0) {
    count_ = 1;
    mean_ = value;
    min_ = value;
    max_ = value;
    if (!ComGoogleCommonPrimitivesDoubles_isFiniteWithDouble_(value)) {
      sumOfSquaresOfDeltas_ = JavaLangDouble_NaN;
    }
  }
  else {
    count_++;
    if (ComGoogleCommonPrimitivesDoubles_isFiniteWithDouble_(value) && ComGoogleCommonPrimitivesDoubles_isFiniteWithDouble_(mean_)) {
      jdouble delta = value - mean_;
      JrePlusAssignDoubleD(&mean_, delta / count_);
      JrePlusAssignDoubleD(&sumOfSquaresOfDeltas_, delta * (value - mean_));
    }
    else {
      mean_ = ComGoogleCommonMathStatsAccumulator_calculateNewMeanNonFiniteWithDouble_withDouble_(mean_, value);
      sumOfSquaresOfDeltas_ = JavaLangDouble_NaN;
    }
    min_ = JavaLangMath_minWithDouble_withDouble_(min_, value);
    max_ = JavaLangMath_maxWithDouble_withDouble_(max_, value);
  }
}

- (void)addAllWithJavaLangIterable:(id<JavaLangIterable>)values {
  for (NSNumber * __strong value in nil_chk(values)) {
    [self addWithDouble:[((NSNumber *) nil_chk(value)) doubleValue]];
  }
}

- (void)addAllWithJavaUtilIterator:(id<JavaUtilIterator>)values {
  while ([((id<JavaUtilIterator>) nil_chk(values)) hasNext]) {
    [self addWithDouble:[((NSNumber *) nil_chk([values next])) doubleValue]];
  }
}

- (void)addAllWithDoubleArray:(IOSDoubleArray *)values {
  {
    IOSDoubleArray *a__ = values;
    jdouble const *b__ = ((IOSDoubleArray *) nil_chk(a__))->buffer_;
    jdouble const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jdouble value = *b__++;
      [self addWithDouble:value];
    }
  }
}

- (void)addAllWithIntArray:(IOSIntArray *)values {
  {
    IOSIntArray *a__ = values;
    jint const *b__ = ((IOSIntArray *) nil_chk(a__))->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint value = *b__++;
      [self addWithDouble:value];
    }
  }
}

- (void)addAllWithLongArray:(IOSLongArray *)values {
  {
    IOSLongArray *a__ = values;
    jlong const *b__ = ((IOSLongArray *) nil_chk(a__))->buffer_;
    jlong const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jlong value = *b__++;
      [self addWithDouble:value];
    }
  }
}

- (void)addAllWithComGoogleCommonMathStats:(ComGoogleCommonMathStats *)values {
  if ([((ComGoogleCommonMathStats *) nil_chk(values)) count] == 0) {
    return;
  }
  if (count_ == 0) {
    count_ = [values count];
    mean_ = [values mean];
    sumOfSquaresOfDeltas_ = [values sumOfSquaresOfDeltas];
    min_ = [values min];
    max_ = [values max];
  }
  else {
    count_ += [values count];
    if (ComGoogleCommonPrimitivesDoubles_isFiniteWithDouble_(mean_) && ComGoogleCommonPrimitivesDoubles_isFiniteWithDouble_([values mean])) {
      jdouble delta = [values mean] - mean_;
      JrePlusAssignDoubleD(&mean_, delta * [values count] / count_);
      JrePlusAssignDoubleD(&sumOfSquaresOfDeltas_, [values sumOfSquaresOfDeltas] + delta * ([values mean] - mean_) * [values count]);
    }
    else {
      mean_ = ComGoogleCommonMathStatsAccumulator_calculateNewMeanNonFiniteWithDouble_withDouble_(mean_, [values mean]);
      sumOfSquaresOfDeltas_ = JavaLangDouble_NaN;
    }
    min_ = JavaLangMath_minWithDouble_withDouble_(min_, [values min]);
    max_ = JavaLangMath_maxWithDouble_withDouble_(max_, [values max]);
  }
}

- (ComGoogleCommonMathStats *)snapshot {
  return new_ComGoogleCommonMathStats_initWithLong_withDouble_withDouble_withDouble_withDouble_(count_, mean_, sumOfSquaresOfDeltas_, min_, max_);
}

- (jlong)count {
  return count_;
}

- (jdouble)mean {
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_(count_ != 0);
  return mean_;
}

- (jdouble)sum {
  return mean_ * count_;
}

- (jdouble)populationVariance {
  return ComGoogleCommonMathStatsAccumulator_populationVariance(self);
}

- (jdouble)populationStandardDeviation {
  return JavaLangMath_sqrtWithDouble_(ComGoogleCommonMathStatsAccumulator_populationVariance(self));
}

- (jdouble)sampleVariance {
  return ComGoogleCommonMathStatsAccumulator_sampleVariance(self);
}

- (jdouble)sampleStandardDeviation {
  return JavaLangMath_sqrtWithDouble_(ComGoogleCommonMathStatsAccumulator_sampleVariance(self));
}

- (jdouble)min {
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_(count_ != 0);
  return min_;
}

- (jdouble)max {
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_(count_ != 0);
  return max_;
}

- (jdouble)sumOfSquaresOfDeltas {
  return sumOfSquaresOfDeltas_;
}

+ (jdouble)calculateNewMeanNonFiniteWithDouble:(jdouble)previousMean
                                    withDouble:(jdouble)value {
  return ComGoogleCommonMathStatsAccumulator_calculateNewMeanNonFiniteWithDouble_withDouble_(previousMean, value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "V", 0x1, 2, 5, -1, 6, -1, -1 },
    { NULL, "V", 0x81, 2, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 2, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 2, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 10, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonMathStats;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x8, 11, 12, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithDouble:);
  methods[2].selector = @selector(addAllWithJavaLangIterable:);
  methods[3].selector = @selector(addAllWithJavaUtilIterator:);
  methods[4].selector = @selector(addAllWithDoubleArray:);
  methods[5].selector = @selector(addAllWithIntArray:);
  methods[6].selector = @selector(addAllWithLongArray:);
  methods[7].selector = @selector(addAllWithComGoogleCommonMathStats:);
  methods[8].selector = @selector(snapshot);
  methods[9].selector = @selector(count);
  methods[10].selector = @selector(mean);
  methods[11].selector = @selector(sum);
  methods[12].selector = @selector(populationVariance);
  methods[13].selector = @selector(populationStandardDeviation);
  methods[14].selector = @selector(sampleVariance);
  methods[15].selector = @selector(sampleStandardDeviation);
  methods[16].selector = @selector(min);
  methods[17].selector = @selector(max);
  methods[18].selector = @selector(sumOfSquaresOfDeltas);
  methods[19].selector = @selector(calculateNewMeanNonFiniteWithDouble:withDouble:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "count_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mean_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "sumOfSquaresOfDeltas_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "min_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "max_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "D", "addAll", "LJavaLangIterable;", "(Ljava/lang/Iterable<+Ljava/lang/Number;>;)V", "LJavaUtilIterator;", "(Ljava/util/Iterator<+Ljava/lang/Number;>;)V", "[D", "[I", "[J", "LComGoogleCommonMathStats;", "calculateNewMeanNonFinite", "DD" };
  static const J2ObjcClassInfo _ComGoogleCommonMathStatsAccumulator = { "StatsAccumulator", "com.google.common.math", ptrTable, methods, fields, 7, 0x11, 20, 5, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonMathStatsAccumulator;
}

@end

void ComGoogleCommonMathStatsAccumulator_init(ComGoogleCommonMathStatsAccumulator *self) {
  NSObject_init(self);
  self->count_ = 0;
  self->mean_ = 0.0;
  self->sumOfSquaresOfDeltas_ = 0.0;
  self->min_ = JavaLangDouble_NaN;
  self->max_ = JavaLangDouble_NaN;
}

ComGoogleCommonMathStatsAccumulator *new_ComGoogleCommonMathStatsAccumulator_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonMathStatsAccumulator, init)
}

ComGoogleCommonMathStatsAccumulator *create_ComGoogleCommonMathStatsAccumulator_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonMathStatsAccumulator, init)
}

jdouble ComGoogleCommonMathStatsAccumulator_populationVariance(ComGoogleCommonMathStatsAccumulator *self) {
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_(self->count_ != 0);
  if (JavaLangDouble_isNaNWithDouble_(self->sumOfSquaresOfDeltas_)) {
    return JavaLangDouble_NaN;
  }
  if (self->count_ == 1) {
    return 0.0;
  }
  return ComGoogleCommonMathDoubleUtils_ensureNonNegativeWithDouble_(self->sumOfSquaresOfDeltas_) / self->count_;
}

jdouble ComGoogleCommonMathStatsAccumulator_sampleVariance(ComGoogleCommonMathStatsAccumulator *self) {
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_(self->count_ > 1);
  if (JavaLangDouble_isNaNWithDouble_(self->sumOfSquaresOfDeltas_)) {
    return JavaLangDouble_NaN;
  }
  return ComGoogleCommonMathDoubleUtils_ensureNonNegativeWithDouble_(self->sumOfSquaresOfDeltas_) / (self->count_ - 1);
}

jdouble ComGoogleCommonMathStatsAccumulator_calculateNewMeanNonFiniteWithDouble_withDouble_(jdouble previousMean, jdouble value) {
  ComGoogleCommonMathStatsAccumulator_initialize();
  if (ComGoogleCommonPrimitivesDoubles_isFiniteWithDouble_(previousMean)) {
    return value;
  }
  else if (ComGoogleCommonPrimitivesDoubles_isFiniteWithDouble_(value) || previousMean == value) {
    return previousMean;
  }
  else {
    return JavaLangDouble_NaN;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonMathStatsAccumulator)