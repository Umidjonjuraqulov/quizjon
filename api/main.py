from typing import Union
from fastapi import FastAPI
from pydantic import BaseModel 

import helper  

app = FastAPI()


class Users(BaseModel): 
    name: str = 'Umidjon Juraqulov'    
    phone_number: str = '+998933313348' 
    created_at: str = '2024-04-14 18:30' 
    school: str = 'SamFin' 
    department: str = 'Math'
    login: str = 'umid' 
    password: str = 'umid'  


@app.get("/")
def read_root():
    return "Welcome to Quizjon API"


@app.get("/users/")
def read_users():
    return helper.get_users()


@app.post("/insert_users/")
def insert_users(user: Users):
    helper.insert_users_db(user)   
