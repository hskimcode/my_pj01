program main
    use m_station
    implicit none

    type(Station) :: my_obs ! 객체 변수 선언

    ! 객체 데이터 초기화
    my_obs%name = "SEOUL_OBS"
    my_obs%lat  = 37.5665_dp
    my_obs%lon  = 126.9780_dp

    print *, "== 객체지향 포트란 프로그램 시작 =="
    
    ! 메서드 호출 (객체%프로시저 명칭)
    call my_obs%print_info()

    print *, "== 프로그램 종료 =="
end program main
    