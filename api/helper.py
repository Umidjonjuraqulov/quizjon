import psycopg2 

def connect_dbt(): 
    # uzingni connect dbt ing bilan almashtir 



def insert_users_db(user_object): 
    ulanish = connect_dbt()
    cursor = ulanish.cursor() 

    foydalanuvchi_kiritish_sql = f"""INSERT INTO quizjon_users (name, phone_number, created_at, school, department, login, password) 
                                VALUES ('{user_object.name}', '{user_object.phone_number}', '{user_object.created_at}', 
                                '{user_object.school}', '{user_object.department}', '{user_object.login}', '{user_object.password}')""" 
    
    cursor.execute(foydalanuvchi_kiritish_sql)
    ulanish.commit()  



def get_users(): 
    ulanish = connect_dbt()
    cursor = ulanish.cursor()   

    sql = "SELECT name, phone_number, login FROM quizjon_users"

    cursor.execute(sql)
    
    users = cursor.fetchall() 
    
    return users 
