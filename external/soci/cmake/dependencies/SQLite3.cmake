set(SQLITE3_FIND_QUIETLY TRUE)

find_package(SQLite3 REQUIRED)

boost_external_report(SQLite3 INCLUDE_DIR LIBRARIES)
