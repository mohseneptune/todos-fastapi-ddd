from infrastructure.database import mapper_registery
from src.user.entities import User
from src.user.orm.user_table import user_table


def start_user_mapper():
    mapper_registery.map_imperatively(User, user_table)
