# DimensionalAnalysis

A small attempt at making a metaprogramming C++ class able to perform dimension analysis to prevent errors at compile-time. (Needs the mpl library from boost)

## Features

Define a quantity with dimensions
```
quantity<float, mass> weight = 1;
```

Define a quantity with dimensions and literals (The value contained will always be the fundamental unit)
```
quantity<float, mass> weight = 1_kg;
quantity<float mass> weight = 1000_g;
```

Define a new dimension (With the mpl library from boost)
```
typedef mpl::plus<mass, acceleration>::type force;
```

Automatic conversion between dimension (defined or not) and types
```
quantity<float, acceleration> a(1);
quantity<float, mass> m(1);
quantity<float, force> f = m * a;
```
