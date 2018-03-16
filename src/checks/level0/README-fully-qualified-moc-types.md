# fully-qualified-moc-types

Warns when a signal, slot or invokable declaration is not using fully-qualified type names, which will break old-style connects
and interaction with QML.

Example:

namespace MyNameSpace {

    struct MyType { (...) };

    class MyObject : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(MyType myprop READ myprop); // Wrong, needs namespace
    Q_SIGNALS:
        void mySignal(MyType); // Wrong
        void mySignal(MyNameSpace::MyType); // OK
    };
}

Beware that fixing these type names might break user code if they are connecting to them via old style connects,
since the users might have worked around your bug and not included the namespace in their connect statement
