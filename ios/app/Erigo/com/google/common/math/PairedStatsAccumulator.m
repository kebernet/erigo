//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Volumes/Personal/Documents/raspi-config/client-framework/build/j2oSources/com/google/common/math/PairedStatsAccumulator.java
//

#include "J2ObjC_source.h"
#include "com/google/common/base/Preconditions.h"
#include "com/google/common/math/LinearTransformation.h"
#include "com/google/common/math/PairedStats.h"
#include "com/google/common/math/PairedStatsAccumulator.h"
#include "com/google/common/math/Stats.h"
#include "com/google/common/math/StatsAccumulator.h"
#include "com/google/common/primitives/Doubles.h"
#include "java/lang/Double.h"
#include "java/lang/Math.h"

@interface ComGoogleCommonMathPairedStatsAccumulator () {
 @public
  ComGoogleCommonMathStatsAccumulator *xStats_;
  ComGoogleCommonMathStatsAccumulator *yStats_;
  jdouble sumOfProductsOfDeltas_;
}

- (jdouble)ensurePositiveWithDouble:(jdouble)value;

+ (jdouble)ensureInUnitRangeWithDouble:(jdouble)value;

@end

J2OBJC_FIELD_SETTER(ComGoogleCommonMathPairedStatsAccumulator, xStats_, ComGoogleCommonMathStatsAccumulator *)
J2OBJC_FIELD_SETTER(ComGoogleCommonMathPairedStatsAccumulator, yStats_, ComGoogleCommonMathStatsAccumulator *)

__attribute__((unused)) static jdouble ComGoogleCommonMathPairedStatsAccumulator_ensurePositiveWithDouble_(ComGoogleCommonMathPairedStatsAccumulator *self, jdouble value);

__attribute__((unused)) static jdouble ComGoogleCommonMathPairedStatsAccumulator_ensureInUnitRangeWithDouble_(jdouble value);

@implementation ComGoogleCommonMathPairedStatsAccumulator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleCommonMathPairedStatsAccumulator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addWithDouble:(jdouble)x
           withDouble:(jdouble)y {
  [((ComGoogleCommonMathStatsAccumulator *) nil_chk(xStats_)) addWithDouble:x];
  if (ComGoogleCommonPrimitivesDoubles_isFiniteWithDouble_(x) && ComGoogleCommonPrimitivesDoubles_isFiniteWithDouble_(y)) {
    if ([xStats_ count] > 1) {
      JrePlusAssignDoubleD(&sumOfProductsOfDeltas_, (x - [xStats_ mean]) * (y - [((ComGoogleCommonMathStatsAccumulator *) nil_chk(yStats_)) mean]));
    }
  }
  else {
    sumOfProductsOfDeltas_ = JavaLangDouble_NaN;
  }
  [((ComGoogleCommonMathStatsAccumulator *) nil_chk(yStats_)) addWithDouble:y];
}

- (void)addAllWithComGoogleCommonMathPairedStats:(ComGoogleCommonMathPairedStats *)values {
  if ([((ComGoogleCommonMathPairedStats *) nil_chk(values)) count] == 0) {
    return;
  }
  [((ComGoogleCommonMathStatsAccumulator *) nil_chk(xStats_)) addAllWithComGoogleCommonMathStats:[values xStats]];
  if ([((ComGoogleCommonMathStatsAccumulator *) nil_chk(yStats_)) count] == 0) {
    sumOfProductsOfDeltas_ = [values sumOfProductsOfDeltas];
  }
  else {
    JrePlusAssignDoubleD(&sumOfProductsOfDeltas_, [values sumOfProductsOfDeltas] + ([((ComGoogleCommonMathStats *) nil_chk([values xStats])) mean] - [xStats_ mean]) * ([((ComGoogleCommonMathStats *) nil_chk([values yStats])) mean] - [yStats_ mean]) * [values count]);
  }
  [yStats_ addAllWithComGoogleCommonMathStats:[values yStats]];
}

- (ComGoogleCommonMathPairedStats *)snapshot {
  return new_ComGoogleCommonMathPairedStats_initWithComGoogleCommonMathStats_withComGoogleCommonMathStats_withDouble_([((ComGoogleCommonMathStatsAccumulator *) nil_chk(xStats_)) snapshot], [((ComGoogleCommonMathStatsAccumulator *) nil_chk(yStats_)) snapshot], sumOfProductsOfDeltas_);
}

- (jlong)count {
  return [((ComGoogleCommonMathStatsAccumulator *) nil_chk(xStats_)) count];
}

- (ComGoogleCommonMathStats *)xStats {
  return [((ComGoogleCommonMathStatsAccumulator *) nil_chk(xStats_)) snapshot];
}

- (ComGoogleCommonMathStats *)yStats {
  return [((ComGoogleCommonMathStatsAccumulator *) nil_chk(yStats_)) snapshot];
}

- (jdouble)populationCovariance {
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_([self count] != 0);
  return sumOfProductsOfDeltas_ / [self count];
}

- (jdouble)sampleCovariance {
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_([self count] > 1);
  return sumOfProductsOfDeltas_ / ([self count] - 1);
}

