program example3

  implicit none

  ! Print kind type parameters, and storage size, for different types
  !kind(1.e0): 기본 정밀도(Single Precision) 실수가 갖는 KIND 번호를 가져와라. (보통 4)
  !kind(1.d0): 배정밀도(Double Precision) 실수가 갖는 KIND 번호를 가져와라. (보통 8)
  !parameter: 이 번호를 상수로 고정하여, 나중에 변수를 선언할 때 my_e_k 혹은 my_d_k를 쓰겠다는 뜻
  integer, parameter :: my_e_k = kind(1.e0)
  integer, parameter :: my_d_k = kind(1.d0)

  real (my_e_k) :: a = 1.0e0   ! 앞의 my_e_k를 이용하여 실수형 변수 a를 선언 
  real (my_d_k) :: b = 2.0d0   ! 앞의 my_d_k를 이용하여 실수형 변수 b를 선언

  print *, "Kind type parameter for a: ", my_e_k
  print *, "Kind type parameter for b: ", my_d_k

  print *, "Storage size(a):           ", storage_size(a)
  print *, "Storage size(b):           ", storage_size(b)

  print *, "Value of a: ", a
  print *, "Value of b: ", b

end program example3

! 수행시키면 다음과 같은 결과가 나옴
! Kind type parameter for a:            4
! Kind type parameter for b:            8
! Storage size(a):                     32
! Storage size(b):                     64
! Value of a:    1.00000000    
! Value of b:    2.0000000000000000   