cmake -G "NMake Makefiles" ^
  -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_BUILD_TYPE:STRING=Release ^
  -DHIGHFIVE_UNIT_TESTS:BOOL=ON ^
  -DHIGHFIVE_EXAMPLES:BOOL=OFF ^
  -DHIGHFIVE_USE_BOOST:BOOL=OFF ^
  -DHIGHFIVE_USE_INSTALL_DEPS:BOOL=OFF ^
  .
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1

nmake test
if errorlevel 1 exit 1
