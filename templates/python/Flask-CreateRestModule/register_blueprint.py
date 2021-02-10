from Infraestructure.Web.Flask.rest.${module_name}.get import example
from Infraestructure.Web.Flask.register_blueprint import RegisterBlueprint


class ${module_name}RegisterBlueprint(RegisterBlueprint):
    def __init__(self):
        pass

    def register(self, app):
        app.register_blueprint(example.blueprint, url_prefix='/${module_name}')
        return app
