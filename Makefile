.PHONY: clean, all, docs, test, install

clean:
	rm -rf *.out *.xml htmlcov

install:
	python -m venv venv && \
		source venv/bin/activate && \
		pip install -r requirements.txt

docs: install
	cd docs && make html && cd ..

test: install
	source venv/bin/activate && \
		py.test --cov=sandman2 tests
