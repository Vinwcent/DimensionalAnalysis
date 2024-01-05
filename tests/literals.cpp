#include <gtest/gtest.h>

#include "src/quantity.hpp"



TEST(Literals, LiteralConversion1) {
  quantity<int, timeDim> sec60 = 120_s;
  quantity<int, timeDim> min1 = 2_min;
  EXPECT_EQ(sec60.value(), min1.value());
}

