#
#!/bin/sh
#
export TRILINOS_HOME=$REMOTE/src/Trilinos
BUILD_DIR=`pwd`
INSTALL_DIR=$REMOTE/trilinos-install-gcc-release
BOOST_DIR=$REMOTE
LIB_DIR=$BOOST_DIR
MPI_BASE_DIR=/opt/openmpi-1.8-gnu
NETCDF=$REMOTE
HDFDIR=$REMOTE

cmake \
 -D BUILD_SHARED_LIBS:BOOL=ON \
 -D CMAKE_BUILD_TYPE:STRING="RELEASE" \
\
 -D TPL_BLAS_LIBRARIES:FILEPATH=/usr/lib64/libblas.so \
 -D TPL_LAPACK_LIBRARIES:FILEPATH=/usr/lib64/liblapack.so \
\
 -D CMAKE_INSTALL_PREFIX:PATH=$INSTALL_DIR \
 -D CMAKE_VERBOSE_MAKEFILE:BOOL=OFF \
\
 -D TPL_ENABLE_MPI:BOOL=ON \
 -D TPL_MPI_INCLUDE_DIRS:FILEPATH=$MPI_BASE_DIR/include \
 -D TPL_MPI_LIBRARY_DIRS:FILEPATH=$MPI_BASE_DIR/lib \
 -D MPI_BIN_DIR:FILEPATH=$MPI_BASE_DIR/bin \
\
 -D TPL_ENABLE_Boost:BOOL=ON \
 -D TPL_ENABLE_BoostLib:BOOL=ON \
 -D BoostLib_INCLUDE_DIRS:FILEPATH=$BOOST_DIR/include \
 -D BoostLib_LIBRARY_DIRS:FILEPATH=$BOOST_DIR/lib \
 -D Boost_INCLUDE_DIRS:FILEPATH=$BOOST_DIR/include \
 -D Boost_LIBRARY_DIRS:PATH=$BOOST_DIR/lib \
\
 -D Trilinos_ENABLE_ALL_OPTIONAL_PACKAGES:BOOL=OFF \
 -D Trilinos_ENABLE_ALL_PACKAGES:BOOL=OFF \
 -D Trilinos_ENABLE_CXX11:BOOL=ON \
 -D MPI_EXEC=mpiexec \
 -D Trilinos_ENABLE_EXAMPLES:BOOL=OFF \
 -D Trilinos_ENABLE_EXPLICIT_INSTANTIATION:BOOL=OFF \
 -D Trilinos_VERBOSE_CONFIGURE:BOOL=OFF \
 -D Trilinos_WARNINGS_AS_ERRORS_FLAGS:STRING="" \
\
 -D Teuchos_ENABLE_STACKTRACE:BOOL=OFF \
 -D Teuchos_ENABLE_DEFAULT_STACKTRACE:BOOL=OFF \
 -D HAVE_INTREPID_KOKKOSCORE:BOOL=ON \
 -D Kokkos_ENABLE_CXX11:BOOL=ON \
 -D Kokkos_ENABLE_Cuda_UVM:BOOL=OFF \
 -D Kokkos_ENABLE_EXAMPLES:BOOL=OFF \
 -D Kokkos_ENABLE_OpenMP:BOOL=OFF \
 -D Kokkos_ENABLE_Pthread:BOOL=OFF \
 -D Kokkos_ENABLE_Serial:BOOL=ON \
 -D Kokkos_ENABLE_TESTS:BOOL=OFF \
 -D TPL_ENABLE_CUDA:STRING=OFF \
 -D TPL_ENABLE_CUSPARSE:BOOL=OFF \
 -D TPL_FIND_SHARED_LIBS:BOOL=ON \
\
 -D Amesos2_ENABLE_KLU2:BOOL=ON \
 -D EpetraExt_USING_HDF5:BOOL=OFF \
 -D Intrepid2_ENABLE_TESTS:BOOL=OFF \
 -D Intrepid2_ENABLE_KokkosDynRankView:BOOL=ON \
 -D MiniTensor_ENABLE_TESTS:BOOL=OFF \
 -D ROL_ENABLE_TESTS:BOOL=OFF \
 -D Phalanx_INDEX_SIZE_TYPE:STRING="INT" \
 -D Phalanx_KOKKOS_DEVICE_TYPE:STRING="SERIAL" \
 -D Phalanx_SHOW_DEPRECATED_WARNINGS:BOOL=OFF \
 -D Tpetra_ENABLE_Kokkos_Refactor:BOOL=ON \
 -D Tpetra_INST_PTHREAD:BOOL=OFF \
\
 -D TPL_ENABLE_HDF5:BOOL=ON \
 -D TPL_ENABLE_HWLOC:STRING=OFF \
 -D TPL_ENABLE_Matio:BOOL=OFF \
 -D TPL_ENABLE_Netcdf:BOOL=ON \
 -D TPL_ENABLE_X11:BOOL=OFF \
 -D TPL_Netcdf_INCLUDE_DIRS:PATH=$NETCDF/include \
 -D TPL_Netcdf_LIBRARY_DIRS:PATH=$NETCDF/lib \
 -D TPL_Netcdf_LIBRARIES:PATH=$NETCDF/lib64/libnetcdf.so \
\
 -D Trilinos_ENABLE_Amesos2:BOOL=ON \
 -D Trilinos_ENABLE_Amesos:BOOL=ON \
 -D Trilinos_ENABLE_Anasazi:BOOL=ON \
 -D Trilinos_ENABLE_AztecOO:BOOL=ON \
 -D Trilinos_ENABLE_Belos:BOOL=ON \
 -D Teuchos_ENABLE_COMPLEX:BOOL=OFF \
 -D Teuchos_ENABLE_LONG_LONG_INT:BOOL=ON \
 -D Trilinos_ENABLE_EXAMPLES:BOOL=OFF \
 -D Trilinos_ENABLE_Epetra:BOOL=ON \
 -D Trilinos_ENABLE_EpetraExt:BOOL=ON \
 -D Trilinos_ENABLE_Ifpack2:BOOL=ON \
 -D Trilinos_ENABLE_Ifpack:BOOL=ON \
 -D Trilinos_ENABLE_Intrepid:BOOL=ON \
 -D Trilinos_ENABLE_Intrepid2:BOOL=ON \
 -D Trilinos_ENABLE_Isorropia:BOOL=ON\
 -D Trilinos_ENABLE_Kokkos:BOOL=ON \
 -D Trilinos_ENABLE_KokkosAlgorithms:BOOL=ON \
 -D Trilinos_ENABLE_KokkosContainers:BOOL=ON \
 -D Trilinos_ENABLE_KokkosCore:BOOL=ON \
 -D Trilinos_ENABLE_KokkosExample:BOOL=OFF \
 -D HAVE_INTREPID_KOKKOSCORE:BOOL=ON \
 -D Trilinos_ENABLE_MiniTensor:BOOL=ON \
 -D Trilinos_ENABLE_ML:BOOL=ON \
 -D Trilinos_ENABLE_OpenMP:BOOL=OFF \
 -D Trilinos_ENABLE_MueLu:BOOL=ON \
 -D Trilinos_ENABLE_NOX:BOOL=ON \
 -D Trilinos_ENABLE_Pamgen:BOOL=ON \
 -D Trilinos_ENABLE_Phalanx:BOOL=ON \
 -D Trilinos_ENABLE_Piro:BOOL=ON \
 -D Trilinos_ENABLE_ROL:BOOL=ON \
 -D Trilinos_ENABLE_Rythmos:BOOL=ON \
 -D Trilinos_ENABLE_SEACAS:BOOL=ON \
 -D Trilinos_ENABLE_STKClassic:BOOL=OFF \
 -D Trilinos_ENABLE_STKIO:BOOL=ON \
 -D Trilinos_ENABLE_STKMesh:BOOL=ON \
 -D Trilinos_ENABLE_Sacado:BOOL=ON \
 -D Trilinos_ENABLE_SEACASExodus:BOOL=ON \
 -D Trilinos_ENABLE_SEACASIoss:BOOL=ON \
 -D Trilinos_ENABLE_Shards:BOOL=ON \
 -D Trilinos_ENABLE_Stokhos:BOOL=ON \
 -D Trilinos_ENABLE_Stratimikos:BOOL=ON \
 -D Trilinos_ENABLE_TESTS:BOOL=OFF \
 -D Trilinos_ENABLE_Teko:BOOL=ON \
 -D Trilinos_ENABLE_Teuchos:BOOL=ON \
 -D Trilinos_ENABLE_ThreadPool:BOOL=ON \
 -D Trilinos_ENABLE_Thyra:BOOL=ON \
 -D Trilinos_ENABLE_Tpetra:BOOL=ON \
 -D Trilinos_ENABLE_TrilinosCouplings:BOOL=ON \
 -D Trilinos_ENABLE_TriKota:BOOL=ON \
 -D Trilinos_ENABLE_Zoltan2:BOOL=ON \
 -D Trilinos_ENABLE_Zoltan:BOOL=ON \
 -D ZOLTAN_BUILD_ZFDRIVE:BOOL=OFF \
 -D Zoltan2_ENABLE_Experimental:BOOL=ON\
 -D Trilinos_ENABLE_DEBUG:BOOL=OFF \
 -D Trilinos_ENABLE_SECONDARY_STABLE_CODE:BOOL=ON \
\
 -D Trilinos_EXTRA_REPOSITORIES:STRING="DataTransferKit" \
\
 -D Trilinos_ENABLE_DataTransferKit:BOOL=ON \
 -D DataTransferKit_ENABLE_DBC:BOOL=ON \
 -D DataTransferKit_ENABLE_TESTS:BOOL=OFF \
 -D DataTransferKit_ENABLE_EXAMPLES:BOOL=OFF \
 -D TPL_ENABLE_MOAB:BOOL=OFF \
 -D TPL_ENABLE_Libmesh:BOOL=OFF \
\
 -D HDF5_INCLUDE_DIRS:PATH="${HDFDIR}/include" \
 -D TPL_HDF5_LIBRARIES:PATH="${HDFDIR}/lib/libhdf5_hl.so;${HDFDIR}/lib/libhdf5.so;${HDFDIR}/lib/libz.so" \
 -D Trilinos_EXTRA_LINK_FLAGS="-L${HDFDIR}/lib -ldl -lhdf5_hl -lhdf5 -lz -lm" \
\
 -D TPL_ENABLE_Zlib:STRING=ON \
 -D Zlib_INCLUDE_DIRS:PATH=$HDFDIR/include \
 -D TPL_Zlib_LIBRARIES:PATH="$HDFDIR/lib/libz.so" \
\
${TRILINOS_HOME}
