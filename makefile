APP_MODULE = src.main:app
VIRTUALENV = venv.todos

run:
	@echo "Starting FastAPI app with Uvicorn..."
	@uvicorn $(APP_MODULE) --host 0.0.0.0 --port 8000 --reload

activate:
	@echo "Activating the virtual environment... $(VIRTUALENV)"
	@source $(VIRTUALENV)/bin/activate

install:
	@echo "Installing project dependencies..."
	@pip install -r requirements.txt

clean:
	@echo "Removing __pycache__ directories in src..."
	@find src -type d -name "__pycache__" -exec rm -r {} \;

tree:
	@make clean
	@echo "Generating project tree..."
	@tree -L 3 -a -I todos.venv/ -I .git/

.PHONY: run activate install clean tree
