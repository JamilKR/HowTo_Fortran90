FC = gfortran
FLAGS = -Wall 

test_src =  main.f90
test_obj = $(addsuffix .o, $(basename ${test_src}))

%.o: %.f90 
	$(FC) $(FLAGS) -c -o $@ $<

main: $(test_obj)
	$(FC) $(FLAGS) -o $@".out" $^ 

clean:
	@rm -f *.mod *.out *.o *~
