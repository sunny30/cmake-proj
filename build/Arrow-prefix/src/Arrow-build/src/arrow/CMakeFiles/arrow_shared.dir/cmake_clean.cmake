file(REMOVE_RECURSE
  "../../release/.2100"
  "../../release/libarrow.2100.0.0.dylib"
  "../../release/libarrow.2100.dylib"
  "../../release/libarrow.dylib"
  "../../release/libarrow.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C CXX)
  include(CMakeFiles/arrow_shared.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
