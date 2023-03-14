# Rupee

**A toy game engine written in C++**

## Code Structure

```
Rupee                               # Project folder
    ├───bin                         # Binary folder
    │   └───<Config-Specific-Name>
    │       ├───Claypot
    │       └───Rupee
    ├───bin-obj                     # Object folder
    │   └───<Config-Specific-Name>
    │       ├───Claypot
    │       └───Rupee
    ├───Claypot                     # Engine Client
    │   └───src
    ├───Rupee                       # Engine Core
    │   └───src
    └───vendor                      # External Libs
```

## Generate Build Files

Rupee uses [premake](https://premake.github.io/) to generate its build files, the executable for which is located in the `vendor` directory.

Premake can generate build files for Visual Studio, GNU Make, or XCode compilers as described in the documentation. For example, to generate GNU Makefiles run:
```
./vendor/premake/premake5.exe gmake2
```

---
_Based on [Hazel](https://github.com/TheCherno/Hazel)_