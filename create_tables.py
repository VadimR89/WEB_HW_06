import sqlite3


def create_db():
    with open(".\scripts\create_tables.sql", "r") as f:
        sql = f.read()

    with sqlite3.connect("homework_base.db") as conn:
        cur = conn.cursor()
        cur.executescript(sql)


if __name__ == '__main__':
    try:
        create_db()
    except sqlite3.Error as error:
        print(error)
