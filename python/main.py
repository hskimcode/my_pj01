# main.py
import numpy as np

import sys
import os
from pathlib import Path

# 현재 파일(main.py)의 부모 폴더(python/)의 부모(root) 아래 modules 폴더 경로 계산
current_dir = Path(__file__).resolve().parent
module_path = current_dir.parent / "modules"

if str(module_path) not in sys.path:
    sys.path.append(str(module_path))

import mymath


# 1. 데이터 준비
n = 5
array1 = np.array([1.0, 2.0, 3.0, 4.0, 5.0], dtype=np.float64)
array2 = np.array([10.0, 20.0, 30.0, 40.0, 50.0], dtype=np.float64)

# 2. 포트란 서브루틴 호출
# f2py는 intent(out)으로 지정된 변수를 함수의 반환값으로 자동 처리합니다.
# 따라서 c를 미리 만들어서 넘길 필요 없이 결과값으로 받습니다.
result = mymath.math_utils.add_arrays(array1, array2)

# 3. 결과 출력
print("Array 1:", array1)
print("Array 2:", array2)
print("Result (Sum from Fortran):", result)
