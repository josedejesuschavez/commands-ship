import uuid
from flask import Blueprint, request, jsonify
from flask_cors import cross_origin


blueprint = Blueprint('${module_name}', __name__)

@blueprint.route('/example', methods=['GET'])
@cross_origin()
def example():
    return jsonify({'module': '${module_name}'})
