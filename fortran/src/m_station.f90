module m_station
    use m_constants
    implicit none

    ! 관측소 클래스(Type) 정의
    type :: Station
        character(len=20) :: name
        real(dp)          :: lat, lon
    contains
        procedure :: print_info    ! 메서드 등록
    end type Station

contains
    ! 정보를 출력하는 메서드 구현
    subroutine print_info(self)
        class(Station), intent(in) :: self
        print "(A, A20, A, F8.4, A, F8.4)", &
              "Station: ", self%name, " | Lat: ", self%lat, " | Lon: ", self%lon
    end subroutine print_info
end module m_station