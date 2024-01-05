#pragma once

#include "boost/mpl/vector_c.hpp"

namespace mpl = boost::mpl;

// base dimensions
typedef mpl::vector_c<int, 0, 0, 0, 0, 0, 0, 0> scalar;

typedef mpl::vector_c<int, 1, 0, 0, 0, 0, 0, 0> mass;
typedef mpl::vector_c<int, 0, 1, 0, 0, 0, 0, 0> length;
typedef mpl::vector_c<int, 0, 0, 1, 0, 0, 0, 0> timeDim;
typedef mpl::vector_c<int, 0, 0, 0, 1, 0, 0, 0> electricIntensity;
typedef mpl::vector_c<int, 0, 0, 0, 0, 1, 0, 0> temperature;
typedef mpl::vector_c<int, 0, 0, 0, 0, 0, 1, 0> luminousIntensity;
typedef mpl::vector_c<int, 0, 0, 0, 0, 0, 0, 1> amountOfSubstance;

// classical dimensions
typedef mpl::vector_c<int, 0, 1, -1, 0, 0, 0, 0> velocity;
typedef mpl::vector_c<int, 0, 1, -2, 0, 0, 0, 0> acceleration;
typedef mpl::vector_c<int, 1, 1, -2, 0, 0, 0, 0> force;

