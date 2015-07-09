!FORTRAN Playground

!**********************************!
!           Main Program           !
!**********************************!
program findprimes
    implicit none
    integer :: maxprime
    !logical :: test
    !int, dimension (:), allocatable :: array

    print *, 'Insert highest number to check: '
    read *, maxprime


    !Check if number is prime
    !call primecheck(maxprime,test)
    call functiontest(maxprime)

    !allocate()

    !if (test) then
    !    print *,'The number is not prime!'
    !else
    !    print *,'The number is prime!'
    !end if

end program findprimes

!**********************************!
!    Checks if number is prime     !
!**********************************!
!subroutine primecheck (primechk,test)
!
!    implicit none
!    integer :: primechk,i
!    logical :: test!
!
!    print *, 'Checking if ',primechk,' is a prime number...'
!
!    test = .false.
!
!    do i=2, (primechk+1)/2
!        if(test .EQV. .false.) then
!            print *,primechk,' mod ',i,'=',MOD(primechk,i)
!
!            if (MOD(primechk,i) .EQ. 0) then
!                test=.true.
!            end if
!        else
!            exit
!        end if
!    end do

!end subroutine primecheck
