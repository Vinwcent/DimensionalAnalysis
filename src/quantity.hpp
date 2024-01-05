#pragma once

#include "boost/mpl/equal.hpp"
#include "boost/mpl/minus.hpp"
#include "boost/mpl/plus.hpp"
#include "boost/mpl/transform.hpp"

#include "dimensionsTypes.hpp"
#include <type_traits>

namespace mpl = boost::mpl;
using namespace mpl::placeholders;

// Quantity with dimension
template <typename T, typename D> struct quantity {
  // Base constructor
  constexpr explicit quantity(T x) : value_(x) {}

  // Dimension conversion constructor
  template <typename OtherDimension>
  quantity(const quantity<T, OtherDimension> &rhs) : value_(rhs.value()) {
    static_assert(mpl::equal<OtherDimension, D>::type::value);
  }

  // Type conversion constructor
  template <typename OtherType>
  quantity(const quantity<OtherType, D> &rhs) : value_(rhs.value()) {
    static_assert(std::is_convertible_v<OtherType, T>);
  }

  T value() const { return value_; }

private:
  T value_;
};

// Addition
template <typename T, typename D>
quantity<T, D> operator+(quantity<T, D> x, quantity<T, D> y) {
  return quantity<T, D>(x.value() + y.value());
}

// Subtraction
template <typename T, typename D>
quantity<T, D> operator-(quantity<T, D> x, quantity<T, D> y) {
  return quantity<T, D>(x.value() - y.value());
}

// Multiplication
template <typename T, typename D1, typename D2>
quantity<T, typename mpl::transform<D1, D2, mpl::plus<_1, _2>>::type>
operator*(quantity<T, D1> x, quantity<T, D2> y) {
  return quantity<T, typename mpl::transform<D1, D2, mpl::plus<_1, _2>>::type>(
      x.value() * y.value());
}

// Division
template <typename T, typename D1, typename D2>
quantity<T, typename mpl::transform<D1, D2, mpl::minus<_1, _2>>::type>
operator/(quantity<T, D1> x, quantity<T, D2> y) {
  return quantity<T, typename mpl::transform<D1, D2, mpl::minus<_1, _2>>::type>(
      x.value() * y.value());
}

// Can't define a User-Defined Literal with a template so a macro is needed to
// define one
#define DEFINE_UNIT_LIT_FOR_TYPE(TYPE, DIM, LIT, MULTIPLIER)                   \
  constexpr quantity<TYPE, DIM> operator"" LIT(TYPE value) {                   \
    return quantity<TYPE, DIM>(value * MULTIPLIER);                            \
  }

#define DEFINE_UNIT_LIT(DIM, LIT, MULTIPLIER)                                  \
  DEFINE_UNIT_LIT_FOR_TYPE(long double, DIM, LIT, MULTIPLIER)                  \
  DEFINE_UNIT_LIT_FOR_TYPE(unsigned long long, DIM, LIT, MULTIPLIER)

// Time
DEFINE_UNIT_LIT(timeDim, _ms, 0.00l);
DEFINE_UNIT_LIT(timeDim, _s, 1);
DEFINE_UNIT_LIT(timeDim, _min, 60);
DEFINE_UNIT_LIT(timeDim, _h, 3600);

// Mass
DEFINE_UNIT_LIT(timeDim, _mg, 0.00000l);
DEFINE_UNIT_LIT(timeDim, _g, 0.001);
DEFINE_UNIT_LIT(timeDim, _kg, 1);
DEFINE_UNIT_LIT(timeDim, _t, 1000);
