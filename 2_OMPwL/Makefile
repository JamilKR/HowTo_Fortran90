FC = gfortran
FLAGS = -Wall -fopenmp -cpp


test_src = test.f90 
test_obj = $(addsuffix .o, $(basename ${test_src}))

%.o: %.f90
	$(FC) $(FLAGS) -c -o $@ $<


main: $(test_obj)
	$(FC) $(FLAGS) -o $@".out" $^ 

clean:
	@rm -f *.mod *.out *.o *~
