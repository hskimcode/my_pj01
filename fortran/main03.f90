program test_intrinsic
    use math_utils          ! 모듈 호출
    implicit none
    real :: x
    intrinsic :: sin        ! 내장 함수 sin을 인수로 전달하기 위해 선언
    print *, "x 값 입력:"
    read *, x
    ! 모듈을 통해 compute의 구조를 이미 알고 있으므로 바로 호출 가능합니다.
    call compute(sin, x)
end program test_intrinsic