- (jdouble)pearsonsCorrelationCoefficient {
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_([self count] > 1);
  if (JavaLangDouble_isNaNWithDouble_(sumOfProductsOfDeltas_)) {
    return JavaLangDouble_NaN;
  }
  jdouble xSumOfSquaresOfDeltas = [((ComGoogleCommonMathStatsAccumulator *) nil_chk(xStats_)) sumOfSquaresOfDeltas];
  jdouble ySumOfSquaresOfDeltas = [((ComGoogleCommonMathStatsAccumulator *) nil_chk(yStats_)) sumOfSquaresOfDeltas];
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_(xSumOfSquaresOfDeltas > 0.0);
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_(ySumOfSquaresOfDeltas > 0.0);
  jdouble productOfSumsOfSquaresOfDeltas = ComGoogleCommonMathPairedStatsAccumulator_ensurePositiveWithDouble_(self, xSumOfSquaresOfDeltas * ySumOfSquaresOfDeltas);
  return ComGoogleCommonMathPairedStatsAccumulator_ensureInUnitRangeWithDouble_(sumOfProductsOfDeltas_ / JavaLangMath_sqrtWithDouble_(productOfSumsOfSquaresOfDeltas));
}

- (ComGoogleCommonMathLinearTransformation *)leastSquaresFit {
  ComGoogleCommonBasePreconditions_checkStateWithBoolean_([self count] > 1);
  if (JavaLangDouble_isNaNWithDouble_(sumOfProductsOfDeltas_)) {
    return ComGoogleCommonMathLinearTransformation_forNaN();
  }
  jdouble xSumOfSquaresOfDeltas = [((ComGoogleCommonMathStatsAccumulator *) nil_chk(xStats_)) sumOfSquaresOfDeltas];
  if (xSumOfSquaresOfDeltas > 0.0) {
    if ([((ComGoogleCommonMathStatsAccumulator *) nil_chk(yStats_)) sumOfSquaresOfDeltas] > 0.0) {
      return [((ComGoogleCommonMathLinearTransformation_LinearTransformationBuilder *) nil_chk(ComGoogleCommonMathLinearTransformation_mappingWithDouble_withDouble_([xStats_ mean], [yStats_ mean]))) withSlopeWithDouble:sumOfProductsOfDeltas_ / xSumOfSquaresOfDeltas];
    }
    else {
      return ComGoogleCommonMathLinearTransformation_horizontalWithDouble_([yStats_ mean]);
    }
  }
  else {
    ComGoogleCommonBasePreconditions_checkStateWithBoolean_([((ComGoogleCommonMathStatsAccumulator *) nil_chk(yStats_)) sumOfSquaresOfDeltas] > 0.0);
    return ComGoogleCommonMathLinearTransformation_verticalWithDouble_([xStats_ mean]);
  }
}

- (jdouble)ensurePositiveWithDouble:(jdouble)value {
  return ComGoogleCommonMathPairedStatsAccumulator_ensurePositiveWithDouble_(self, value);
}

+ (jdouble)ensureInUnitRangeWithDouble:(jdouble)value {
  return ComGoogleCommonMathPairedStatsAccumulator_ensureInUnitRangeWithDouble_(value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonMathPairedStats;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonMathStats;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonMathStats;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleCommonMathLinearTransformation;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "D", 0xa, 6, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithDouble:withDouble:);
  methods[2].selector = @selector(addAllWithComGoogleCommonMathPairedStats:);
  methods[3].selector = @selector(snapshot);
  methods[4].selector = @selector(count);
  methods[5].selector = @selector(xStats);
  methods[6].selector = @selector(yStats);
  methods[7].selector = @selector(populationCovariance);
  methods[8].selector = @selector(sampleCovariance);
  methods[9].selector = @selector(pearsonsCorrelationCoefficient);
  methods[10].selector = @selector(leastSquaresFit);
  methods[11].selector = @selector(ensurePositiveWithDouble:);
  methods[12].selector = @selector(ensureInUnitRangeWithDouble:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "xStats_", "LComGoogleCommonMathStatsAccumulator;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "yStats_", "LComGoogleCommonMathStatsAccumulator;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "sumOfProductsOfDeltas_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "DD", "addAll", "LComGoogleCommonMathPairedStats;", "ensurePositive", "D", "ensureInUnitRange" };
  static const J2ObjcClassInfo _ComGoogleCommonMathPairedStatsAccumulator = { "PairedStatsAccumulator", "com.google.common.math", ptrTable, methods, fields, 7, 0x11, 13, 3, -1, -1, -1, -1, -1 };
  return &_ComGoogleCommonMathPairedStatsAccumulator;
}

@end

void ComGoogleCommonMathPairedStatsAccumulator_init(ComGoogleCommonMathPairedStatsAccumulator *self) {
  NSObject_init(self);
  self->xStats_ = new_ComGoogleCommonMathStatsAccumulator_init();
  self->yStats_ = new_ComGoogleCommonMathStatsAccumulator_init();
  self->sumOfProductsOfDeltas_ = 0.0;
}

ComGoogleCommonMathPairedStatsAccumulator *new_ComGoogleCommonMathPairedStatsAccumulator_init() {
  J2OBJC_NEW_IMPL(ComGoogleCommonMathPairedStatsAccumulator, init)
}

ComGoogleCommonMathPairedStatsAccumulator *create_ComGoogleCommonMathPairedStatsAccumulator_init() {
  J2OBJC_CREATE_IMPL(ComGoogleCommonMathPairedStatsAccumulator, init)
}

jdouble ComGoogleCommonMathPairedStatsAccumulator_ensurePositiveWithDouble_(ComGoogleCommonMathPairedStatsAccumulator *self, jdouble value) {
  if (value > 0.0) {
    return value;
  }
  else {
    return JavaLangDouble_MIN_VALUE;
  }
}

jdouble ComGoogleCommonMathPairedStatsAccumulator_ensureInUnitRangeWithDouble_(jdouble value) {
  ComGoogleCommonMathPairedStatsAccumulator_initialize();
  if (value >= 1.0) {
    return 1.0;
  }
  if (value <= -1.0) {
    return -1.0;
  }
  return value;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleCommonMathPairedStatsAccumulator)