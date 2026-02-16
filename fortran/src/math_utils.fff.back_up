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