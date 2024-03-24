#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    //App information
    app.setOrganizationName("LearnQt");
    app.setOrganizationDomain("learnqt.guide");
    app.setApplicationName("SaveTheStatesV2");

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/4-SaveTheStates/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
