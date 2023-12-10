import sqlite3
from sqlite3 import Error


def run_select_script():
    with open("scripts\query_01.sql", "r") as f:
        sql = f.read()

    with sqlite3.connect("homework_base.db") as conn:
        cur = conn.cursor()
        try:
            cur.execute(sql)
            rows = cur.fetchall()
            for r in rows:
                print(r)
        except Error as e:
            print(e)


if __name__ == "__main__":
    run_select_script()