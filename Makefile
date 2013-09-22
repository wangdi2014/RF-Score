CC=g++ -std=c++0x -O3

all: rf-prepare rf-train rf-test rf-score

rf-prepare: atom.o scoring_function.o receptor.o ligand.o rf-prepare.o
	$(CC) -o $@ $^

rf-train: random_forest_train.o rf-train.o
	$(CC) -o $@ $^ -pthread

rf-test: random_forest_test.o rf-test.o
	$(CC) -o $@ $^

rf-score: random_forest_test.o atom.o scoring_function.o receptor.o ligand.o rf-score.o
	$(CC) -o $@ $^

%.o: %.cpp
	$(CC) -o $@ $< -c

clean:
	rm -f rf-score rf-test rf-train rf-prepare *.o