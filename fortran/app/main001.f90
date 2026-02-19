! fortran/app/main.f90
program main
    use test_module      ! 위에서 만든 모듈을 사용함
    implicit none

    print *, "== 메인 프로그램을 시작합니다 =="
    call greet_user("지구물리 연구원")  ! 모듈 안의 서브루틴 호출
    print *, "== 프로그램을 종료합니다 =="
end program main
