from src.Infraestructure.Web.Flask.register_blueprint import RegisterBlueprint
from src.Infraestructure.Web.Flask.rest.${module_name}.get import example


class ${module_name}RegisterBlueprint(RegisterBlueprint):
    def __init__(self):
        pass

    def register(self, app):
        app.register_blueprint(example.blueprint, url_prefix='/${module_name}')
        return app
