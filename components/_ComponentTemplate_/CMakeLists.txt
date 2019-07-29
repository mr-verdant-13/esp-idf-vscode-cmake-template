file(GLOB COMPONENT_SRCS
  LIST_DIRECTORIES false
  "*.hpp"
  "*.h"
  "*.cpp"
  "*.c"
  "*.S"
)
set(COMPONENT_ADD_INCLUDEDIRS ".")

register_component()