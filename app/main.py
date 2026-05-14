from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def health():
    return {
        "status": "healthy"
 }

@app.get("/login")
def login():
    return {"message": "Login API"}

