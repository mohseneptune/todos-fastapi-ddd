import logging

from fastapi import FastAPI

from user.orm import start_user_mapper

app = FastAPI()


@app.on_event("startup")
async def startup_event():
    start_user_mapper()


if __name__ == "__main__":
    import uvicorn

    logging.debug("App Starting ...")
    uvicorn.run("main:app", host="0.0.0.0", port=8000, reload=True)
