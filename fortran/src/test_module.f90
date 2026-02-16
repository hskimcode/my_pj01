! fortran/src/test_module.f90
module test_module
    implicit none

contains
    subroutine greet_user(name)
        character(len=*), intent(in) :: name
        print *, "안녕하세요, ", trim(name), "님!"
        print *, "포트란 test_module이 성공적으로 호출되었습니다."
    end subroutine greet_user
end module test_module