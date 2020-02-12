FC = gfortran
FLAGS = -Wall

test_src = test.f90 main.f90
test_obj = $(addsuffix .o, $(basename ${test_src}))

%.o: %.f90 $(test_src)
	$(FC) $(FLAGS) -c -o $@ $<

main: $(test_obj)
	$(FC) $(FLAGS) -o $@".out" $^ 

clean:
	@rm -f *.mod *.out *.o *~
