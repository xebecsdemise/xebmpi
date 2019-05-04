#hello.py

from mpi4py import MPI
import sys
comm = MPI.COMM_WORLD
size = comm.Get_size()
rank = comm.Get_rank()
name = MPI.Get_processor_name()
print "This is process %d / %d, running on %s" % (rank,size,name)
#comm.Barrier()

