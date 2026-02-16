program Ex001
    implicit none
    character(len=20) :: name
    ! print *, "Enter your name: "
    write(*, '(A)', advance = 'no') "Please input your name:" ! 입력 프롬프트를 같은 줄에 표시
    read *, name
    print *, "Hello, ", trim(name), "!"
end program Ex001