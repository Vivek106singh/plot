# cmake stuff by Jens Mueller

find_library(GNUPLOT-IOSTREAM_LIBRARY NAMES gnuplot-iostream)
find_path(GNUPLOT-IOSTREAM_INCLUDE_DIR PATH_SUFFIXES gnuplot-iostream/ NAMES gnuplot-iostream.h)

message("FOUND ${GNUPLOT-IOSTREAM_INCLUDE_DIR}")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Gnuplot-iostream DEFAULT_MSG GNUPLOT-IOSTREAM_LIBRARY GNUPLOT-IOSTREAM_INCLUDE_DIR) 
if(GNUPLOT-IOSTREAM_FOUND)
    set(GNUPLOT-IOSTREAM_LIBRARIES ${GNUPLOT-IOSTREAM_LIBRARY})
    set(GNUPLOT-IOSTREAM_INCLUDE_DIRS ${GNUPLOT-IOSTREAM_INCLUDE_DIR})
endif()
