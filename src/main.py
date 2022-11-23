from lambdarado import start


def get_app():
    from app import app

    return app


start(get_app)
