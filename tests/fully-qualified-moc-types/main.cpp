#include <QtCore/QObject>

struct A {};

namespace NS {
    struct MyType {};
    class MyObject : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(NS::MyType foo READ foo) // OK
        Q_PROPERTY(MyType foo1 READ foo) // Warn
    Q_SIGNALS:
        void mysig(NS::MyType);
        void mysig2(MyType); // Warn
        void mysig3(NS::MyType);
        void mysig4(const NS::MyType &);
        void mysig5(A);
        void mysig6(const A);
        void mysig7(const A *);
        void mysig8(A *);
    public Q_SLOTS:
        void myslot1(NS::MyType);
        void myslot2(MyType); // Warn
        void myslot3(NS::MyType);
        void myslot4(const NS::MyType &);
        void myslot5(A);
        void myslot6(const A);
        void myslot7(const A *);
        void myslot8(A *);
    public:
        Q_INVOKABLE void myinvokable1(NS::MyType);
        Q_INVOKABLE void myinvokable2(MyType); // Warn
        Q_INVOKABLE void myinvokable3(NS::MyType);
        Q_INVOKABLE void myinvokable4(const NS::MyType &);
        Q_INVOKABLE void myinvokable5(A);
        Q_INVOKABLE void myinvokable6(const A);
        Q_INVOKABLE void myinvokable7(const A *);
        Q_INVOKABLE void myinvokable8(A *);
        NS::MyType foo();
    };
}

#include "main.moc_"
