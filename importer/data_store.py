import os

import dataset

API_RESOURCES_TABLE_NAME = "api_resources"


class DataStore:

    def __init__(self, data_dir):
        self.data_dir = data_dir
        db_path = f"sqlite:///{self.data_dir}/api_tools_web.db"
        self.db = dataset.connect(db_path)

    def table_for(self, table_name):
        return self.db[table_name]

    def tools_database_entries(self):
        table = self.table_for(API_RESOURCES_TABLE_NAME)
        return table.find()

    def update_tool(self, entry):
        table = self.table_for(API_RESOURCES_TABLE_NAME)
        table.upsert(
            entry,
            ['name'],
        )


data_store = DataStore(os.curdir)
