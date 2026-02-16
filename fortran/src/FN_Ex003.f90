!interface 블록은 함수의 설계도를 정의하는 역할을 하며, 정확한 메모리 할당과 타입 검사를 가능하게 함 !
!아래의 부분은 위의 코드와 같은 기능이지만 module과 abstract interface를 사용하여 함수 f의 선언을 interface 블록 없이 더 간단하게 표현한 예제임
!!!!
module math_utils
    implicit none

    ! 1. 함수의 설계도(템플릿)를 미리 정의합니다.
    abstract interface
        pure real function math_func_template(x)
            real, intent(in) :: x
        end function math_func_template
    end interface

contains

    ! 2. interface 블록 대신 'procedure(설계도)'를 사용하여 선언이 단순해집니다.
    subroutine compute(f, val)
        procedure(math_func_template) :: f  ! f는 위 템플릿을 따르는 함수임을 명시
        real, intent(in) :: val

        print *, "계산 결과:", f(val)
    end subroutine compute

end module math_utils

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