set(CLAZY_CHECKS_SRCS ${CLAZY_CHECKS_SRCS}
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/manuallevel/container-inside-loop.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/manuallevel/inefficientqlist.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/manuallevel/isempty-vs-count.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/manuallevel/qstring-varargs.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/manuallevel/qt-keywords.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/manuallevel/qt4-qstring-from-array.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/manuallevel/tr-non-literal.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/manuallevel/unneeded-cast.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/connect-by-name.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/connect-non-signal.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/connect-not-normalized.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/container-anti-pattern.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/fully-qualified-moc-types.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/lambda-in-connect.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/lambda-unique-connection.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/mutable-container-key.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qcolor-from-literal.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qdatetimeutc.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qenums.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qfileinfo-exists.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qgetenv.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qmap-with-pointer-key.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qstringarg.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qstring-insensitive-allocation.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qstringref.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qt-macros.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/qvariant-template-instantiation.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/strict-iterators.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/temporaryiterator.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/unused-non-trivial-variable.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/writingtotemporary.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level0/wrong-qglobalstatic.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/autounexpectedqstringbuilder.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/child-event-qobject-cast.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/connect-3arg-lambda.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/const-signal-or-slot.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/detachingtemporary.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/foreach.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/incorrect-emit.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/inefficient-qlist-soft.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/install-event-filter.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/non-pod-global-static.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/overridden-signal.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/post-event.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/qdeleteall.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/qhash-namespace.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/qlatin1string-non-ascii.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/qproperty-without-notify.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/qstring-left.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/range-loop.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/returning-data-from-temporary.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/ruleoftwosoft.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/skipped-base-method.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level1/virtual-signal.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/base-class-event.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/copyable-polymorphic.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/ctor-missing-parent-argument.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/function-args-by-ref.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/function-args-by-value.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/globalconstcharpointer.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/implicitcasts.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/missing-qobject-macro.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/missing-typeinfo.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/oldstyleconnect.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/qstring-allocations.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/reservecandidates.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/returning-void-expression.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/ruleofthree.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/virtual-call-ctor.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level3/assertwithsideeffects.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level3/detachingmember.cpp
  ${CMAKE_CURRENT_LIST_DIR}/src/checks/level3/thread-with-slots.cpp
)

if(HAS_STD_REGEX OR CLAZY_BUILD_WITH_CLANG)
  set(CLAZY_CHECKS_SRCS ${CLAZY_CHECKS_SRCS} ${CMAKE_CURRENT_LIST_DIR}/src/checks/level2/oldstyleconnect.cpp)
endif()
